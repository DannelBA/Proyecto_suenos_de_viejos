<%-- 
    Document   : FormUsuario
    Created on : 4/10/2025, 5:01:01 p. m.
    Author     : Vector
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Registrar Usuario - Adulto Mayor</title>
<style>
:root{
    --bg1:#0f172a;
    --bg2:#071033;
    --accent:#7c5cff;
    --accent2:#3ad7a6;
    --text:#e6eef8;
    --muted:#b8c3d9;
}

*{box-sizing:border-box;margin:0;padding:0}
body{
    font-family: 'Inter', system-ui, sans-serif;
    background: radial-gradient(1200px 700px at 10% 10%, rgba(124,92,255,0.12), transparent 8%),
                radial-gradient(900px 600px at 90% 90%, rgba(58,215,166,0.08), transparent 8%),
                linear-gradient(180deg,var(--bg1),var(--bg2));
    color: var(--text);
    min-height: 100vh;
    display:flex;
    align-items:flex-start;
    justify-content:center;
    padding:60px 20px;
    animation: fadeIn .7s ease;
}

/* contenedor del formulario */
.form-container{
    width:100%;
    max-width:860px;
    background: rgba(255,255,255,0.04);
    backdrop-filter: blur(10px);
    border:1px solid rgba(255,255,255,0.08);
    box-shadow: 0 12px 40px rgba(0,0,0,0.45);
    border-radius:18px;
    padding:40px 50px;
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(340px,1fr));
    gap:24px 36px;
}

/* título */
h2{
    grid-column:1 / -1;
    text-align:center;
    margin-bottom:10px;
    font-size:26px;
    color:white;
    background: linear-gradient(90deg,var(--accent),var(--accent2));
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

/* etiquetas e inputs */
label{
    font-weight:600;
    color:var(--muted);
    margin-bottom:6px;
    display:block;
}
input[type="text"],
input[type="email"],
input[type="password"],
input[type="date"],
select{
    width:100%;
    padding:10px 12px;
    font-size:15px;
    border:none;
    border-radius:8px;
    background:rgba(255,255,255,0.08);
    color:white;
    box-shadow:inset 0 0 0 1px rgba(255,255,255,0.12);
    transition: all .3s ease;
}
input:focus, select:focus{
    outline:none;
    box-shadow:0 0 0 2px var(--accent2);
}

/* mensaje */
.message{
    grid-column:1 / -1;
    background:rgba(58,215,166,0.1);
    border:1px solid rgba(58,215,166,0.25);
    border-radius:10px;
    padding:12px;
    color:#aefdd4;
    text-align:center;
    font-size:14px;
}

/* botones */
button, input[type="submit"]{
    grid-column:1 / -1;
    justify-self:center;
    width:45%;
    padding:14px;
    font-size:16px;
    font-weight:600;
    border:none;
    border-radius:12px;
    color:white;
    background:linear-gradient(90deg,var(--accent),var(--accent2));
    cursor:pointer;
    box-shadow:0 8px 24px rgba(124,92,255,0.2);
    transition:transform .2s ease, box-shadow .2s ease;
}
button:hover, input[type="submit"]:hover{
    transform:translateY(-2px) scale(1.02);
    box-shadow:0 10px 30px rgba(124,92,255,0.25);
}

/* enlace */
a.link{
    grid-column:1 / -1;
    text-align:center;
    color:var(--accent2);
    text-decoration:none;
    font-size:15px;
    margin-top:8px;
    transition:color .25s ease;
}
a.link:hover{
    color:var(--accent);
}

/* grupo de campos */
.form-group{display:flex;flex-direction:column}

/* animación de entrada */
@keyframes fadeIn{
    from{opacity:0;transform:translateY(20px)}
    to{opacity:1;transform:translateY(0)}
}

/* responsive */
@media(max-width:720px){
    .form-container{padding:30px 24px}
    button,input[type="submit"]{width:80%}
}
</style>
</head>
<body>

<form class="form-container" action="Usuario" method="POST">
    <h2>Registrar Usuario (Adulto Mayor)</h2>

    <div class="form-group">
        <label for="tipodocumento">Tipo de Documento</label>
        <select name="tipodocumento" id="tipodocumento" required>
            <option value="">Seleccione tipo documento</option>
            <option value="1">Cédula de Ciudadanía</option>
            <option value="4">Cédula de Extranjería</option>
            <option value="2">Pasaporte</option>
            <option value="5">NIT</option>
        </select>
    </div>

    <div class="form-group">
        <label for="documento">Documento</label>
        <input type="text" name="documento" id="documento" required>
    </div>

    <div class="form-group">
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" id="nombre" required>
    </div>

    <div class="form-group">
        <label for="apellidos">Apellidos</label>
        <input type="text" name="apellidos" id="apellidos" required>
    </div>

    <div class="form-group">
        <select name="genero" required>
            <option value="">Seleccione su género</option>
            <option value="Masculino">Masculino</option>
            <option value="Femenino">Femenino</option>
        </select>
    </div>

    <input type="hidden" name="idRol" value="3">
    <input type="hidden" value="registrar" id="ContUsuario" name="ContUsuario">

    <div class="form-group">
        <label for="fecha_nacimiento">Fecha de Nacimiento</label>
        <input type="date" name="fecha_nacimiento" id="fecha_nacimiento" required>
    </div>

    <div class="form-group">
        <label for="idtipotelefono">Tipo de Teléfono</label>
        <select name="idtipotelefono" id="idtipotelefono" required>
            <option value="">Seleccione tipo teléfono</option>
            <option value="1">Fijo</option>
            <option value="2">Celular</option>
        </select>
    </div>

    <div class="form-group">
        <label for="telefono">Teléfono</label>
        <input type="text" name="telefono" id="telefono" required>
    </div>

    <div class="form-group">
        <label for="correo">Correo</label>
        <input type="email" name="correo" id="correo" required>
    </div>

    <div class="form-group">
        <label for="contraseña">Contraseña</label>
        <input type="password" name="contraseña" id="contraseña" required>
    </div>

    <button type="submit">Registrarse</button>

    <a href="login.jsp" class="link">¿Ya tienes cuenta? Inicia sesión</a>
</form>

    <%
      String mensaje = (String) request.getAttribute("mensaje");
      if (mensaje != null) {
  %>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
      <script>
        Swal.fire({
          title: '¡Registro exitoso!',
          text: '<%= mensaje %>',
          icon: 'success',
          confirmButtonColor: '#4CAF50',
          confirmButtonText: 'Aceptar'
        }).then(() => {
 
            
                window.location.href = 'login.jsp';
            
        });
      </script>
  <%
      }
  %>

</body>
</html>

