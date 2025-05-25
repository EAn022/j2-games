<%@ page contentType = "text/html; charset = UTF-8" language = "java"%>
<%@ taglib uri = "jakarta.tags.core" prefix = "c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jogo Insert</title>
</head>
<body>
    <h1>Novo Jogo</h1>

    <a href="/jogo/list">Jogo List</a>

    <form action="/jogo/insert" method="post">
        <label for="titulo">Titulo</label>
        <input type="text" name="titulo" >
        
        <label for="id_plataforma">Plataforma</label>
        <c:forEach var="plataforma" items="${plataformas}">
            <input type="checkbox" name="id_plataforma" value="${plataforma.id}">
            <label for="id_plataforma">${plataforma.descricao}</label>    
        </c:forEach>

        <label for="">Generos</label>
        <c:forEach var="genero" items="${generos}">
            <input type="checkbox" name="id_genero" value="${genero.id}">
            <label for="id_genero">${genero.nome}</label>
        </c:forEach>

        <label for="id_modo">Modo</label>
        <select name="id_modo">
            <c:forEach var="modo" items="${modos}">
                <option value="${modo.id}">${modo.descricao}</option>
            </c:forEach>
        </select>

        <button type="submit">Salvar</button>
    </form>
</body>
</html>