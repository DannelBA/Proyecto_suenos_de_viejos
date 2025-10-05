<%-- 
    Document   : home
    Created on : 4/10/2025, 7:51:37 p. m.
    Author     : barro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Portal - Iniciar sesión / Registro</title>
<style>
  :root{
    --bg1: #0f172a;
    --bg2: #071033;
    --accent: #7c5cff;
    --accent2: #3ad7a6;
    --glass: rgba(255,255,255,0.06);
    --card: rgba(255,255,255,0.04);
    --text: #e6eef8;
    --muted: #b8c3d9;
  }

  /* Reset ligero */
  *{box-sizing:border-box;margin:0;padding:0}
  html,body{height:100%}
  body{
    font-family: Inter, ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
    background: radial-gradient(1200px 700px at 10% 10%, rgba(124,92,255,0.11), transparent 8%),
                radial-gradient(900px 600px at 90% 90%, rgba(58,215,166,0.06), transparent 8%),
                linear-gradient(180deg,var(--bg1),var(--bg2));
    color:var(--text);
    -webkit-font-smoothing:antialiased;
    display:flex;
    align-items:center;
    justify-content:center;
    padding:40px;
  }

  /* Contenedor principal */
  .wrap{
    width:100%;
    max-width:1100px;
    display:grid;
    grid-template-columns: 1fr 420px;
    gap:28px;
    align-items:center;
  }

  /* Panel izquierdo: bienvenida + ilustración */
  .hero{
    padding:36px;
    border-radius:18px;
    background: linear-gradient(180deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));
    box-shadow: 0 10px 30px rgba(2,6,23,0.6);
    position:relative;
    overflow:hidden;
  }
  .brand{
    display:flex;
    gap:12px;
    align-items:center;
    margin-bottom:18px;
  }
  .logo{
    width:52px;height:52px;border-radius:12px;
    background:linear-gradient(135deg,var(--accent),var(--accent2));
    display:grid;place-items:center;
    box-shadow:0 6px 18px rgba(124,92,255,0.18), inset 0 -6px 18px rgba(255,255,255,0.06);
  }
  .logo svg{filter:drop-shadow(0 6px 18px rgba(124,92,255,0.18));}
  h1{font-size:28px;line-height:1.05;margin-bottom:8px}
  p.lead{color:var(--muted);max-width:58ch;margin-bottom:22px}

  /* Decorative cards */
  .feature-grid{
    display:grid;
    grid-template-columns:repeat(2,1fr);
    gap:12px;
    margin-top:8px;
  }
  .feat{
    background:linear-gradient(180deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));
    padding:12px;
    border-radius:12px;
    display:flex;
    gap:10px;
    align-items:center;
    border:1px solid rgba(255,255,255,0.03);
    transform:translateY(0);
    transition:transform .35s ease;
  }
  .feat:hover{transform:translateY(-6px)}
  .feat svg{width:36px;height:36px;opacity:0.95}

  /* Panel derecho: acciones */
  .panel{
    padding:28px;
    background:linear-gradient(180deg, rgba(255,255,255,0.025), rgba(255,255,255,0.01));
    border-radius:18px;
    border:1px solid rgba(255,255,255,0.03);
    box-shadow: 0 8px 30px rgba(2,6,23,0.5);
    min-height:320px;
    display:flex;
    flex-direction:column;
    gap:18px;
    align-items:stretch;
    justify-content:center;
  }
  .panel h2{font-size:20px}
  .sub{color:var(--muted);font-size:14px;margin-bottom:6px}

  /* Buttons */
  .btn{
    padding:14px 18px;
    border-radius:12px;
    font-weight:600;
    cursor:pointer;
    border:0;
    display:flex;
    align-items:center;
    gap:12px;
    justify-content:center;
    transition:transform .22s cubic-bezier(.2,.9,.3,1), box-shadow .22s;
    box-shadow: 0 8px 18px rgba(2,6,23,0.35);
    text-decoration:none;
    color:var(--bg1);
    background:linear-gradient(90deg,#ffffff 0%, #f3f6ff 100%);
  }
  .btn:active{transform:translateY(1px)}
  .btn.primary{
    color:white;
    background:linear-gradient(90deg,var(--accent),var(--accent2));
    box-shadow: 0 10px 30px rgba(124,92,255,0.18);
  }
  .btn.ghost{
    background:transparent;
    color:var(--text);
    border:1px solid rgba(255,255,255,0.06);
    box-shadow:none;
  }
  .btn.small{padding:10px 12px;font-size:14px;border-radius:10px}

  /* Action group */
  .actions{display:flex;flex-direction:column;gap:12px}
  .row{display:flex;gap:12px}
  .row .btn{flex:1}

  /* footer small */
  .foot{color:var(--muted);font-size:13px;text-align:center;margin-top:6px}

  /* Floating animated shapes */
  .shape{
    position:absolute;
    filter: blur(28px);
    opacity:0.12;
    transform:translate3d(0,0,0);
  }
  .shape.s1{width:420px;height:420px;right:-120px;top:-60px;background:linear-gradient(135deg,var(--accent),transparent);border-radius:50%}
  .shape.s2{width:260px;height:260px;left:-80px;bottom:-80px;background:linear-gradient(135deg,var(--accent2),transparent);border-radius:40%}

  /* Subtle entrance animations */
  .hero, .panel{animation:fadeUp .7s ease both}
  .hero{animation-delay:0s}
  .panel{animation-delay:.15s}

  @keyframes fadeUp{
    from{opacity:0;transform:translateY(18px) scale(.995)}
    to{opacity:1;transform:translateY(0) scale(1)}
  }

  /* Responsive */
  @media (max-width:980px){
    .wrap{grid-template-columns:1fr; padding:12px}
    .hero{order:2}
    .panel{order:1}
  }
</style>
</head>
<body>
  <div class="wrap" role="main">
    <div class="hero" aria-hidden="false">
      <div class="shape s1" aria-hidden="true"></div>
      <div class="shape s2" aria-hidden="true"></div>

      <div class="brand">
        <div class="logo" aria-hidden="true">
          <!-- simple heart + hands svg -->
          <svg width="30" height="30" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 21s-7.5-4.5-9.2-7.2C1.7 11.8 4 7 7.5 7c2 .1 3.3 1.8 4.5 3.2 1.2-1.4 2.5-3.1 4.5-3.2C20 7 22.3 11.8 21.2 13.8 19.5 16.5 12 21 12 21z" fill="white"/>
          </svg>
        </div>
        <div>
          <div style="font-weight:700;color:linear-gradient(var(--accent),var(--accent2));">Portal de Apoyo</div>
          <div style="font-size:13px;color:var(--muted);margin-top:2px">Conecta donadores con adultos mayores</div>
        </div>
      </div>

      <h1>Bienvenido — Elige cómo continuar</h1>
      <p class="lead">Accede al sistema o regístrate según tu rol. Hemos preparado una experiencia visual y clara para que todo sea sencillo. Escoge una acción y serás redirigido.</p>

      <div class="feature-grid" aria-hidden="false">
        <div class="feat">
          <svg viewBox="0 0 24 24" fill="none"><path d="M12 12c2.2 0 4-1.8 4-4s-1.8-4-4-4-4 1.8-4 4 1.8 4 4 4zM6 20c0-3.3 2.7-6 6-6s6 2.7 6 6" stroke="white" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/></svg>
          <div>
            <div style="font-weight:700">Accesible</div>
            <div style="color:var(--muted);font-size:13px">Diseño pensado para todos</div>
          </div>
        </div>

        <div class="feat">
          <svg viewBox="0 0 24 24" fill="none"><path d="M3 12h18M12 3v18" stroke="white" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/></svg>
          <div>
            <div style="font-weight:700">Seguro</div>
            <div style="color:var(--muted);font-size:13px">Donaciones respaldadas</div>
          </div>
        </div>

        <div class="feat">
          <svg viewBox="0 0 24 24" fill="none"><path d="M12 2l3 7h7l-5.5 4 2 7L12 17l-6.5 3 2-7L2 9h7z" stroke="white" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/></svg>
          <div>
            <div style="font-weight:700">Confiable</div>
            <div style="color:var(--muted);font-size:13px">Adultos mayores verificados con antelación</div>
          </div>
        </div>

        <div class="feat">
          <svg viewBox="0 0 24 24" fill="none"><path d="M12 3v18M3 12h18" stroke="white" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/></svg>
          <div>
            <div style="font-weight:700">No se</div>
            <div style="color:var(--muted);font-size:13px">Cualquier otra cosa buena de la web</div>
          </div>
        </div>
      </div>
    </div>

    <aside class="panel" aria-label="Panel de acciones">
      <div>
        <h2>¿Qué deseas hacer?</h2>
        <div class="sub">Inicia sesión si ya tienes cuenta o regístrate según tu rol.</div>
      </div>

      <div class="actions" role="group" aria-label="Acciones principales">
        <!-- Botón iniciar sesión -->
        <a class="btn primary" id="btn-login" href="login.jsp" title="Ir a iniciar sesión">
          <!-- icon -->
          Iniciar sesión
        </a>

        <div class="row" style="margin-top:6px">
          <!-- Registrarme adulto mayor -->
          <a id="btn-reg-adulto" class="btn ghost" href="registerFormAdultoMayor.jsp" title="Registrarme como adulto mayor">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
              <path d="M12 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM4 20c0-4.4 3.6-8 8-8s8 3.6 8 8" stroke="currentColor" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            Registrarme como adulto mayor
          </a>

          <!-- Registrarme donador -->
          <a id="btn-reg-donador" class="btn ghost" href="registerFormDonador.jsp" title="Registrarme como donador">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
              <path d="M20 12c0 4.4-3.6 8-8 8s-8-3.6-8-8 3.6-8 8-8 8 3.6 8 8z" stroke="currentColor" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
              <path d="M9 12h6M12 9v6" stroke="currentColor" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            Registrarme como donador
          </a>
        </div>
      </div>

        <div class="foot"><a href="">¿No sabes que son estos roles?</a></div>
    </aside>
  </div>

<script>
  // Pequeño enhancement: si el archivo destino no existe, mostramos aviso (solo visual; no puede verificar archivos locales desde el navegador por seguridad).
  // Dejamos los href por defecto para que puedas cambiar las rutas de forma directa.
  (function(){
    // efecto de ligera vibración al pasar el mouse por los botones (accesible y sutil)
    document.querySelectorAll('.btn').forEach(btn=>{
      btn.addEventListener('mouseenter', ()=> btn.style.transform = 'translateY(-4px) scale(1.01)');
      btn.addEventListener('mouseleave', ()=> btn.style.transform = '');
    });

    // ejemplo: si quieres abrir en nueva pestaña en vez de la misma, descomenta las siguientes líneas
    // document.getElementById('btn-login').setAttribute('target','_blank');
    // d

