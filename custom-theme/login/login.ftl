<!-- Importa los archivos de estilo y JavaScript necesarios -->
<link href="${url.resourcesPath}/css/login.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"> <!-- Agrega esta línea -->

<!-- Fondo dinámico y animaciones -->
<style>
body {
    font-family: 'Roboto', sans-serif; /* Cambia la fuente del cuerpo */
    background-image: url('https://i.imgur.com/EpBeyKS.png') !important;
    background-size: cover !important;
    background-position: center center !important;
    background-repeat: no-repeat !important;
    height: 100vh;
    margin: 0;
    animation: backgroundAnimate 10s ease-in-out infinite alternate;
}

.theme-overlay.login {
    background-color: rgba(255, 255, 255, 0.9);
    border-radius: 15px;
    padding: 30px;
    max-width: 600px;
    height: 400px;
    width: 35%;
    margin: auto;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    font-size: 0.9rem;
    animation: fadeIn 1.5s ease-out forwards;
    opacity: 0;
    position: relative;
    top: 80px;
}

@keyframes fadeIn {
    0% { opacity: 0; transform: translateY(-50px); }
    100% { opacity: 1; transform: translateY(0); }
}

.product-name {
    font-size: 3rem;
    font-weight: bold;
    color: #941b1b; /* Cambiado a color 941b1b */
    text-align: center;
    margin-bottom: 30px;
}

.product-tagline {
    font-size: 1.5rem;
    color: #6c757d;
    text-align: center;
}

.product-community {
    font-size: 1rem;
    color: black;
    text-align: center;
    margin-bottom: 20px;
}

form {
    font-size: 0.8rem;
}

input.form-control {
    font-size: 0.8rem; /* Tamaño de fuente para los campos de entrada */
}

input.form-control::placeholder { /* Estilo para los placeholders */
    font-size: 0.7rem; /* Tamaño de fuente más pequeño para los placeholders */
    color: #6c757d; /* Color del placeholder */
}

.custom-btn {
    background-color: #941b1b !important;
    border-color: #941b1b !important;
    font-size: 1.0rem !important;
    font-weight: bold; /* Establece el texto en negrita */
    padding: 8px 16px !important;
    border-radius: 10px !important;
    transition: background-color 0.3s ease, transform 0.2s ease;
    width: 50%; /* Ajusta el ancho al 50% */
    max-width: 250px;
    margin: 0 auto;
    color: #ffffff; /* Cambiado a color blanco */
}

.custom-btn:hover {
    background-color: #e07b1a !important;
    transform: scale(1.1);
}
</style>

<!-- Contenedor principal de login -->
<div class="container theme-overlay login">
    <div class="Logo text-center">
        <img src="https://i.imgur.com/fcro2xF.png" alt="Logo Prueba" class="img-fluid">
    </div>
    <div class="product-name">Gobernación de Nariño</div>
    <div class="product-tagline">Tu portal de servicios y gestión</div>
    <div class="product-community">Secretaría de Educación Departamental</div>

    <#if error??>
    <div class="alert alert-danger" role="alert">
        Error en la autenticación. Inténtalo de nuevo.
    </div>
    </#if>

    <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
        <div class="form-group">
            <input type="text" id="username" name="username" value="${username!}" class="form-control" placeholder="Nombre de usuario" required autofocus> <!-- Cambiado el placeholder -->
        </div>
        <div class="form-group">
            <input type="password" id="password" name="password" class="form-control" placeholder="Contraseña" required> <!-- Cambiado el placeholder -->
        </div>
        <div class="form-group">
            <button type="submit" id="kc-login" class="btn btn-lg btn-warning custom-btn">Iniciar Sesión</button>
        </div>
    </form>
</div>

<div class="text-center py-3" style="color: white; padding: 1rem 0; position: fixed; bottom: 50px; left: 50%; transform: translateX(-50%);">
    © 2024 Gobernación de Nariño. Secretaría de Educación Departamental.
</div>

<!-- Dependencias de JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
