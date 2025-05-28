<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modos list</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</head>
<body>
    <h1>Lista de Modos</h1>

    <a href="/modo/insert">Modo Insert</a>
    
    <table class="table">
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
                        <a href="/modo/delete/${modo.id}" class="btn btn-danger">Remover</a>
                    </td>
                </tr>
        </c:forEach>
    </table>
</body>
</html>