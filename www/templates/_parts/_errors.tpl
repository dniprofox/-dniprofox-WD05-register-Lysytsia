<?php 

	// echo "<pre>";
	// print_r($errors);
	// echo "</pre>";


	foreach ($errors as $error) {
		if ( count($error) == 1) {  ?>
			
			<!-- Однострочная ошибка -->

			<div class="error"><?=$error['title']?></div>

<?php 	} else if ( count($error) == 2 ) { ?>
			
			<!-- Ошибка с описанием -->

			<div class="error-with-desc"><?=$error['title']?></div>

			<div class="error-with-desc-bottom">
				<div class="error-with-desc-text">

					<?=$error['desc']?>

				</div>	
			</div>

<?php 
		}
	}

 ?>