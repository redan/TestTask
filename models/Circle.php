<?php

namespace app\models

class Cirle implements Figure
{
    public $r;

    public __construct($r){
        $this->r = $r;
    }

    public function calcAria($r){
        $S = Math.PI*(Math.pow($r,2));
        return  $S;
    }
}