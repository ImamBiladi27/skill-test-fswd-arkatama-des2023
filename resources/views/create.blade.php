<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <div class="container">
            
        <h1 class="text-center mt-5">Create Page</h1>
        <div class="row">
            <div class="col-md-6 offset-md-3">
            <form action="{{ url('/store-user') }}" method="post">
        @csrf
        <div class="mb-3">
        <label for="name" class="form-label">Nama:</label>
        <input type="text" class="form-control" name="name" required>
                    </div>
                    <div class="mb-3">
                    <label for="age" class="form-label">Usia:</label>
        <input type="text" name="age"class="form-control" required>
        <br>
                    </div>
                    <div class="mb-3">
                    <label for="city"class="form-label">Kota:</label>
        <input type="text" name="city" class="form-control"required>
        <br>
        <br>
                    </div>
                    <button type="submit" class="btn btn-primary">Tambahkan</button>
             
                     <a href="{{ url('/dashboard') }}" class="btn btn-secondary">Back</a>
    </form>
            </div>
        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoJtKh7z7lGz7fuP4F8nfdFvAOA6Gg/z6Y5J6XqqyGXYM2ntXFQ6HW2lc1tsl0Ny4uVgQGjT425qpy16l0vI4fXsJ18XfWcLVmjTK1yEzrNhGJlvnWmL5qfTGkV4YqwdhqpXaWfLxV" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0v8FqFjcJ6pajs/rfdfs3SO+kD4Ck5BdPtF+to8xMp9Mvc9S5pGzW5qFzFd1f7hYh1dU1fzFUw4GqOu1j4W25OwX6uX4Vy5pG8JJtFWZDkIqM2PvhbKIbTtM+E4oq91dTzIy4QWiVGp7W2a9SqfzFvbVkzWsK4jPwTgpwX/uSAJw/JgIo/yO+S" crossorigin="anonymous"></script>
</html>