<?php

    class Div{

        private $class;
        private $id;
        private $listaItens = [];

        function __construct($Class = null, $Id = null)
        {
            $this->class = $Class;
            $this->id = $Id;
        }

        function addItensDiv($Item){
            $this->listaItens[] = $Item;
        }

        function __toString()
        {
            $resposta = "<div ".($this->id == null ? null : "id=\"{$this->id}\"").($this->class == null ? null : "class=\"{$this->class}\"").">"; 
            
            $lista = new Div($this->listaItens);

            $resposta .= $lista;

            $resposta .= "</div>";

            return $resposta;  
        }

    }

?>