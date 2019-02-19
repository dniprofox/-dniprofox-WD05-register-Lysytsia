<?php

if ( !isAdmin() ) {	
	header("Location: " . HOST);
	die();
}

$title = "Удалить сообщение";

$message = R::load('messages', $_GET['id']);

if(isset($_POST['messagesDeleted'])){

	$fileFolderLocation = ROOT.'usercontent/messages/';
	
	$file = $messages->message_file;
	if ( $file != "") {
		$picurl = $fileFolderLocation . $file;
		if ( file_exists($picurl) ) {unlink($picurl);}
	}

	R::trash($messages);
	header('Location:' . HOST . "contacts?result=messagesDeleted");
	exit();
}


// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/messages-delete.php";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>