<?php
require 'Model/pdo.php';
?>

<ul>
    <?php
    $mangas = $dbPDO->prepare("SELECT annee, titre FROM manga ORDER BY annee");
    $mangas->execute();

    foreach ($mangas as $manga) { ?>
        <li><u><?php echo htmlspecialchars($manga['titre']); ?></u><br><?php echo htmlspecialchars($manga['annee']); ?></li>
    <?php } ?>
</ul>