<?php
require_once 'inclusion/entete.php';
require_once 'inclusion/menu.php';
?>


<article>
  <?php if (!empty($article)) : ?>

    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <h1><?= $article->titre ?></h1>
          <p><?= $article->contenu ?></p>
        </div>
      </div>
    </div>
  <?php else : ?>
    <div class="message">L'article demandé n'existe pas</div>
  <?php endif ?>
</article>

<hr>

<?php require_once 'inclusion/bas.php';


?>