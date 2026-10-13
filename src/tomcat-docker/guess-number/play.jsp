<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Jugar</title>
    <style>
        body { font-family: sans-serif; text-align: center; padding-top: 50px; background: #f6f8fa; }
        h1 { color: #0066cc; }
        form { margin-top: 20px; }
        .mensaje { font-size: 1.2em; margin-top: 20px; }
    </style>
</head>
<body>
<%
    Integer secreto = (Integer) session.getAttribute("numeroSecreto");
    if (secreto == null) {
        // Primera vez: generar un número aleatorio entre 1 y 100
        secreto = (int) (Math.random() * 100) + 1;
        session.setAttribute("numeroSecreto", secreto);
        session.setAttribute("intentos", 0);
    }

    String guessStr = request.getParameter("guess");
    if (guessStr != null) {
        int guess = Integer.parseInt(guessStr);
        int intentos = (int) session.getAttribute("intentos") + 1;
        session.setAttribute("intentos", intentos);

        if (guess == secreto) {
%>
            <h1>🎉 ¡Correcto!</h1>
            <p class="mensaje">Has adivinado el número <strong><%= secreto %></strong> en <%= intentos %> intentos.</p>
            <p><a href="index.jsp">Jugar de nuevo</a></p>
<%
            session.invalidate();
        } else if (guess < secreto) {
%>
            <h1>❌ Demasiado bajo</h1>
            <p class="mensaje">Intenta con un número más grande.</p>
            <p>Intentos: <%= intentos %></p>
            <form action="play.jsp" method="post">
                <input type="number" name="guess" min="1" max="100" required>
                <input type="submit" value="Probar otra vez">
            </form>
<%
        } else {
%>
            <h1>❌ Demasiado alto</h1>
            <p class="mensaje">Intenta con un número más pequeño.</p>
            <p>Intentos: <%= session.getAttribute("intentos") %></p>
            <form action="play.jsp" method="post">
                <input type="number" name="guess" min="1" max="100" required>
                <input type="submit" value="Probar otra vez">
            </form>
<%
        }
    } else {
%>
        <p>Error: No se ha recibido ningún número.</p>
        <a href="index.jsp">Volver al inicio</a>
<%
    }
%>
</body>
</html>
