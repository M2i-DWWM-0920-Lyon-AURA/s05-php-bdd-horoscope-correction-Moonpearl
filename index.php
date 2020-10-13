<?php include('data/links.php'); ?>
<?php include('data/signs.php'); ?>

<?php include('templates/head.tpl.php') ?>

<?php include('templates/header.tpl.php') ?>

<main>
    <section id="horoscope">
        <h2>Horoscope du jour</h2>
        <ol id="sign-grid">
            <?php foreach ($signs as $sign): ?>
            <?php include('templates/sign.tpl.php'); ?>
            <?php endforeach; ?>
        </ol>
    </section>

    <section id="resources">
        <h2>Ressources</h2>
        <ul>
            <?php foreach ($links as $name => $link): ?>
            <?php include('templates/external-link.tpl.php') ?>
            <?php endforeach; ?>
        </ul>
    </section>
</main>

<?php include('templates/footer.tpl.php') ?>
