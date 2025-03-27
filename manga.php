<?php
require 'Model/pdo.php';
?>

<?php
    $id = intval($_GET['id']);
    $manga = $dbPDO->prepare("SELECT * FROM manga WHERE id = :id");
    $auteur = $dbPDO->prepare("SELECT * FROM auteur WHERE id = :id");
    $personnage = $dbPDO->prepare("SELECT nom_perso FROM personnage WHERE manga_id = :id");
    $manga->bindParam(':id', $id);
    $auteur->bindParam(':id', $id);
    $personnage->bindParam(':id', $id);
    $manga->execute();
    $auteur->execute();
    $personnage->execute();
    
?>

<h1><?php echo $manga->fetch()['titre']; ?></h1>
<p>auteur : <?php echo $auteur->fetch()['nom']; ?><br><br><?php echo $manga->fetch()['description']; ?></p>
<h2>Personnages</h2>
<?php
foreach ($personnage as $perso) { ?>
        <a><?php echo $perso['nom_perso']; ?><br></a>
<?php } ?>