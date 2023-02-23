<?php
    include "biblioteca/conexao.php"
?>
<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="css/estilo.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  </head>
  <body">
    <div class="container">
        <div class="row">
            <div class="col-12 bg-secondary">
                <p>Cabeçalho</p>
            </div>
        </div>
        <div class="row">
            <div class="col-2 bg-secondary">
                <?php
                    include "menu.php"
                ?>
            </div>
            <div class="col-10">
                <?php
                    if (isset($_GET['pagina'])) {
                        include $_GET['pagina'].".php";
                    } else {
                        include "home.php";
                    }
                ?>
            </div>
        </div>
        <div class="row">
            <div class="col-12 bg-secondary text-center">
                @DevTi 2022 - Unidavi
            </div>
        </div>
        </div>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

  </body>
</html>