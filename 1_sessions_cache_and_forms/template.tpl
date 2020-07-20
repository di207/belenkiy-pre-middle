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
                        <a href="/1_sessions_cache_and_forms/" class="list-group-item list-group-item-action active">1. Сессии, кеши, сложные формы</a>
                        <a href="/2_try_catch_simple_classes/" class="list-group-item list-group-item-action">2. Трай, кетч, простые классы </a>
                        <a href="/3_trait_interface_class_inheritance/" class="list-group-item list-group-item-action">3. Трейты, интерфейсы, наследование классов</a>
                        <a href="/4_code_review/" class="list-group-item list-group-item-action">4. Code review</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form class="form-feedback" id="form-feedback" method="post" action="">
                        <?php if (count($_SESSION['fails']) > 0): ?>
                            <?php foreach ($_SESSION['fails'] as $fail): ?>
                                <p class="text-danger"><?php echo $fail; ?></p>
                            <?php endforeach; ?>
                        <?php endif; ?>

                        <h2 class="form-feedback-heading">Please, write your message</h2>

                        <?php if (isset($_SESSION['error'])) { ?>
                        <p class="text-danger"><?php echo $_SESSION['error']; ?></p>
                        <?php } ?>
                        <?php if (isset($_SESSION['success'])) { ?>
                        <p class="text-success"><?php echo $_SESSION['success']; ?></p>
                        <?php } ?>

                        <textarea class="form-control" name="message" rows="7" required><?php echo htmlspecialchars($message); ?></textarea>

                        <button class="btn btn-lg btn-primary btn-block" type="submit">Send message</button>
                    </form>
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

