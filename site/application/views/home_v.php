<!DOCTYPE html>
<html lang="tr">

<head>

<?php $this->load->view("includes/head"); ?>

</head>
<body>

<div class="site-wrap">

<?php $this->load->view("includes/header"); ?>


<?php $this->load->view("{$viewFolder}/content"); ?>

<?php $this->load->view("includes/footer"); ?>
</div>

<?php $this->load->view("includes/include_script"); ?>
</body>
</html>
