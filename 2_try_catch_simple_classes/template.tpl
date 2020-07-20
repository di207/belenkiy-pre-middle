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
                        <a href="/2_try_catch_simple_classes/" class="list-group-item list-group-item-action active">2. Трай, кетч, простые классы </a>
                        <a href="/3_trait_interface_class_inheritance/" class="list-group-item list-group-item-action">3. Трейты, интерфейсы, наследование классов</a>
                        <a href="/4_code_review/" class="list-group-item list-group-item-action">4. Code review</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <?php if(isset($success)): ?>
                        <div class="alert alert-success" >
                            <?php echo $success; ?>
                        </div>
                    <?php endif; ?>
                    <?php if(isset($error)): ?>
                        <div class="alert alert-danger" >
                            <?php echo $error; ?>
                        </div>
                    <?php endif; ?>
                    <form action="" method='post'>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" name='email' placeholder="Enter email" required>
                        </div>
                        <div class="form-group">
                            <label for="subject">Subject</label>
                            <input type="text" class="form-control" name='subject'  placeholder="Enter letter subject" required>
                        </div>
                        <div class="form-group">
                            <label for="message">Message</label>
                            <textarea class="form-control" name='message' rows="5"  placeholder='Message'></textarea>
                        </div>
                        <input type="submit" class="btn btn-primary" value='Send message' />
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

