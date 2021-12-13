<?php
require_once 'inclusion/entete.php';
require_once 'inclusion/menu.php';
?>


<div class="container" id="contenu">
  <div class="row">
    <?php if (!empty($articles)) : ?>
      <?php foreach ($articles as $article) : ?>
        <div class="col-lg-8 col-md-10 mx-auto">
          <h1><a href="index.php?action=article&id=<?= $article->id ?>"><?= $article->titre ?></a></h1>
          <p><?= substr($article->contenu, 0, 300) . '...' ?></p>
        </div>
      <?php endforeach ?>
    <?php else : ?>
      <div class="message">Aucun article trouvé</div>
    <?php endif ?>
  </div>
</div>

<?php require_once 'inclusion/bas.php';
?>