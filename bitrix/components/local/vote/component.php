<?
if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
if(CModule::IncludeModule("highloadblock")) {

    $pathData = 'data.php';
    $vote = $_POST['vote'];
    $ip = $_SERVER['REMOTE_ADDR'];
    $hlblock = \Bitrix\Highloadblock\HighloadBlockTable::getById(1)->fetch();
    $entity = \Bitrix\Highloadblock\HighloadBlockTable::compileEntity($hlblock);
    $entity_data_class = $entity->getDataClass();
    $arData = array(
        'UF_IP' => $ip,
    );

    $rsData = $entity_data_class::getList(array(
        "select" => array("UF_IP"),
    ));

    function showVotes($pathData) {
        echo 'Проголосовало за - против: '.file_get_contents($pathData);
        echo "<p style='color: red;'><b> Вы уже голосовали!</b></p>";
    }

    foreach($rsData->fetch() as $value) {
        if ($value == $ip) {
           showVotes($pathData);
           return $check = false;
        }
    }

    if ($vote) {
        //Запись числа голосований (решил через файлик, а не бд)
        $data = file_get_contents($pathData);
        $res = explode('-', $data);
        if ($vote == '+') {
            $res[0]++;
        } else {
            $res[1]++;
        }
        $res = implode('-', $res);
        file_put_contents($pathData, $res);
        //Запись ip
        $entity_data_class::add($arData);
        showVotes($pathData);
        return $check = false;
    }

    echo 'Проголосовало за - против: '.file_get_contents($pathData);

    // Подключение шаблона вывода
    $this->IncludeComponentTemplate();

}

