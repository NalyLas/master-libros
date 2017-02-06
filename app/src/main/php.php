<?php

$server = "localhost";
$user = "root";
$pass = "clave";
$bd = "BDNatalia";

$conexion = mysqli_connect($server, $user, $pass,$bd)
or die("Ha sucedido un error inexperado en la conexion de la base de datos");

$sql = "SELECT * FROM Libros";
mysqli_set_charset($conexion, "utf8"); 

if(!$result = mysqli_query($conexion, $sql)) die();

$libros= array();

while($row = mysqli_fetch_array($result))
{
    $titulo=$row['titulo'];
    $autor=$row['autor'];
    $fecha=$row['fecha'];
    $portada=$row['portada'];
    $sinopsis=$row['sinopsis'];


    $libros[] = array('titulo'=> $titulo, 'autor'=> $autor, 'fecha'=> $fecha, 'portada'=>$portada, 'sinopsis'=>$sinopsis);

}

$close = mysqli_close($conexion)
or die("Ha sucedido un error inexperado en la desconexion de la base de datos");


//Creamos el JSON
$json_string = json_encode($libros);
echo " { libros: ".$json_string." }";

//Si queremos crear un archivo json, sería de esta forma:
/*
$file = 'clientes.json';
file_put_contents($file, $json_string);
*/


?>
