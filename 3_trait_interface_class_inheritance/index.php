<?php
    /*3. Трейты, интерфейсы, наследование классов
     * Напишите два класса для экспорта товаров из базы, один экспортирует в csv (колонки: id, title),
     * второй в html (где одна страница - одна карточка товара). Сделать возможность расширять особые
     * экспорты - например в виде пдф каталога или xml для яндекс.директ.*/

    umask(0);
    require "controller.php";
    require "template.tpl";