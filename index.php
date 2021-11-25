<?php
    $salida
    if(isset($_POST['seve'])){
        $nombre = $_POST['name'];
        $sintaxis = $_POST['descripcion'];
    
        $archivo = fopen("$nombre","a") or die ("Error al crear archivo ");
        fwrite($archivo,$nombre);
        
        $comando = "./prueva < $nombre";
        shell_exec($comando,$salida);
        
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./node_modules/bootstrap/dist/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <title>Compilador BMLang</title>
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="#">BMLang</a>
  </div>
</nav>
<div class="container" style="padding-top: 5%;">
    <form action="./index.php" method="post">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-cursor-text"></i></span>
            <input type="text" name="name" class="form-control" placeholder="nombre archivo" aria-label="Username" aria-describedby="basic-addon1">
        </div>
        <div class="input-group">
            <span class="input-group-text"><i class="bi bi-list-columns-reverse"></i></span>
            <textarea class="form-control" name="descripcion" placeholder="contenido" aria-label="With textarea"></textarea>
        </div>
        <button type="submit" name="save" class="btn btn-success">Compilar</button>
    </form>
    <div class="container">
        <p>
            <?php
                var_dump($salida);;
            ?>
        </p>
    </div>
</div>
</body>
</html>