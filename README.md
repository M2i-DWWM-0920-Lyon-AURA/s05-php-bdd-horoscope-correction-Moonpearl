# Horoscope, le retour de la vengeance

## Travail à réaliser

### 1. Mettre en place la base de données

Créer une base de données avec une table **signs** prête à accueillir les données des douze signes. Exécuter les requêtes qui permettent de remplir cette table.

### 2. Etablir la connexion avec la base de données

Configurer PDO pour pouvoir envoyer des requêtes dans la base de données depuis PHP. Envoyer une première requête **SELECT** sur la table **signs** et afficher le résultat dans un **var_dump** afin d'en tester le bon fonctionnement.

### 3. Afficher les signes du zodiaque

A partir des _templates_ déjà existants et des données de la table **signs**, reproduire l'affichage obtenu avec les données écrites en dur dans le fichier **data/signs.php**. Ce fichier doit disparaître et être remplacé entièrement par la base de données.

### 4. Afficher différents horoscopes pour chaque signe en fonction de la date

Créer une nouvelle table **horoscopes** prête à accueillir le texte de chaque horoscope ainsi qu'une date. Chaque horoscope doit être associé à un élément de la table **signs**. La table **horoscopes** doit contenir au total 24 enregistrements (2 horoscopes pour chaque signe, un daté du jour, l'autre daté de la semaine précédente) _voir la section **Textes**_. La page doit afficher uniquement les horoscopes du jour.

#### Bonus

Parvenir à ce résultat en utilisant une seule requête SQL.

#### Bonus 2

Ajouter une liste déroulante (`<select>`) permettant de choisir soit la date du jour, soit la date de la semaine dernière. La page doit choisir les horoscopes associés à la date choisie par l'utilisateur.

## Textes

### Horoscope de la semaine précédente

- Bélier

    > Votre code sera truffé d'erreurs cette semaine. Mais vous gardez confiance: l'ordinateur va finir par céder.

- Taureau

    > Vous ne croyez pas en l'astrologie de toute façon, donc si vous lisez ça, c'est que vous n'êtes pas Taureau, mais plutôt Balance.

- Gémeaux

    > Arrêtez de maudire vos collaborateurs qui cassent votre code à chaque fois, et rappelez-vous que vous êtes seul à travailler sur ce projet.

- Cancer

    > Le télétravail rend votre vie de couple compliquée. Evitez d'amener l'ordinateur dans votre lit, il pourra survivre la nuit dans le salon.

- Lion

    > Tout vous réussit cette semaine: le code est impeccable, le projet avance à grands pas. N'oubliez pas de payer les développeurs qui travaillent pour vous.

- Vierge

    > Vous mettez les petits plats dans les grands: code commenté, externalisation sous forme de webservices, refactorisation au top... Pensez juste à tester votre code de temps en temps pour vérifier qu'il fonctionne.

- Balance

    > Vous vous sentez concerné par l'ambiance dans l'équipe du projet, du coup vous lisez les horoscopes de tout le monde. N'oubliez pas que les Taureau ne croient pas à l'astrologie, de toute façon.

- Scorpion

    > Vous êtes titillé par une envie de supprimer tout le code du projet et de tout recommencer <em>from scratch</em>. Attendez plutôt le mois prochain. L'alignement des planètes sera meilleur, et surtout, la deadline sera passée.

- Sagittaire

    > Vous refusez de vivre selon les diktats des bonnes pratiques et vous décidez de vous lancer dans le développement de votre propre langage. Puis vous réalisez que votre langage a aussi ses bonnes pratiques, et vous retournez faire du Javascript, comme tout le monde.

- Capricorne

    > Vous êtes angoissé par la deadline du projet qui se rapproche dangereusement. Prenez des vitamines et du magnésium. Et méfiez-vous des collègues Scorpion.

- Verseau

    > Vous vous êtes lancé dans un grand débat sur les bienfaits de l'immutabilité des objets pour prouver par A+B à vos collègues que le Javascript c'est naze. Ils sont retournés faire du PHP.

- Poissons

    > Votre code est tellement parfait que vous vous sentez atteindre la félicité, vous avez franchi une étape dans votre voyage cosmique, vos chakras sont grand ouverts. Du coup, vous n'osez plus y toucher.

### Horoscope du jour

- Bélier

    > Ca y est, vous n'avez plus d'erreur à l'écran. Par contre, votre ordinateur ne démarre plus, à force d'avoir pris des coups. Mettez-vous à la camomille.

- Taureau

    > Votre collègue Balance est éperdument amoureuse de vous et nous a demandé un coup de pouce. Faites un effort et lisez votre horoscope de temps en temps, mince.

- Gémeaux

    > Cette semaine, vous attendez fébrilement que votre collaborateur <em>pushe</em> son code afin de pouvoir enfin effectuer votre livraison. N'oubliez pas que vous êtes toujours le même nombre de collaborateurs que la semaine dernière.

- Cancer

    > Vous avez oublié de mettre le chauffage dans le salon, votre ordinateur a attrapé un virus. Pensez à lui mettre un masque quand vous l'emmenez à l'extérieur, 135 € c'est une somme tout de même.

- Lion

    > Votre équipe conteste votre leadership, pourtant d'une perfection irréprochable. Vous devriez organiser une réunion et prendre le temps nécessaire pour leur expliquer, avec tact et bienveillance, pourquoi ils se trompent complètement.

- Vierge

    > Vous avez tellement découpé votre code qu'il y a autant de fichiers que de lignes de code. N'oubliez pas qu'il n'y a pas de limite de caractères. Vous devriez peut-être arrêter Twitter.

- Balance

    > L'élu(e) de votre coeur vous ignore royalement, et n'a d'yeux que pour son éditeur de code. Pensez à nous envoyer un message par le courrier des lecteurs pour arranger ça. Et mettez-lui notre site en page d'accueil.

- Scorpion

    > Vous avez supprimé tout le code du projet et recommencé à zéro, une semaine avant la deadline. Votre collègue Capricorne a fait un infarctus. Du coup vous avez dû passer des nuits blanches à tout refaire tout seul. On ne peut vraiment compter sur personne, c'est fou ça.

- Sagittaire

    > Vous avez refusé d'utiliser Git cette semaine, afin d'affirmer votre indépendance et votre liberté de choix. Vous avez perdu une semaine de code, et votre supérieur vous a viré. Du coup, vous êtes vraiment libre.

- Capricorne

    > Prenez du temps pour vous recentrer et réévaluer vos objectifs professionnels. Faites preuve de diplomatie envers vos collègues, avec qui les choses risquent de s'envenimer cette semaine. Santé: attention à votre coeur.

- Verseau

    > Vous avec appris que le Typescript proposera peut-être bientôt des objets immutables. Tout excité, vous êtes allé apprendre la nouvelle à vos collègues pour discuter des implications dans vos travaux futurs. Ils vous écoutent tranquillement en continuant à coder en PHP.

- Poissons

    > Vous allez être convoqué à la gendarmerie, parce que votre ex-femme a porté plainte contre vous. Fort heureusement, vous pouvez compter sur la bienveillance des gens de votre ancienne école pour vous soutenir dans cette épreuve. Haha, non, je déconne.
