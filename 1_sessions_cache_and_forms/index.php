<?php
/* 1. Сессии, кеши, сложные формы
 *
 * Написать простейшую форму отправки запроса (стандартная форма “свяжитесь с нами”) с защитой от повторной
 * отправки на двойное нажатие. Также запретить отправку запроса чаще чем раз в 30 минут, а после успешной
 * отправки выводить надпись “вы уже отправили запрос, повторный запросы можно отправить через ххх минут”.
 * С помощью кеша защитить от отправки одного письма с разных ip (с разными ключами сессий).
 */

require "controller.php";
require "template.tpl";

