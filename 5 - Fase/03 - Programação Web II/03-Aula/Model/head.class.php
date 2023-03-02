<?php
    class HeadClasse {
        private $metaUTF = [];
        private $titulo;

        function addMetas($meta){

            $this->metaUTF = $meta;
            
        }

        function __construct($title)
        {
            $this->titulo = $title;
        }

        function __toString()
        {

            $resultado = "<head>";
            
            foreach($this->metaUTF as $itensMeta){
            
                $resultado = $resultado. $itensMeta; 
            
            }
            
            $resultado = $resultado. $this->titulo;
            
            $resultado = $resultado. "</head>";
            
            return $resultado;
        }
    }
?>
