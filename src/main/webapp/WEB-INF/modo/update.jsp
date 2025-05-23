<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modo update</title>
</head>
<body>
    <h1>Atualizar Modo</h1>

    <a href="/modo/update">Modo List</a>

    <form action="/modo/update" method="post">
        <label for="id">Id</label>
        <input type="hidden" name="id" value="${modo.id}">
        
        <label for="descricao">Descrição</label>
        <input type="text" name="descricao" value="${modo.descricao}">

        <button type="submit">Salvar</button>
    </form>
</body>
</html>