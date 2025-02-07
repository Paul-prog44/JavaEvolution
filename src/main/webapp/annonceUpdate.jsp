<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Modifier</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
<%@ page import="bean.Task" %>
<% Task task = (Task) request.getAttribute("task"); %>
<form action="modifyTask" method="post" class="form-addTask">
    <div class="form-group addTaskForm">
    <h2>Modifier une tache :</label>
    <label>Entrer un nom:</label>
    <input type="hidden" name="taskId" value=<%= task.getId() %> >
    <input type="text" class="form-control" name="title" id="title" value=<%= task.getTitle() %> >
    <label>Entrer une description:</label>
    <input type="textarea" class="form-control" name="description" id="description" value=<%= task.getDescription() %>>
    <label>Entrer une adresse:</label>
    <input type="text" class="form-control" name="address" id="address" value=<%= task.getAddress() %>>
    <label>Entrer une adresse email:</label>
    <input type="text" class="form-control" name="email" id="email" value=<%= task.getMail() %>>
    <button type="submit" class="btn btn-primary">Valider</button>
    <div>
</form>
</body>
</html>