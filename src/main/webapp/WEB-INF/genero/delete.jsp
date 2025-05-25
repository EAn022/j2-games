<%@ page contentType = "text/html; charset = UTF-8" language = "java"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Genero Delete</title>
</head>
<body>
    <h1>Deletar Genero</h1>

    <a href="/genero/list">Genero List</a>

    <form action="/genero/delete" method="post">
        <input type="hidden" name="id" value="${genero.id}">

        <label for="nome">Nome</label>
        <input type="text" name="nome" value="${genero.nome}">

        <button type="submit">Deletar</button>
    </form>
</body>
</html>