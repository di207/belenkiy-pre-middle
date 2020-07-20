<?php

class feedback
{

    /* @var db */
    protected $db;
    protected $data;
    protected $cacheDir = 'cache';

    public function __construct()
    {
        $this->db = db::instance();
    }

    // send message
    function sendMessage($message)
    {
        $valid = $this->validate($message);

        if($valid)
        {
            $stmt = $this->db->run("INSERT INTO cache_messages SET hash= ?", [md5($message)]);
            return $stmt;
        }
    }

    // validation
    function validate($message)
    {
        $valid = false;
        $message = htmlspecialchars($message);

        // Interval in seconds)
        $interval = 1800; // 30 minutes

        // Delete old cache files
        if ($dir = opendir($this->cacheDir))
        {
            while (($file = readdir($dir)) !== false)
            {
                if ($file != '.' && $file != '..' && time() - filemtime($this->cacheDir . '/' . $file ) > $interval)
                {
                    unlink($this->cacheDir . '/' . $file);
                }
            }
        }

        if (!empty($message))
        {
            // Cache file for this message
            $cacheFile = $this->cacheDir . '/' . md5($message);
            $cacheFileTime = file_exists($cacheFile) ? filemtime($cacheFile) : 0;

            // Search for an identical letter
            $stmt = $this->db->run("select * from cache_messages where hash= ? limit 1", [md5($message)]);
            $stmt->execute();
            $stmt = $stmt->fetchColumn();

            if (isset($_SESSION['sendTime']) && time() - $_SESSION['sendTime'] < $interval)
            // If the user is still not allowed to send a message
            {
                $nextTime = round(($interval - (time() - $_SESSION['sendTime'])) / 60);
                $_SESSION['error'] = 'Вы уже отправили запрос, повторный запрос можно отправить через ' . $nextTime . ' минут(ы).';
            } elseif (time() - $cacheFileTime < $interval)
            // If this message was sent earlier
            {
                $nextTime = round(($interval - (time() - $cacheFileTime)) / 60);
                $_SESSION['error'] = 'Данное сообщение уже был отправлен ранее. Повторный запрос можно отправить через ' . $nextTime . ' минут(ы).';
            } elseif ($stmt)
            // If this message was sent earlier
            {
                $_SESSION['error'] = 'Данное сообщение уже был отправлен ранее. Защита от спама.';
            } else
            // All is well, we can send a message
            {
                try
                {
                    touch($cacheFile);
                } catch (Exception $e)
                {
                    $_SESSION['fails'][] = $e->getMessage();
                }
                $_SESSION['success'] = 'Ваше сообщение успешно отправлено.';
                $_SESSION['sendTime'] = time();
            }
        } else {
            $_SESSION['error'] = 'Сообщение не может быть пустым.';
        }

        if(count($_SESSION['fails']) === 0 && !isset($_SESSION['error']))
        {
            $valid = true;
        }
        return $valid;
    }
}