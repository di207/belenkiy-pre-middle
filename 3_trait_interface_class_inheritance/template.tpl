<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <title>Тестирование на pre-middle PHP</title>
    </head>
    <body class="pb-5">
        <header class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <h1>Тестирование на pre-middle PHP</h1>
                </div>
            </div>
        </header>

        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <div class="list-group">
                        <a href="/" class="list-group-item list-group-item-action">Назад</a>
                        <a href="/1_sessions_cache_and_forms/" class="list-group-item list-group-item-action">1. Сессии, кеши, сложные формы</a>
                        <a href="/2_try_catch_simple_classes/" class="list-group-item list-group-item-action ">2. Трай, кетч, простые классы </a>
                        <a href="/3_trait_interface_class_inheritance/" class="list-group-item list-group-item-action active">3. Трейты, интерфейсы, наследование классов</a>
                        <a href="/4_code_review/" class="list-group-item list-group-item-action">4. Code review</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form action="" method='post'>
                        <input type="submit" name="export" class="btn btn-primary" value='Export' />
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <?php if (!empty($result)): ?>
                        <div class="list-group">
                            <h5 class="mb-1">CSV</h5>
                            <a href='<?php echo $result["csv"];?>' class="list-group-item list-group-item-action"><?php echo $result["csv"];?></a>
                        </div>
                        <div class="list-group">
                            <h5 class="mb-1">XML</h5>
                            <a href='<?php echo $result["xml"];?>' class="list-group-item list-group-item-action"><?php echo $result["xml"];?></a>
                        </div>
                        <div class="list-group">
                            <h5 class="mb-1">HTML</h5>
                            <?php foreach ($result['html'] as $file): ?>
                                <a href='<?php echo $file;?>' class="list-group-item list-group-item-action"><?php echo $file;?></a>
                            <?php endforeach; ?>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </body>
</html>

