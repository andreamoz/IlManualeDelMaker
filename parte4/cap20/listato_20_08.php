<?php
$consumerKey = 'copiare i codici di twitter';
$consumerSecret = 'copiare i codici di twitter';
$oAuthToken = 'copiare i codici di twitter';
$oAuthSecret = 'copiare i codici di twitter';

$citazioni = array(
	'Chi ha pazienza pu� ottenere ci� che vuole � Benjamin Franklin',
	'Molta gente ti amer� per come sei, molti altri ti odieranno per la medesima ragione � Bob Marley',
	'Il carattere determina il nostro destino - Eraclito',
	'Dove c'\� molta luce, l\'ombra � pi� nera - Johann Wolfgang von Goethe'
);

require_once('twitteroauth.php');

$tweet = new TwitterOAuth($consumerKey, $consumerSecret, $oAuthToken, $oAuthSecret);
$n = rand(0, sizeof($citazioni));
$str = $ citazioni [$n];
$tweet->post('statuses/update', array('status' => 'Il #maker dice: '.$str));

echo "<" . $n . ">"; ?>