<?php
    /*Declaração da classe*/
    class Lista {

        /*Declaração de um vetor de itens*/
        private $lista_itens = [];

        /*Declaração do tipo desta lista*/
        private $tpoLista;

        /*Contructor da classe*/
        function __construct($tpoParametro = 'ol')
        {
            $this -> tpoLista = $tpoParametro;
        }

        /*Adicionar valores no vetor*/
        function adicionarItens($valor)
        {
            $this -> lista_itens[] = $valor;    
        }

        /*Função para criar a lista html*/
        function __toString()
        {
            /*Abertura da teg*/
            $mostrar = "<{$this -> tpoLista}>\n";  

            /*Montagem da lista */
            foreach($this -> lista_itens as $valor) {

                $mostrar .= "<li>{$valor}</li>";

            }

            /*FEchamento da teg*/
            $mostrar .= "</{$this -> tpoLista}>\n";

            /*Retorno da lista*/
            return $mostrar;
        }
    }
?>