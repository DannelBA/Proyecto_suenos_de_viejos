<%-- 
    Document   : login
    Created on : 3/10/2025, 4:17:39 p. m.
    Author     : barro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(120deg, #2980b9, #8e44ad);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 0;
    }
    .container {
      width: 350px;
      background: #fff;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 10px 20px rgba(0,0,0,0.2);
      text-align: center;
    }
    h2 {
      margin-bottom: 20px;
      color: #333;
    }
    .form-group {
      margin-bottom: 15px;
      text-align: left;
    }
    label {
      display: block;
      margin-bottom: 5px;
      color: #444;
    }
    input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 8px;
    }
    button {
      width: 100%;
      padding: 10px;
      margin-top: 10px;
      background: #2980b9;
      border: none;
      color: white;
      font-size: 16px;
      border-radius: 8px;
      cursor: pointer;
      transition: background 0.3s;
    }
    button:hover {
      background: #1f6391;
    }
    .link {
      margin-top: 15px;
      display: block;
      color: #2980b9;
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="container">
    <form action="Login" method="post">
      <h2>Iniciar Sesión</h2>
      <div class="form-group">
        <label for="correo">Correo:</label>
        <input type="email" id="correo" name="correo" required>
      </div>
      <div class="form-group">
        <label for="contraseña">Contraseña:</label>
        <input type="password" id="contraseña" name="contraseña" required>
      </div>
      <button type="submit">Entrar</button>
      <a href="registerForm.jsp" class="link">¿No tienes cuenta? Regístrate</a>
    </form>
  </div>
</body>
</html>
