<?php 

// Хост сайта

define('HOST', 'http://' . $_SERVER['HTTP_HOST'] . '/');

// Физический путь к корневой директории скрипта

define('ROOT', dirname(__FILE__).'/');

$errors = array();
$success = array();

require ROOT . "config.php";
require ROOT . "db.php";
require ROOT . "libs/functions.php";
session_start();

/* ..........................................

РОУТЕР

............................................. */

$uri =  $_SERVER["REQUEST_URI"];//получаем URL,указанный в адресной строке
$uri = rtrim($uri, "/"); // обрезаем / с конца
$uri = filter_var($uri, FILTER_SANITIZE_URL);//очищаем от нежел. элементов
$uri = substr($uri, 1);  // вырезаем первый символ /
$uri = explode('?', $uri); // разбиваем строку.превращая ее в массив с элементом
 //до ? и после ?


// print_r($uri);
// echo "<br><br>";


switch ( $uri[0] ) {
	
	case '':
		require ROOT . "modules/main/index.php";
		break;

	// ::::::::::::::::::: USERS :::::::::::::::::::

	case 'login':
		require ROOT . "modules/login/login.php";
		break;

	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;

	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;

	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		include ROOT . "modules/login/set-new-password.php";
		break;

	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;

	case 'profile-edit':
		include ROOT . "modules/profile/edit.php";
		break;

	// ::::::::::::::::::: CATEGORIES :::::::::::::::::::

	case 'blog/categories':
		include "modules/categories/all.php";
		break;

	case 'blog/category-new':
		include "modules/categories/new.php";
		break;

	case 'blog/category-edit':
		include "modules/categories/edit.php";
		break;


	case 'blog/category-delete':
		include "modules/categories/delete.php";
		break;

	// ::::::::::::::::::: BLOG :::::::::::::::::::

	case 'blog':
		include ROOT . "modules/blog/index.php";
		break;

	case 'blog/post-new':
		include ROOT . "modules/blog/post-new.php";
		break;

	case 'blog/post-edit':
		include ROOT . "modules/blog/post-edit.php";
		break;

	case 'blog/post-delete':
		include ROOT . "modules/blog/post-delete.php";
		break;

	case 'blog/post':
		include ROOT . "modules/blog/post.php";
		break;

	// ::::::::::::::::::: CONTACTS :::::::::::::::::::


	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'contacts-edit':
		include  "modules/contacts/edit.php";
		break;

	case 'messages':
		include  "modules/contacts/messages.php";
		
		break;

	case 'message-delete':
		include "modules/contacts/message-delete.php";
		break;	

		
// ::::::::::::::::::: MAIN / OTHER :::::::::::::::::::

	case 'about':
		include "modules/about/index.php";
		break;

	case 'edit-text':
		include "modules/about/edit-text.php";
		break;

	case 'edit-skills':
		include "modules/about/edit-skills.php";
		break;

	case 'edit-jobs':
		include "modules/about/edit-jobs.php";
		break;

	// ::::::::::::::::::: MAIN / OTHER :::::::::::::::::::

	
	default:
		echo "Main page / 404";
		break;
}




?>