<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Vos taches</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Hello World!</h2>
<form action="formulaire" method="post">
    <label>Entrer votre nom :</label>
    <input type="text" name="name" id="name">
    <label>Entrer votre prenom :</label>
    <input type="text" name="surname" id="surname">
    <button type="submit">Valider</button>
</form>
<a href="annonceAdd.jsp">Ajouter une tache</a>

<form action="getTask" method="get">
        <button type="submit" class="btn btn-primary">Afficher les taches</button>
    </form>
</body>
</html>
