<?php

$permissions = [
    4 => [
        'status' => 'commercant',
        'titre' => 'Mon compte',
    ],
    5 => [
        'status' => 'administateur',
        'titre' => 'Gestion des comptes',
    ],
    6 => [
        'status' => 'product owner',
        'titre' => 'Accueil',
    ],
];

?>

<?php if ($_SESSION['niveau'] > 1) : ?>
    <section class="privileges">
        <p>Vous avez les permissions <?= $permissions[$_SESSION['niveau']]['status'] ?></p>
    </section>
<?php endif; ?>

<nav>
    <a href="/pages/home.php">
        <?php include ROOT . "/includes/components/logo.php" ?>
    </a>
    <p class="privileges__title"><?= $permissions[$_SESSION['niveau']]['titre'] ?></p>

    <div class="user">
        <source>
        <div class="user__pic">
            <a href="/pages/login.php">
                <?php if ($_SESSION['niveau'] == 1) : ?>
                    <p>CO</p>
                <?php elseif ($_SESSION['niveau'] == 2) : ?>
                    <p>Ad</p>
                <?php elseif ($_SESSION['niveau'] == 3) : ?>
                    <p>PO</p>
                <?php endif; ?>
            </a>
        </div>
        </source>
    </div>
</nav>