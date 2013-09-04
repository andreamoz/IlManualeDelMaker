<?php
$consumerKey = 'copiare i codici di twitter';
$consumerSecret = 'copiare i codici di twitter';
$oAuthToken = 'copiare i codici di twitter';
$oAuthSecret = 'copiare i codici di twitter';

$citazioni = array(
	'Chi ha pazienza può ottenere ciò che vuole – Benjamin Franklin',
	'Molta gente ti amerà per come sei, molti altri ti odieranno per la medesima ragione – Bob Marley',
	'Il carattere determina il nostro destino - Eraclito',
	'Dove c'\è molta luce, l\'ombra è più nera - Johann Wolfgang von Goethe'
);

require_once('twitteroauth.php');

$tweet = new TwitterOAuth($consumerKey, $consumerSecret, $oAuthToken, $oAuthSecret);
$n = rand(0, sizeof($citazioni));
$str = $ citazioni [$n];
$tweet->post('statuses/update', array('status' => 'Il #maker dice: '.$str));

echo "<" . $n . ">"; ?>