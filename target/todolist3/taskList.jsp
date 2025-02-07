<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.Task" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Vos taches</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Listes des tâches</h2>
    <% List<Task> taskList = (List<Task>) request.getAttribute("taskList");

        if (taskList != null && !taskList.isEmpty()) { %>
            <ul>
            <% for (Task task : taskList) { %>
                <li class="list-group-item list-element">
                 <div>
                    <strong>Titre :</strong> <%= task.getTitle() %>,
                    <strong>Description :</strong> <%= task.getDescription() %>
                    <strong>Mail :</strong> <%= task.getMail() %>
                    <strong>Adresse :</strong> <%= task.getAddress() %>
                 </div>

                <form action="deleteTask" method="post" class="form-button">
                <input type="hidden" name="taskId" value=<%= task.getId() %> >
                <button type="submit" class="btn btn-danger">Supprimer</button>
                </form>
                <form action="modifyTask" method="get" class="form-button">
                <input type="hidden" name="taskId" value=<%= task.getId() %> >
                <button type="submit" class="btn btn-warning">Modifier</button>
                </form>
                </li>
            <% } %>
            <a href="index.jsp"><button type="button" class="btn btn-primary">Retour</button>
</a>
            </ul>
    <%  } else { %>
        <p>Aucune tâche trouvée.</p>
    <% } %>
</body>
</html>