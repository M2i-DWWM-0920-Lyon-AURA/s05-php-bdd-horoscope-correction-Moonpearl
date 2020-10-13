<?php

$dbh = new PDO('mysql:host=localhost;dbname=horoscope', 'root', 'root');

$stmt = $dbh->query("
SELECT `horoscopes`.`id`, `horoscopes`.`description`, `horoscopes`.`sign_id`, `signs`.`name` AS `sign_name`, `signs`.`image` AS `sign_image`, `signs`.`start_date` AS `sign_start_date`, `signs`.`end_date` AS `sign_end_date`
FROM `horoscopes`
JOIN `signs`
ON `horoscopes`.`sign_id` = `signs`.`id`
WHERE `date` = '2020-10-13'
");

$horoscopes = $stmt->fetchAll();

?>

<?php include('data/links.php'); ?>

<?php include('templates/head.tpl.php') ?>

<?php include('templates/header.tpl.php') ?>

<main>
    <section id="horoscope">
        <h2>Horoscope du jour</h2>
        <ol id="sign-grid">
            <?php foreach ($horoscopes as $horoscope): ?>
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
