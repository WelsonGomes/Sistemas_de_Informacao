<?php
    include_once "Model/lista.php";

    $ol_lista = new lista();

    $ol_lista -> adicionarItens("Welson Douglas Oliveira Gomes");
    $ol_lista -> adicionarItens("Brenda Matilde de Souza Oliveira Gomes");
    $ol_lista -> adicionarItens("Caleb Oliveira Gomes");

    echo $ol_lista;

?>