<?php
    //deletar
    if (isset($_POST['alterar'])) {
        $sql_alterar_filme = "UPDATE filmes SET nome = :nome, ano = :ano, resumo = :resumo WHERE codigo = :codigo";
        $alterar_filme_prepara = $conn->prepare($sql_alterar_filme);
        if ($alterar_filme_prepara->execute(array(
            "codigo" => $_GET['codigo'],
            "nome" => $_POST['nome'], 
            "ano" => $_POST['ano'], 
            "resumo" => $_POST['resumo']))) {
            echo "<br><div class=\"alert alert-success\" role=\"alert\">
                       Filme alterado com sucesso!
                  </div>
                ";
        } 
    } else {
    $sql_filme = "SELECT * 
                    FROM filmes 
                   WHERE codigo = :codigo";
    $filme_prepara = $conn->prepare($sql_filme);
    $filme_prepara->execute(array("codigo"=>$_GET['codigo']));

    $filme = $filme_prepara->fetch();
?>

<form method="post">
    <table class="table">
        <tr>
            <td>Nome</td>
            <td>
                <!-- NOME -->
                <div class="form-floating mb-3">
                    <input type="text" name="nome" class="form-control" id="floatingInput" value="<?php echo $filme['nome']; ?>" placeholder="Nome do Filme">
                    <label for="floatingInput">Nome</label>
                </div>
            </td>
        </tr>
        <tr>
            <td>Resumo</td>
            <td>
                <!-- DESCRICAO -->
                <div class="form-floating">
                    <textarea class="form-control" name="resumo" placeholder="Digite a descrição do filme" id="floatingTextarea"><?php echo $filme['resumo']; ?></textarea>
                    <label for="floatingTextarea">Resumo</label>
                </div> 
            </td>
        </tr>
        <tr>
            <td>Ano</td>
            <td>
                <!-- Ano -->
                <div class="form-floating mb-3">
                    <input type="text" name="ano" class="form-control" id="floatingInput" value="<?php echo $filme['ano']; ?>" placeholder="Ano do Filme">
                    <label for="floatingInput">Nome</label>
                </div>
            </td>
        </tr>
    </table>


    <input class="btn btn-primary col-12" type="submit" name="alterar" value="Alterar">
    <br><br>
</form>

<?php
    }
?>