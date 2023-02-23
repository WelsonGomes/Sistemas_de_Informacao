<?php
//conexao
$username = 'root';
$password = '';
try {
    $conn = new PDO('mysql:host=localhost;dbname=aula', $username, $password);
} catch(PDOException $e) {
    echo 'ERROr: ' . $e->getMessage();
}