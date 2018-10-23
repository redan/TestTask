<?php
echo('Fibonacci <br>');

$a = '1';
$b = '1';

for($i = 0; $i < 64; $i++){
    $i++;
    echo($a . ',');
    $a = bcadd($a, $b);
    echo($b . ',');
    $b = bcadd($a, $b);
}