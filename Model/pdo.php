<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "mangas";

try {
    $dbPDO = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Configuration de PDO pour générer des exceptions en cas d'erreur
    $dbPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connexion réussie à la base de données<br><br>";
} catch(PDOException $e) {
    echo "La connexion a échouée : " . $e->getMessage() . "<br><br>";
}

?>