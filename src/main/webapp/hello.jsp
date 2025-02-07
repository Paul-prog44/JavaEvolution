<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Résultats</title>
</head>
<body>
    <h2>Hello World!</h2>
    <p>Nom : <%= request.getAttribute("name") %></p>
    <p>Prénom : <%= request.getAttribute("surname") %></p>
</body>
</html>