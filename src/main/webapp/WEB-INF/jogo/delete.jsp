<%@ page contentType = "text/html; charset = UTF-8" language = "java" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jogo Delete</title>
</head>
<body>
    <h1>Deletar Jogo</h1>

    <a href="/jogo/list">Jogo List</a>

    <form action="/jogo/delete" method="post">
        <input type="hidden" name="id" value="${jogo.id}">

        <label for="titulo">Titulo</label>
        <input type="text" name="titulo" value="${jogo.titulo}">

        <button type="submit">Deletar</button>
    </form>
</body>
</html>