<!doctype html>
<html lang="fr">
    <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="style.css" />
        <title>Mon BLOG à TICKETING</title>
    </head>
    <body>
        <div id="global">
            <header>
                <a href="index.php"><h1 id="titreBlog">Mon TICKETING</h1></a>
                <p>Je vous souhaite la bienvenue sur ce modeste TICKET.</p>
            </header>
            <div id="contenu">
                <?php
                $bdd = new PDO('mysql:host=localhost;dbname=monticketing;charset=utf8',
                        'monblog_user', 'motdepasse');
                $tickets = $bdd->query('select * from T_TICKET inner join T_ETAT
                ON T_ETAT.ETAT_ID = T_TICKET.ETAT_ID;');
                foreach ($tickets as $ticket):
                    ?>
                    <article>
                        <header>
                            <h1 class="titreTicket"><?= $ticket['titre'] ?></h1>
                            <time><?= $ticket['date'] ?></time>
                        </header>
                        <p><?= $ticket['contenu'] ?></p>
                    </article>
                    <hr />
                <?php endforeach; ?>
            </div> <!-- #contenu -->
            <footer id="piedBlog">
                TICKET réalisé avec PHP, HTML5 et CSS.
            </footer>
        </div> <!-- #global -->
    </body>
</html>
