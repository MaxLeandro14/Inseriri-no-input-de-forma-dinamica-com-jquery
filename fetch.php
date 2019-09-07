<?php
//fetch.php

if(isset($_POST['action']))
{
 include_once 'conexao.php';
 $connect = getConexao();
 $output = '';

 if($_POST["action"] == 'estado')
 {
  $query = "
  SELECT * FROM municipio WHERE id_cat = :estado_id GROUP BY nome ORDER BY nome ASC
  ";
  $statement = $connect->prepare($query);
  $statement->execute(
   array(
    ':estado_id'  => $_POST["query"]
   )
  );
  $result = $statement->fetchAll();
  $output = '';
  foreach($result as $row)
  {
   $output .= '<option value="'.$row["id_sub"].'">'.$row["nome"].'</option>';
  }
 }
 if($_POST["action"] == 'municipio')
 {
  $query = "
  SELECT * FROM bairro WHERE id_sub = :municipio_id GROUP BY nome ORDER BY nome ASC
  ";
  $statement = $connect->prepare($query);
  $statement->execute(
   array(
    ':municipio_id'  => $_POST["query"]
   )
  );
  $result = $statement->fetchAll();
  $output = '';
  foreach($result as $row)
  {
   $output .= '<option value="'.$row["id_ite"].'">'.$row["nome"].'</option>';
  }


 }

 if($_POST["action"] == 'bairro')
 {
  $query = "
  SELECT * FROM praca WHERE id_ite = :bairro_id GROUP BY nome ORDER BY nome ASC
  ";
  $statement = $connect->prepare($query);
  $statement->execute(
   array(
    ':bairro_id'  => $_POST["query"]
   )
  );
  $result = $statement->fetchAll();
  $output = '';
  foreach($result as $row)
  {
   $output .= '<option value="'.$row["id_ite"].'">'.$row["nome"].'</option>';
  }


 }

 echo $output;
}

?>