<%@ page contentType = "text/html; charset=UTF-8" language = "java"%>
<%@ taglib uri = "jakarta.tags.core" prefix = "c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jogos List</title>
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

    <section class="mx-3">
        <h1>Lista de Jogos</h1>
        
        <a href="/jogo/insert">Jogo Insert</a>
        
        <table class="table">
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
    </section>
</body>
</html>