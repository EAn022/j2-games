<%@ page contentType = "text/html; charsert = UTF-8" language = "java" %>
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jogo Update</title>
</head>
<body>
    <h1>Atualizar Jogo</h1>

    <a href="/jogo/list">Jogo List</a>

    <form action="/jogo/update" method="post">
        <input type="hidden" name="id" value="${jogo.id}">

        <label for="titulo">Titulo</label>
        <input type="text" name="titulo" value="${jogo.titulo}">

        <label for="id_modo">Modo</label>
        <select name="id_modo">
            <c:forEach var="modo" items="${modos}">
                <option value="${modo.id}" ${(jogo.modo.id == modo.id) ? "selected":""}>${modo.descricao}</option>
            </c:forEach>
        </select>

        <label for="">Genero</label>
        <c:forEach var="genero" items="${generos}">
            <input type="checkbox" name="id_genero" value="${genero.id}" ${(jogo.generos.contains(genero)) ? "checked":""}>
            <label for="id_genero">${genero.nome}</label>
        </c:forEach>

        <label for="">Plataforma</label>
        <c:forEach var="plataforma" items="${plataformas}">
            <input type="checkbox" name="id_plataforma" value="${plataforma.id}" ${(jogo.plataformas.contains(plataforma)) ? "checked":""}>
            <label for="id_plataforma">${plataforma.descricao}</label>
        </c:forEach>

        <button type="submit">Salvar</button>
    </form>
</body>
</html>