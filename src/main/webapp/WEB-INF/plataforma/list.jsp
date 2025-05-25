<%@ page contentType = "text/html, charset = UTF-8" language = "java"%>
<%@ taglib uri = "jakarta.tags.core" prefix = "c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Lista de Plataformas</h1>

    <a href="/plataforma/insert">Plataforma Insert</a>
    
    <table>
        <tr>
            <th>id</th>
            <th>descricao</th>
            <th>-</th>
        </tr>
        <c:forEach var="plataforma" items="${plataformas}">
             <tr>
                    <td>${plataforma.id}</td>
                    <td>${plataforma.descricao}</td>
                    <td>
                        <a href="/plataforma/update/${plataforma.id}" class="btn btn-primary">Editar</a>
                        <a href="/plataforma/delete/${plataforma.id}" class="btn btn-danger">Remover</a>
                    </td>
                </tr>
        </c:forEach>
    </table>
</body>
</html>