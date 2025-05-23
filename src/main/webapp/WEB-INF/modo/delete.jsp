<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modo Delete</title>
</head>
<body>
    <h1>Modo delete</h1>
    
    <a href="/modo/list">Modo List</a>

    <form action="/modo/delete" method="post">
        <input type="hidden" name="id" value="${modo.id}">

        <label for="descricao">Descrição</label>
        <input type="text" name="descricao" value="${modo.descricao}">

        <button type="submit">Deletar</button>
    </form>
</body>
</html>