 <?php

    try {
        $db = new PDO('mysql:host=localhost;dbname=films', 'root', '');
        }
    catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage() . "<br/>";
        die();
    }

    //ICI ON VA ALLER RECUPERER DES INFORMATIONS DANS 3 TABLES ET CE GRACE AUX CRITERES DE JOINTURE

    //ON PREPARE LA REQUETE EN LUI DISANT QUELS CHAMPS NOUS VOULONS
    $lister = $db->prepare('SELECT * FROM CLIENT
     INNER JOIN location ON client.id = location.id_client
     INNER JOIN film ON location.id_film = film.id ');
     //ON EXECUTE LA REQUETE
    $lister->execute();
    //ON PASSE TOUS LES RESULTAT DANS UN TABLEAU
    $lister = $lister->fetchAll(PDO::FETCH_ASSOC);
   //var_dump($lister);
    //ON FAIT LA BOUCLE QUI AFFICHE TOUS LES RESULTATS
    foreach($lister as $info){
        echo "<br/>".$info['prenom']." a loué ".$info['nom_film']." du ".$info['date_dbt_location']." au ".$info['date_fin_location'];
    }




//     //RETROUVER TOUS LES FILMS LOUE PAR UN CLIENT PARTICULIER
    $lister = $db->prepare('SELECT * FROM CLIENT
     INNER JOIN location ON client.id = location.id_client
     INNER JOIN film ON location.id_film = film.id 
     WHERE client.id = 1');
     //ON EXECUTE LA REQUETE
    $lister->execute();
    //ON PASSE TOUS LES RESULTAT DANS UN TABLEAU
    $lister = $lister->fetchAll(PDO::FETCH_ASSOC);
   // var_dump($ajouter);
    //ON FAIT LA BOUCLE QUI AFFICHE TOUS LES RESULTATS
    foreach($lister as $info){
        echo "<br/>".$info['prenom']." ".$info['nom_client']." a loué ".$info['nom_film']." du ".$info['date_dbt_location']." au ".$info['date_fin_location'];
    }

?>