<? if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
    ?>
    <form action="" method="get" target="hero">
        <input type="Hidden" name="id" value="1">
        <p><b>Оцените Bitrix Framework:</b></p>
        <input type="radio" name="vote" value="+" checked>Голосовать за<br>
        <input type="radio" name="vote" value="-">Голосовать против<br>
        <input type="submit" value="Проголосовать">
    </form><br>
<?php
?>