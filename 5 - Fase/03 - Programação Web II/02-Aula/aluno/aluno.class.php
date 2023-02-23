<?php

    class Aluno {
        private $nome;
        private $sobrenome;
        private $idade;
        private $turma;

        function __construct($nomeExt, $sobreNomeExt, $idadeExt, $turmaExt)
        {
            $this -> nome = $nomeExt;
            $this -> sobrenome = $sobreNomeExt;
            $this -> idade = $idadeExt;
            $this -> turma = $turmaExt;
        }

        function getNome() {
            return $this -> nome;
        }

        function setNome($nomeExt) {
            $this -> nome = $nomeExt;
        }

        function getSobrenome() {
            return $this -> sobrenome;
        }

        function setSobrenome($sobreNomeExt) {
            $this -> nome = $sobreNomeExt;
        }

        function getIdade() {
            return $this -> idade;
        }

        function setIdade($idadeExt) {
            $this -> nome = $idadeExt;
        }

        function getTurma() {
            return $this -> turma;
        }

        function setTurma($turmaExt) {
            $this -> nome = $turmaExt;
        }

        function getNomeCompleto() {
            //echo "Nome completo: {$this -> nome} .. {$this -> sobrenome}";
            return "{$this -> nome} {$this -> sobrenome}";
        }

        function __toString()
        {
            return $this -> nome . " " . $this -> sobrenome;
        }
    }
