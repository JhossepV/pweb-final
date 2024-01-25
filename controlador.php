<?php
$conexion = new mysqli("localhost", "root", "", "farmacia");

// Verificar la conexión
if ($conexion->connect_error) {
    die("Error de conexión a la base de datos: " . $conexion->connect_error);
}

if (!empty($_POST["btningresar"])) {
    if (empty($_POST["usuario"]) || empty($_POST["password"])) {
        echo "INGRESE SUS DATOS";
    } else {
        $usuario = $_POST["usuario"];
        $clave = $_POST["password"];

        $sql = $conexion->query("SELECT * FROM usuario WHERE usuario = '$usuario' AND clave = '$clave'");
        
        if ($datos = $sql->fetch_object()) {
            // Iniciar la sesión si las credenciales son válidas
            session_start();
            $_SESSION["usuario_id"] = $datos->id;  // Puedes almacenar más datos de sesión según sea necesario
            header("location: index.php");
        } else {
            echo "ACCESO DENEGADO";
        }
    }
}