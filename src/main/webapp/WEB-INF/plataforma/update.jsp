<%@ page contentType = "text/html, charset = UTF-8" language = "java"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plataforma update</title>
</head>
<body>
    <h1>Atualizar Plataforma</h1>

    <a href="/plataforma/list">Plataforma List</a>

    <form action="/plataforma/update" method="post">
        <input type="text" name="id" value="${plataforma.id}">

        <label for="descricao">Descricao</label>
        <input type="text" name="descricao" value="${plataforma.descricao}">

        <button type="submit">Salvar</button>
    </form>
</body>
</html>