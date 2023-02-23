
<?php
    if (isset($_POST['gravar'])) {
        $sql_inserir_filme = "INSERT INTO filmes (nome, resumo, ano) VALUES (:nome, :resumo, :ano)";
        $filme_gravar_prepara = $conn->prepare($sql_inserir_filme);
        if ($filme_gravar_prepara->execute(array("nome" => $_POST['nome'], "resumo" => $_POST['resumo'], "ano" => $_POST['ano']))) {
                echo "<br><div class=\"alert alert-success\" role=\"alert\">
                       Filme cadastrado com sucesso!
                    </div>";
        };
    } else {

?>

<h1>Cadastro de Filmes</h1>

<form method="post">
    <!-- NOME -->
    <div class="form-floating mb-3">
        <input type="text" name="nome" class="form-control" id="floatingInput" placeholder="Nome do Filme">
        <label for="floatingInput">Nome</label>
    </div>
    <!-- ANO -->
    <div class="form-floating mb-3">
        <input type="text" name="ano" class="form-control" id="floatingInput" placeholder="Ano do Filmes">
        <label for="floatingInput">Ano</label>
    </div>
    <!-- DESCRICAO -->
    <div class="form-floating">
        <textarea class="form-control" name="resumo" placeholder="Digite o resumo do filme" id="floatingTextarea" rows="500"></textarea>
        <label for="floatingTextarea">Resumo</label>
    </div>
    <br>
    <div class="form-floating">
        <input class="btn btn-primary col-12" type="submit" name="gravar" value="Gravar">
        </div>
    <br>
</form>

<?php
    }
?>