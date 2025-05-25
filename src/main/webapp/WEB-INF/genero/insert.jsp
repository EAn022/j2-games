<%@ page contentType = "text/html; charset = UTF-8" language = "java"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Genero insert</title>
</head>
<body>
    <h1>Novo Genero</h1>
    
    <a href="/genero/list">Genero list</a>

    <form action="/genero/insert" method="post">
        <label for="nome">Nome</label>
        <input type="text" name="nome">
        
        <button type="submit">Salvar</button>
    </form>
</body>
</html>