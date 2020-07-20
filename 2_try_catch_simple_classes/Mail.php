<?php
class Mail
{
    /**
     * The TO email of the message.
     */
    public $to = null;

    /**
     * The Subject of the message.
     */
    public $subject = null;

    /**
     * The Email message.
     */
    public $message = null;

    /**
     * Set TO email of the message.
     */
    public function setTo($to)
    {
        $this->to = $this->clean($to);
    }

    /**
     * Set Subject of the message.
     */
    public function setSubject($subject)
    {
        $this->subject = $this->clean($subject);
    }

    /**
     * Set message of the email
     */
    public function setMessage($message)
    {
        $this->message = $this->clean($message);
    }

    /**
     * Send message
     */
    public function send()
    {
        if (!filter_var($this->to, FILTER_VALIDATE_EMAIL)) {
            throw new Exception('Email is incorrect');
        }

        if (!mail($this->to, $this->subject, $this->message)) {
            $this->alternateSend("TO: " . $this->to . ", SUBJECT: " . $this->subject . ", MESSAGE: " . $this->message . ".");
            throw new Exception('Email is not sended. See log file for details');
        }

        $this->clear();
        return true;
    }

    /**
     * Alternate send email
     */
    public function alternateSend($message)
    {
        try {
            $filename = 'logs/emails.txt';
            is_writeable($filename);
            $handle = fopen($filename, 'a');
            fwrite($handle, date('d.m.Y H:i:s') . " SEND EMAIL: " . $message . " " . PHP_EOL);
            fclose($handle);
        } catch (Exception $exception) {
            throw new Exception("File {$filename} is not writeable");
        }
    }

    function clean($value = '') {
        $value = trim($value);
        $value = stripslashes($value);
        $value = strip_tags($value);
        $value = htmlspecialchars($value);

        return $value;
    }

    /**
     * Clear params
     */
    public function clear()
    {
        $this->to = null;
        $this->subject = null;
        $this->message = null;
    }

}