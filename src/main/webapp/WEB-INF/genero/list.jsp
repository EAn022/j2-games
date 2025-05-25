<%@ page contentType = "text/html; charset = UTF-8" language = "java"%>
<%@ taglib uri = "jakarta.tags.core" prefix = "c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Genero List</title>
</head>
<body>
    <h1>Lista de Generos</h1>
    <a href="/genero/insert">Genero Insert</a>
    <table>
        <tr>
            <th>id</th>
            <th>nome</th>
            <th>-</th>
        </tr>
        <c:forEach var="genero" items="${generos}">
             <tr>
                    <td>${genero.id}</td>
                    <td>${genero.nome}</td>
                    <td>
                        <!-- <a href="/genero/update/${genero.id}" class="btn btn-primary">Editar</a>
                        <a href="/genero/delete/${genero.id}" class="btn btn-danger">remover</a> -->
                    </td>
                </tr>
        </c:forEach>
    </table>
</body>
</html>