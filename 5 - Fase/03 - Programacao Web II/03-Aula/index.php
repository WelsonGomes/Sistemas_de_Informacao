<?php
    require("autoload.php");


    $Read = new Head("Criando pagina HTML5");
    // Adiciona meta tags ao Head
    $Read -> addMetas(null,"IE=edge",null,"X-UA-Compatible");
    $Read -> addMetas(null,null,"UTF-8");
    $Read -> addMetas("viewport","width=device-width, initial-scale=1.0");

    //$Read -> addMetas('<meta charset="UTF-8">');

    // Cria uma instância da classe Body
    $body = new Body();

    $header = new Header();


    echo(new Html5("pt-br",$Read,""));

?>