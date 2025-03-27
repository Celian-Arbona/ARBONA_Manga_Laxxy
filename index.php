<?php
require 'Model/pdo.php';
?>

<ul>
    <?php
    $mangas = $dbPDO->prepare("SELECT annee, titre, id FROM manga ORDER BY annee");
    $mangas->execute();

    foreach ($mangas as $manga) { ?>
        <li><u><a href="manga.php?id=<?php echo $manga['id']; ?>"><?php echo htmlspecialchars($manga['titre']); ?></a>
        </u><br><?php echo htmlspecialchars($manga['annee']); ?></li>
    <?php } ?>
</ul>