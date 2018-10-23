<?php

namespace app\models

class Rectangle implements Figure
{
    public $a;
    public $b;

    public __construct($a, $b){
        $this->a = $a;
        $this->b = $b;
    }

    public calcAria($a, $b){
        $S = $a*$b;
        return $S;
    }
}