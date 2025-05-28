<%@ page contentType = "text/html; charset=UTF-8" language = "java"%>
<%@ taglib uri = "jakarta.tags.core" prefix = "c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Genero List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <ul class="navbar-nav">
                <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/modo/list">Modos de Jogo | </a>
                </li>
                <li class="nav-item">
                <a class="nav-link active" href="/genero/list">Gêneros de Jogo | </a>
                </li>
                <li class="nav-item">
                <a class="nav-link active" href="/plataforma/list">Plataformas de Jogo | </a>
                </li>
                <li class="nav-item">
                <a class="nav-link active" href="/jogo/list">Jogos</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>

    <h1>Lista de Generos</h1>

    <a href="/genero/insert">Genero Insert</a>
    
    <table class="table">
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
                        <a href="/genero/update/${genero.id}" class="btn btn-primary">Editar</a>
                        <a href="/genero/delete/${genero.id}" class="btn btn-danger">Remover</a>
                    </td>
                </tr>
        </c:forEach>
    </table>
</body>
</html>