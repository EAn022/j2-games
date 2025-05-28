<%@ page contentType = "text/html; charset=UTF-8" language = "java" %>
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jogo Update</title>
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
        <h1>Atualizar Jogo</h1>

        <a href="/jogo/list">Jogo List</a>
        
        <form action="/jogo/update" method="post">
            <input type="hidden" name="id" value="${jogo.id}">

            <label for="titulo" class="form-label">Titulo</label>
            <input type="text" name="titulo" value="${jogo.titulo}" class="form-control mb-3">
            
            <label for="id_modo" class="form-label">Modo</label>
            <select name="id_modo">
                <c:forEach var="modo" items="${modos}">
                    <option value="${modo.id}" ${(jogo.modo.id == modo.id) ? "selected":""}>${modo.descricao}</option>
                </c:forEach>
            </select>

            <label for="" class="form-label">Genero</label>
            <c:forEach var="genero" items="${generos}">
                <input type="checkbox" name="id_genero" value="${genero.id}" ${(jogo.generos.contains(genero)) ? "checked":""}>
                <label for="id_genero">${genero.nome}</label>
            </c:forEach>

            <label for="" class="form-label">Plataforma</label>
            <c:forEach var="plataforma" items="${plataformas}">
                <input type="checkbox" name="id_plataforma" value="${plataforma.id}" ${(jogo.plataformas.contains(plataforma)) ? "checked":""}>
                <label for="id_plataforma">${plataforma.descricao}</label>
            </c:forEach>

            <button type="submit">Salvar</button>
        </form>
    </section>
</body>
</html>