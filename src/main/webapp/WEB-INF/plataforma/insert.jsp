<%@ page contentType = "text/html; charset = UTF-8" language = "java"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plataforma Insert</title>
</head>
<body>
    <h1>Nova Plataforma</h1>

    <a href="/plataforma/list">Plataforma List</a>

    <form action="/plataforma/insert" method="post">
        <label for="descricao">Descrição</label>
        <input type="text" name="descricao">

        <button type="submit">Salvar</button>
    </form>
</body>
</html>