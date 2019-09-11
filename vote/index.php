<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Голосование</title>
</head>
<body>

<form action="vote.php" method="get" target="hero">
<input type="Hidden" name="id" value="1">
<p><b>Оцените Bitrix Framework:</b></p>
<input type="radio" name="vote" value="+" checked>Голосовать за<br>
<input type="radio" name="vote" value="-">Голосовать против<br>
<input type="submit" value="Проголосовать">
</form><br>

<iframe name="hero"  src="vote.php?id=3" width="150" height="200" frameborder="0" style="border: 0px solid black" scrolling="auto"></iframe>

</body>
</html>

