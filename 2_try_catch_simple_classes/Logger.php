<?php
class Logger
{

    /**
     * Dir for the logs
     */
    private $logDir = 'logs';

    /**
     * File for the logs
     */
    private $logFile = 'logs.txt';

    /**
     * Try to write line to the log file
     */
    public function write($type, $message)
    {
        try {
            $filename = $this->logDir . '/' . $this->logFile;
            is_writeable($filename);
            $handle = fopen($filename, 'a');
            fwrite($handle, date('d.m.Y H:i:s') . " " . $type . ": " . $message . " " . PHP_EOL);
            fclose($handle);
        } catch (Exception $exception) {
            throw new Exception("File {$filename} is not writeable");
        }
    }
}

