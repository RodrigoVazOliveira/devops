<?php 

echo 'Testando a conexao com o banco de dados! <br />';

$host = '192.168.1.18';
$username = 'phpuser';
$password = 'pass';
$configConnection = "mysql:host={$host};";

try {
	$connection = new \PDO($configConnection, $username, $password);
	echo 'conexao estabelecida com sucesso ao banco de dados MySQL! <br />';
} catch (\PDOException $e) {
	echo "nao foi possivel conectar ao banco de dados {$e->getMessage()} <br />";
	die();
}

?>
