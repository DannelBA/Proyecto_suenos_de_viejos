<%-- 
    Document   : login
    Created on : 3/10/2025, 4:17:39 p. m.
    Author     : barro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Iniciar Sesión</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: 'Segoe UI', sans-serif;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background: linear-gradient(135deg, #74ABE2, #5563DE, #A55DEB);
      background-size: 300% 300%;
      animation: fondo 10s ease-in-out infinite alternate;
    }

    @keyframes fondo {
      0% { background-position: 0% 50%; }
      100% { background-position: 100% 50%; }
    }

    .container {
      background: rgba(255, 255, 255, 0.15);
      backdrop-filter: blur(12px);
      border-radius: 20px;
      padding: 40px 35px;
      box-shadow: 0 8px 25px rgba(0,0,0,0.3);
      width: 350px;
      text-align: center;
      color: #fff;
      animation: aparecer 1s ease forwards;
    }

    @keyframes aparecer {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    h2 {
      margin-bottom: 25px;
      color: #fff;
      font-size: 26px;
      letter-spacing: 1px;
    }

    .form-group {
      margin-bottom: 18px;
      text-align: left;
    }

    label {
      display: block;
      margin-bottom: 6px;
      color: #f0f0f0;
      font-weight: 500;
    }

    input {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 10px;
      background: rgba(255,255,255,0.85);
      color: #333;
      font-size: 15px;
      outline: none;
      transition: all 0.3s ease;
    }

    input:focus {
      background: #fff;
      box-shadow: 0 0 5px rgba(255,255,255,0.5);
    }

    button {
      width: 100%;
      padding: 12px;
      margin-top: 10px;
      border: none;
      border-radius: 10px;
      background: linear-gradient(90deg, #3f87a6, #ebf8e1, #f69d3c);
      background-size: 200% auto;
      color: #222;
      font-weight: 600;
      font-size: 16px;
      cursor: pointer;
      transition: all 0.4s ease;
    }

    button:hover {
      background-position: right center;
      transform: translateY(-2px);
      box-shadow: 0 4px 10px rgba(255,255,255,0.3);
    }

    .link {
      margin-top: 20px;
      display: inline-block;
      color: #fff;
      text-decoration: none;
      font-weight: 500;
      transition: color 0.3s;
    }

    .link:hover {
      color: #ebf8e1;
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
      <a href="home.jsp" class="link">Volver al inicio</a>
    </form>
  </div>
</body>
</html>
