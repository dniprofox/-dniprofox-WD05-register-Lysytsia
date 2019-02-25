<?php 

$title = "Вход на сайт";

 $val = "/[a-zA-Z0-9_-.+]+@[a-zA-Z0-9-]+.[a-zA-Z]+/";

if ( isset($_POST['login'])) {

	if ( trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email' ];
	}
//////превярем email на корректность/////////
	if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
    $errors[] = ['title' => 'Введите корректный Email' ];
}

	if ( trim($_POST['password']) == '') {
		$errors[] = ['title' => 'Введите Пароль' ];
	}
   

	if ( empty($errors)) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']) );

		if ( $user ) {
			if ( password_verify( $_POST['password'], $user->password ) ) {
				$_SESSION['logged_user'] = $user;
				$_SESSION['login'] = "1";
				$_SESSION['role'] = $user->role;

				if ( isset($_POST['rememberMe']) ) {
					ini_set('session.gc_maxlifetime', 31104000); // 60*60*24*30*12 = 1 год
					ini_set('session.cookie_lifetime', 31104000);
				}

				header("Location: " . HOST);
				exit();
				
			} else {
				$errors[] = ['title' => 'Пароль введен неверно' ];
			}
		}

	}
}


// Готовим контент для центральной части
ob_start();
include ROOT . "templates/login/form-login.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
