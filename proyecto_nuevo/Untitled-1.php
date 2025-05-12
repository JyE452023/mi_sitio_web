<?php
// 1. Credenciales de la base de datos
$host = 'localhost'; // o la dirección de tu servidor de base de datos
$usuario = 'root'; // tu nombre de usuario de la base de datos
$contrasena = ''; // tu contraseña de la base de datos
$nombre_base_datos = 'registro_estudiantes'; // el nombre de la base de datos que creaste

// 2. Conexión a la base de datos
$conexion = new mysqli($host, $usuario, $contrasena, $nombre_base_datos);

// Verificar la conexión
if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}

// Establecer el conjunto de caracteres a utf8 (recomendado para evitar problemas de codificación)
if (!$conexion->set_charset("utf8")) {
    printf("Error al establecer el conjunto de caracteres: %s\n", $conexion->error);
    exit();
}

// 3. Ejemplo de consulta para obtener los estudiantes
$sql_estudiantes = "SELECT id, rude, nombre FROM estudiantes";
$resultado_estudiantes = $conexion->query($sql_estudiantes);

// 4. Mostrar los datos de los estudiantes (ejemplo)
if ($resultado_estudiantes->num_rows > 0) {
    echo "<h2>Lista de Estudiantes:</h2>";
    echo "<ul>";
    while ($fila = $resultado_estudiantes->fetch_assoc()) {
        echo "<li>RUDE: " . $fila["rude"] . ", Nombre: " . $fila["nombre"] . "</li>";
    }
    echo "</ul>";
} else {
    echo "No se encontraron estudiantes.";
}

// 5. Ejemplo de consulta para obtener las notas de un estudiante específico
$rude_estudiante = '819601120142086'; // Ejemplo: RUDE del estudiante del que quieres obtener las notas
$sql_notas = "SELECT e.nombre, n.trimestre, n.materia, n.nota 
              FROM estudiantes e
              INNER JOIN notas n ON e.id = n.estudiante_id
              WHERE e.rude = '$rude_estudiante'"; // Importante: Usar prepared statements en producción
$resultado_notas = $conexion->query($sql_notas);

// Mostrar las notas del estudiante (ejemplo)
if ($resultado_notas->num_rows > 0) {
    echo "<h2>Notas del Estudiante con RUDE: $rude_estudiante</h2>";
    while ($fila_nota = $resultado_notas->fetch_assoc()) {
        echo "<p><strong>Nombre:</strong> " . $fila_nota["nombre"] . "</p>";
        echo "<ul>";
        echo "<li>Trimestre: " . $fila_nota["trimestre"] . ", Materia: " . $fila_nota["materia"] . ", Nota: " . $fila_nota["nota"] . "</li>";
        echo "</ul>";
    }
} else {
    echo "No se encontraron notas para el estudiante con RUDE: $rude_estudiante";
}

// 6. Cerrar la conexión
$conexion->close();
?>
