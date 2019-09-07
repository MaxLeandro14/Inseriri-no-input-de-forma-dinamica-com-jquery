<?php 
	include_once 'conexao.php';
	header("Content-Type: text/html; charset=utf-8");
	$query = "
		SELECT * FROM estado GROUP BY nome ORDER BY nome ASC
	";
	$conn = getConexao();
	$statement = $conn->prepare($query);
	$statement->execute();
	$result = $statement->fetchAll();
	$estados = '';
	foreach ($result as $item) {
		$estados .= '<option value="'.$item["id_cat"].'">'.$item["nome"].'</option>';
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Botão</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="./asstes/bootstrap.min.css">
	<style type="text/css">
		.box {
			display: block;
			max-width: 600px;
			margin: 0 auto;
			margin-top: 70px;
			box-sizing: border-box;
		}
		.aparecer {
			display: none;
		}

	</style>
</head>
<body>
	<div class="box">
		<form>
			<div class="row">
			<div class="col-md-9">
				<div class="form-group">
				    <label for="estado">Estados</label>
				    <select name="estado" class="form-control action" id="estado">
				      <option  value="">Selecione Estado</option>
				      <?= $estados; ?>
				      
				    </select>
				 </div>
			</div>
		</div>

				<div class="row">
			<div class="col-md-9">
				<div class="form-group">
				    <label for="municipio">Municipios</label>
				    <select multiple name="municipio" class="form-control action" id="municipio">
								
				    </select>
				 </div>
			</div>
		</div>

				<div class="row">
			<div class="col-md-9">
				<div class="form-group">
				    <label for="bairro">Bairros</label>
				    <select multiple name="bairro" class="form-control action" id="bairro">
				    
				   
				    </select>
				 </div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-9">
				<div class="form-group">
				    <label for="praca">Praça</label>
				    <select multiple name="praca" class="form-control" id="praca" required>

				    </select>
				 </div>
			</div>
		</div>

	</form>

	
	</div>
	<script type="text/javascript" src="./asstes/jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.action').change(function(){
				if($(this).val() != ''){
					var action='';
					action = $(this).attr("id");//pego o nome do id do input que é o nome da sessão
					console.log(action);
					var query = '';
					query = parseInt($(this).val()); //pego o id do valor
					console.log(query);
					
					var result = '';
					if(action == 'estado'){
						result = 'municipio';
						$('#bairro').html('');
						$('#praca').html('');
						
					}else if(action == 'municipio'){
						result = 'bairro';
						$('#praca').html('');
					}else{
						result ='praca';
					}
					
					$.ajax({
						url:'fetch.php',
						method:"POST",
						data:{action:action, query:query},
						success:function(data){
							console.log($('#'+result));
							$('#'+result).html(data);
						}
					})
					
				}
			});


		});
	</script>
</body>
</html>