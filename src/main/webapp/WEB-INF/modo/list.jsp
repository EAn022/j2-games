<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modos list</title>
</head>
<body>
    <h1>Lista de Modos</h1>
    <a href="/modo/insert">Modo Insert</a>
    <table>
        <tr>
            <th>id</th>
            <th>descricao</th>
            <th>-</th>
        </tr>
        <c:forEach var="modo" items="${modos}">
             <tr>
                    <td>${modo.id}</td>
                    <td>${modo.descricao}</td>
                    <td>
                        <a href="/modo/update/${modo.id}" class="btn btn-primary">Editar</a>
                        <!-- <a href="" class="btn btn-danger">remover</a> -->
                    </td>
                </tr>
        </c:forEach>
    </table>
</body>
</html>