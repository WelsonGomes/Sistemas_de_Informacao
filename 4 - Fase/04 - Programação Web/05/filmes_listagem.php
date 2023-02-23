<h1>lista de filmes</h1>

<a class="btn btn-primary" href="?pagina=filmes_cadastro">Cadastro</a>
<br><br>

<?php
    $sql_filmes = "SELECT * FROM filmes";
    $filmes_prepara = $conn->prepare($sql_filmes);
    $filmes_prepara->execute();

    
?>

<table class="table table-striped">
    <thead>
        <tr>
            <th>#</th>
            <th>nome</th>
            <th>Resumo</th>
            <th>Ano</th>
            <th>Ação</th>
        </tr>
    </thead>
    <tbody>
        <?php
            while ($filme = $filmes_prepara->fetch()) {
                echo "<tr>";
                echo "<td>".$filme['codigo']."</td>";
                echo "<td>".$filme['nome']."</td>";
                echo "<td>".$filme['resumo']."</td>";
                echo "<td>".$filme['ano']."</td>";
                echo "
                    <td>
                        <a class=\"btn btn-info col-12\" href=\"?pagina=filmes_editar&codigo={$filme['codigo']}\">Editar</a><br><br>
                        <a class=\"btn btn-danger col-12\" href=\"?pagina=filmes_deletar&codigo={$filme['codigo']}\">Deletar</a><br><br>
                    </td>";
                echo "</tr>";
            }
        ?>
    </tbody>
</table>