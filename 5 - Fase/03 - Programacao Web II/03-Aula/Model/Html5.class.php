<?php
    class Html5 {

        /*Declaração de propriedades */
        private $lingua;

        private $head;

        private $body;

        /*Declaração do construtor */
        function __construct($linguagem, $head, $body)
        {
            $this -> lingua = $linguagem;

            $this -> head = $head;

            $this -> body = $body;
        }

        /*Declaração da criação */
        function __toString()
        {
            $resultado = "<!DOCTYPE html> <html lang=". $this -> lingua.">".$this -> head.  $this -> body. "</html>";

            return $resultado;

        }
    }
?>