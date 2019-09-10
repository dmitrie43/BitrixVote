<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();

$this->setFrameMode(true);
?>

<?php if (!$check): ?>
    <div class="iblock-vote">
        <form method="post" action="<?=POST_FORM_ACTION_URI?>">
            <input type="hidden" name="vote_id" value="<?=$arResult["ID"]?>">
            <p><b>Оцените Bitrix Framework:</b></p>
            <input type="radio" name="vote" value="+" checked>Голосовать за<br>
            <input type="radio" name="vote" value="-">Голосовать против<br>
            <input type="submit" value="Проголосовать" />
        </form>
    </div>
<?php endif; ?>
