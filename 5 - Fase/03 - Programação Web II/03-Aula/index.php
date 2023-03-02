<?php
    require("autoload.php");

    $head = new HeadClasse("Criando pagina HTML5");

    $head->addMetas('<meta charset="UTF-8">');

    echo(new HTML5Classe("pt-br",$head,""));

?>