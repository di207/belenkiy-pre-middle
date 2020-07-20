<?php
session_start();

spl_autoload_register(function ($class) {
    include $class . '.php';
});

if(isset($_SESSION['error'])) unset($_SESSION['error']);
if(isset($_SESSION['success'])) unset($_SESSION['success']);
$_SESSION['fails'] = [];

$message = '';

if ($_POST) {
    $feedback = new feedback;
    if(isset($_POST['message'])) $message = $_POST['message'];

    $feedback->sendMessage($message);
}