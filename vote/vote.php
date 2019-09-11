<?php

$pathData = 'data.php';
$pathIp = 'ip.php';
$id = $_GET[id];
$vote = $_GET[vote];
$ip = $_SERVER['REMOTE_ADDR'];
$ip_file = file_get_contents($pathIp);
$ip_abbr = explode(",", $ip_file);

foreach($ip_abbr as $value) {
  if ($ip == $value) {
    echo file_get_contents($pathData);
    echo "<p style='color: red;'><b> Вы уже голосовали!</b></p>";
    exit;
  }
}

if ($vote) {
  //Запись числа голосований
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
  $ip_adr = fopen($pathIp,"a+");
  flock($ip_adr, LOCK_EX);
  fflush($ip_adr);
  fputs($ip_adr, "$ip".",");
  flock($ip_adr, LOCK_UN);
  fclose($ip_adr);
}

echo file_get_contents($pathData);
?>