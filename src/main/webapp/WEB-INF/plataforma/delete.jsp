<%@ page contentType = "text/html, charset = UTF-8" language = "java"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plataforma Delete</title>
</head>
<body>
    <h1>Deletar Plataforma</h1>

    <a href="/plataforma/list">Plataforma List</a>

    <form action="/plataforma/delete" method="post">
        <input type="hidden" name="id" value="${plataforma.id}">

        <label for="descricao">Descrição</label>
        <input type="text" name="descrição" value="${plataforma.descricao}">

        <button type="submit">Deletar</button>
    </form>
</body>
</html>