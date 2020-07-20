<?php
spl_autoload_register(function ($class) {
    include $class . '.php';
});

// Set custom error handler function
function myErrorHandler($errno, $errstr, $errfile, $errline)
{
    $logger = new Logger();

    if (!(error_reporting() & $errno)) {
        // This error code is not included in error_reporting, so let it fall
        // through to the standard PHP error handler
        return false;
    }

    switch ($errno)
    {
        case E_ERROR:
        case E_USER_ERROR:
        case E_CORE_ERROR:
            $logger->write('ERROR', $errstr);
            break;
        case E_WARNING:
        case E_USER_WARNING:
        case E_CORE_WARNING:
            $logger->write('WARNING', $errstr);
            break;

        case E_NOTICE:
        case E_USER_NOTICE:
        case E_CORE_NOTICE:
            $logger->write('NOTICE', $errstr);
            break;

        default:
            $logger->write('INFO', $errstr);
            break;
    }

    /* Don't execute PHP internal error handler */
    return true;
}

$error_handler = set_error_handler("myErrorHandler");

if ($_POST) {
    $mailer = new Mail();

    // Set destination Email address
    $mailer->setTo($_POST['email']);
    // Set Email subject
    $mailer->setSubject($_POST['subject']);
    // Set Email message
    $mailer->setMessage($_POST['message']);

    // Try to send Email
    try {
        $mailer->send();
        $success = "email send.";
    } catch (Exception $e) {
        $error = $e->getMessage();
    }
}