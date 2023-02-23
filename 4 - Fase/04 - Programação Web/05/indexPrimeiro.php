<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        echo"<h1>Código: ".$_GET['codigo']."</h1>";
        echo"<h1>Nome: ".$_GET['nome']." ";
        echo $_GET['sobrenome']."</h1>";
    ?>
    <hr>
    <?php
        $email = '';
        $nome = '';
        if (isset($_POST['enviar'])) {
            if (empty($_POST['email'])) {
                echo 'Informe o email:<br>';
            } else {
                $email = $_POST['email'];
            }
            if (empty($_POST['nome'])) {
                echo 'Informe o nome:<br>';
            } else {
                $nome = $_POST['nome'];
            }
        }
    ?>
    <form method="post">
        <input type="text" name="email" value="<?php echo $email; ?>">
        <input type="text" name="nome" value="<?php echo $nome; ?>">

        <input type="submit" name="enviar" value="Enviar">
    </form>
    
</body>
</html>