<?php
    class Header {

        private $listaHeader = [];
        private $id;
        private $class;

        function addItemHeader($itens){
            $this->listaHeader[] = $itens;
        }

        function __construct($Class = null, $Id = null)
        {
            $this->class = $Class;
            $this->id = $Id;
        }

        function __toString()
        {
            $resposta = "<header ".($this->id == null ? null : "id=\"{$this->id}\"").($this->class == null ? null : "class=\"{$this->class}\"").">";

            $div = new Div($this->listaHeader);

            $resposta.=$div;
            $resposta = $resposta."</header>";
            return $resposta;
        }
    }
?>