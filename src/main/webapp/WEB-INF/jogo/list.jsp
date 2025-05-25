<%@ page contentType = "text/html; charset = UTF-8" language = "java"%>
<%@ taglib uri = "jakarta.tags.core" prefix = "c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jogos List</title>
</head>
<body>
    <h1>Lista de Jogos</h1>

    <a href="/jogo/insert">Jogo Insert</a>
    
    <table>
        <tr>
            <th>id</th>
            <th>titulo</th>
            <th>modo</th>
            <th>plataforma</th>
            <th>genero</th>
            <th>-</th>
        </tr>
        <c:forEach var="jogo" items="${jogos}">
             <tr>
                    <td>${jogo.id}</td>
                    <td>${jogo.titulo}</td> 
                    <td>${jogo.modo.descricao}</td>
                    <td>
                        <c:forEach var="plataforma" items="${jogo.plataformas}">${plataforma.descricao}, </c:forEach>
                    </td>
                    <td>
                        <c:forEach var="genero" items="${jogo.generos}">${genero.nome}, </c:forEach>
                    </td>
                    <td>
                        <a href="/jogo/update/${jogo.id}" class="btn btn-primary">Editar</a>
                        <a href="/jogo/delete/${jogo.id}" class="btn btn-danger">Remover</a>
                    </td>
                </tr>
        </c:forEach>
    </table>
</body>
</html>