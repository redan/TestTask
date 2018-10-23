<?php

namespace app\models

class Pyramid implements Figure
{
    public $a;
    public $b;

    public __construct($a, $b){
        $this->a = $a;
        $this->b = $b;
    }

    public calcAria($a, $b){
        $S = Math.pow($a,2) + 2*a*(Math.sqrt(Math.pow($b,2)-(Math.pow($r,2)/4)));
        return $S;
    }
}