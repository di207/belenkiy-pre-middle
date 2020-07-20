## Тестирование (confirmation junior, PHP)

## Окружение

LAMP/WAMP (php v7.1 или выше, MySQL v.5.7 или выше)

## Инструкции для запуска

Дамп рабочей базы данных необходимо развернуть из файла pre_middle.sql

### 1. Сессии, кеши, сложные формы

Каталогу /1_sessions_cache_and_forms/cache необходим доступ для записи.
Праметры подключения к базе данных находятся [config.php](https://github.com/di207/belenkiy-pre-middle/tree/master/1_sessions_cache_and_forms/config.php) в корне папки `1_sessions_cache_and_forms`
```php
    define('DB_HOST', 'localhost');
    define('DB_NAME', 'database_name');
    define('DB_USER', 'root');
    define('DB_PASS', '');
```

### 2. Трай, кетч, простые классы

Каталогу /2_try_catch_simple_classes/logs необходим доступ для записи.
Для полноценной работы приложения необходимо поднять локальный почтовый сервер.

### 3. Трейты, интерфейсы, наследование классов

Предоставьте доступ для записи следующим каталогам:
- /3_trait_interface_extends/CSV
- /3_trait_interface_extends/HTML
- /3_trait_interface_extends/XML

Праметры подключения к базе данных находятся [config.php](https://github.com/di207/belenkiy-pre-middle/tree/master/3_trait_interface_class_inheritance/config.php) в корне папки `3_trait_interface_class_inheritance`
```php
    define('DB_HOST', 'localhost');
    define('DB_NAME', 'database_name');
    define('DB_USER', 'root');
    define('DB_PASS', '');
```

### 4. Code review

Нет особых требований.