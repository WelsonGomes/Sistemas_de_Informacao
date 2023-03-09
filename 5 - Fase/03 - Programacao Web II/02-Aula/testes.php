<?php

    include_once "aluno/aluno.class.php";
    
    $aluno1 = new Aluno('Caleb', 'Oliveira Gomes', 29,'BSN 2023');
    //$aluno1 -> setNome('Caleb');
    //$aluno1 -> setSobrenome('Oliveira Gomes');
    //$aluno1 -> setIdade(29);
    //$aluno1 -> setTurma('BSN 2023');

    print_r($aluno1);

    echo "O nome do aluno é: {$aluno1 -> getNomeCompleto()}";