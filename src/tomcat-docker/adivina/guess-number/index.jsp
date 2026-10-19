<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Adivina el número</title>
    <style>
        body { font-family: sans-serif; text-align: center; padding-top: 50px; background: #f6f8fa; }
        h1 { color: #0066cc; }
        form { margin-top: 20px; }
        input[type=number] { padding: 5px; width: 80px; font-size: 1em; }
        input[type=submit] { padding: 5px 10px; font-size: 1em; }
    </style>
</head>
<body>
    <h1>🎲 Adivina el número</h1>
    <p>He pensado un número entre 1 y 100. ¡Intenta adivinarlo!</p>

    <form action="play.jsp" method="post">
        <label>Tu intento: </label>
        <input type="number" name="guess" min="1" max="100" required>
        <input type="submit" value="Probar suerte">
    </form>

    <%
        // Reiniciar el juego al cargar la página principal
        session.invalidate();
    %>
</body>
</html>