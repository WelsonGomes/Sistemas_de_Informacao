<?php
    include "lib/dbconn.php";
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce</title>
    <!-- CSS only -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/estilo.css">

</head>
<body > 
<div class="container-fluid" style="padding:0px; background-color: #6b1a88; height:100px;">

  <nav class="navbar navbar-expand-lg navbar-light" >
  <div class="container" style="padding-top: 5px" >
    <a class="navbar-brand" style="color: white;font-weight: 700; font-size: 40px;" href="index.php">E-Commerce</a>
    <button style="border-color: #6b1a88;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white;">Produtos</a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" style="color: #6b81a8;" href="#">Categorias</a></li>
            <li><a class="dropdown-item" style="color: #6b81a8;" href="#">Compras</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" style="color: #6b81a8;" href="#">Carinho</a></li>
          </ul>
        </li>
        
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" style="background-color: #ffffffb3"type="search" placeholder="Pesquisar" aria-label="Search">
        <button class="btn btn-outline-success" style="border-color: white; color: white;" type="submit">Pesquisar</button>
      </form>
      <a class="nav-link" href="login.php" style="color: white; margin: 5px 5px 5px 20px">
          <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
          </svg>
          Login
        </a>
    </div>
  </div>
</nav>

      </div>
      <!-- inicio slide de produtos -->
      <div class="container-fluid p-0" style="height: 300px;">
      <!-- imagens passando aqui -->
      <div>
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel" style="margin-top: 10px;">
          <div class="carousel-indicators indicadores">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner" style="background-color:red; height: 300px;">
          
            <div class="carousel-item active" >
              <div class="icones"> 
                <div>
                  <img class="icones_imagens" src="imagens/informatica_e_acessorios/pc2.jpg" alt="...">
                  <img class="icones_imagens" src="imagens/informatica_e_acessorios/pc2.jpg" alt="...">
                  <img class="icones_imagens" src="imagens/informatica_e_acessorios/pc2.jpg" alt="...">
                </div>
              </div>
              <div class="carousel-caption d-none d-md-block">
                <h5>Confira também</h5>
                <p>Pc gamer</p>
              </div>
            </div>
          
            <div class="carousel-item" >
              <div class="icones"> 
              <div>
                  <img class="icones_imagens" src="imagens/eletronicos/celular.jpg" alt="...">
                  <img class="icones_imagens" src="imagens/eletronicos/celular.jpg" alt="...">
                </div>
              </div>
              <div class="carousel-caption d-none d-md-block">
                <h5>Confira também</h5>
                <p>celulares</p>
              </div>
            </div>

            <div class="carousel-item" >
              <div class="icones"> 
              <div>
                  <img class="icones_imagens" src="imagens/informatica_e_acessorios/pc2.jpg" alt="...">
                  <img class="icones_imagens" src="imagens/informatica_e_acessorios/pc2.jpg" alt="...">
                  <img class="icones_imagens" src="imagens/informatica_e_acessorios/pc2.jpg" alt="...">
                </div>
              </div>
              <div class="carousel-caption d-none d-md-block">
                <h5>Confira também</h5>
                <p>Televisões</p>
              </div>
            </div>

          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
        </div>
      </div>
      <!-- fim do slide de produtos -->
      <div class="container p-3 mb-5" style="min-height: 80vh;" >
      
        <div class="row" >
            
        </div>
        <div class="row" >
          
        
            <!-- Lista de produtos Incio -->
            <div class="col-lg-2 col-sm-12" style="margin-top: 15px;"> <!-- style="margin-left: 90px;" -->
              <!-- lista Inicio -->
              
                <ul class="list-group list-group">
                    <?php
                        $sql = "SELECT * FROM meu_commerce.categorias WHERE categoria_pai is null";
                        $consulta = $conn->prepare($sql);
                        $consulta->execute();
                       //for que vai listar as categorias principais 
                        foreach($consulta as $linha){
                    ?>

                                <li class="list-group-item d-flex justify-content-between " style="border: thin; padding: 0px; margin: 10px 0px 10px 0px;">
                                <!-- LISTA ITENS -->
                                <div class="accordion accordion-flush" id="ac">
                                  <div class="accordion-item">
                                    <div id="flush-heading">
                                                                                                             <!-- ref está apenas para concatenar e nao dar erro por ser so numero -->
                                      <div  style="text-align: start; font-size: 15px;" data-bs-toggle="collapse" data-bs-target="#ref<?php echo $linha['id'];?>" aria-expanded="false" aria-controls="flush-collapse">
                                      <a href="#" class="descItens" style="color: #6b1a88;"><strong><?php echo $linha['descricao'];?></strong> </a>
                        </div>
                        </div>
                                    
                                 
                              <!-- LISTA -->
                              
                                    <div>
                                      
                                      <?php

                                      //listar as sub-categorias
                                      $sql_itens = "SELECT * FROM meu_commerce.categorias WHERE categoria_pai = ".$linha['id'];
                                      $subitens = $conn->prepare($sql_itens);
                                      $subitens->execute();
                                      foreach($subitens as $item){
                                     ?>
                                                  <!-- aqui passa os sub produtos da categoria principal -->
                                                  <div id="ref<?php echo $linha['id'];?>" class="accordion-collapse collapse" aria-labelledby="flush-heading" data-bs-parent="#ac">
                                                    <div class="accordion-body" style="text-align: left; padding: inherit;">
                                                    <i class="fa fa-check" style="color: #4fe15b;"></i> <a style="color:black ; text-decoration:none; font-size: 14px;" 
                                                        onMouseOver="this.style.color= black" onMouseOut="this.style.color='#111'"
                                                        href="?categoria=<?php echo $item['id'];?>"><?php echo $item['descricao'];?>
                                                      </a><br>
                                                    </div>
                                                  </div>
                                               
                                              <?php
                                              }
                          }
                    ?>   
                                    </div>
                                    </div>
                                </div>
                        </li>
              
                </ul>

                
              <!-- lista Final -->
                          
            </div> <!-- final lista de produtos -->
            <!-- Inicio lista de Imgens -->
            <div class="col-9" style="border-radius: 12px; margin-left: 10px;">
              <div class="row">
                <?php
                    if(isset($_GET['categoria'])){
                        $sql = "SELECT p.id as id_produto, 
                                       p.categoria_id, 
                                       p.imagem, 
                                       p.descricao, 
                                       p.resumo, 
                                       p.valor,
                                       c.categoria_pai, 
                                       c.id as id_categoria
                                  FROM produtos p
                            INNER JOIN categorias c
                                    ON p.categoria_id = c.categoria_pai OR p.categoria_id = c.id
                                 WHERE p.categoria_id = {$_GET['categoria']} OR c.categoria_pai = {$_GET['categoria']}
                              ORDER BY RAND()";
                    }
                    else {
                        $sql = "SELECT p.id as id_produto, 
                                       p.categoria_id, 
                                       p.imagem, 
                                       p.descricao, 
                                       p.resumo, 
                                       p.valor
                                  FROM produtos p 
                              ORDER BY RAND()";
                    }
                    $consulta = $conn->prepare($sql);
                    $consulta->execute();
                   
                    foreach($consulta as $linha){?>
                      
                      <main class="cards col-lg-3 col-md-6 col-sm-12 p-2" style="margin-top: 10px; border: none; ">
                        <section class="card card_imagens">
                          <!-- Imagem Item -->
                          <div class="text-center" style="width: 200px; display: flex; height:250px; padding:10px; margin: auto;">
                            <img class="img-fluid" style="width:100%; display: block; margin:auto;" src="<?php echo $linha['imagem'];?>" alt="...">
                          </div>
                          <hr class="hr">
                          <div class="card-body" style="padding-top: 0px; padding-bottom: 0px;">
                            <div >
                              <!-- Nome do produto -->
                              <a style="text-align: center;" class="desc" href="descricao.php"></a>
                              <h6 class="card-title p_title"><?php echo $linha['descricao'];?></h6>
                              
                              <!-- Descrição -->
                              <div>
                                <p class= "card-text p_Descricao"><?php echo $linha['resumo']?></p>
                                <!-- Valor-->
                              
                                <p class="card-text" style="text-align: center;">R$<?php echo $linha['valor']?></p>
                              
                              </div>
                              
                            </div>

                          </div>
                          <a class="btn btn-primary" href="#" role="button" style="display: flex;margin: inherit;justify-content: center; margin:10px">Ver mais</a>
                        </section>
                    </main>
                      
                    <?php
                    }
                ?>
              </div>  <!-- Final da lista de imagens -->
              </div>

            
        </div>
    </div>  
    
    
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
<footer>
<div class="container-fluid" style="padding:0px">
      <nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-top: ridge;">
        <div class="container" >
          <a class="navbar-brand" href="#">E-Commerce</a>
          <a class="navbar-brand" style = "font-size: inherit;" href="#">E-MAIL E-Commerce@gmail.com</a>
          <a class="navbar-brand" style = "font-size: inherit;" href="#">whatsapp (47) 12345-1234</a>
        </div>
    </div>
</footer>
</html>

