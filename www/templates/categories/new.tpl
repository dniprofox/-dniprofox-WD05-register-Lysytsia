
<!-- 
<?php 

echo "<pre>";
print_r($_POST);
echo "</pre>";

?>  -->

<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-1">
				<div class="title-1 m-0 pt-60">Создать новую категорию</div>
			 
			 <?php require ROOT . "templates/_parts/_errors.tpl" ?>
				
				
				<form action="<?=HOST?>blog/categories-new" method="post" class="	
					form mb-100 pb-20 pt-35">	

					<div class="fieldset">
						<label>

							<div class="fieldset__title">Название категории</div>

							<input name="catTitle" class="input" placeholder="Введите название"/>

						</label>
					</div>


					<div class="row">
						<div class="col-md-auto pr-10">
							
							<input type="submit" name="catNew" class="button button--save" value="Сохранить">

						</div>

						<div class="col-md-auto pl-10">

							<a class="button" href="<?=HOST?>blog/categories">Отмена</a>

						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
