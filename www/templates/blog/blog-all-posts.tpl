<!-- <?php 

// echo "<pre>";
// print_r($posts);
// echo "</pre>";

 ?> -->



	<div class="main-wrapper">
		<div class="container container--center">
			<div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">

				<div class="title-1">Блог веб-разработчика</div>

				<div class="section-ui">

					<a class="button button--edit" href="<?=HOST?>blog/post-new"> Добавить пост</a>
					
				</div>
			</div>

			<div class="row pb-35">

				<?php foreach ($post as $posts) { ?>

						<div class="col-4">
						<div class="section-ui">
						<div class="card card-post">

							<img class="card-post__img" src="<?=HOST?>/usercontent/blog/
							<?=$post->post_img_small?>" alt="<?=$post->title?>" />
							<div class="title-4"><?=$post->title?></div>
							
							<a class="button" href="#">Читать</a>
						</div>
					</div>
				</div>


			<?php	} ?>			 


				

			
			</div>
		</div>
	</div>

	