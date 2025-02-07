<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Vos taches</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
<form action="addTask" method="post" class="form-addTask">
    <div class="form-group addTaskForm">
    <h2>Add a task</h2>
    <label>Entrer un titre :</label>
    <input type="text" class="form-control" name="title" id="title">
    <label>Entrer une description:</label>
    <input type="textarea" class="form-control" name="description" id="description">
    <label>Entrer une adresse:</label>
    <input type="text" class="form-control" name="address" id="address">
    <label>Entrer une adresse email:</label>
    <input type="text" class="form-control" name="email" id="email">
    <button type="submit" class="btn btn-primary">Valider</button>
    <div>
</form>
</body>
</html>