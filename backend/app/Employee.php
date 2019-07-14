<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    public function created_by(){
        return $this->belongsTo('App\User','created_by');
    }
    public function updated_by(){
        return $this->belongsTo('App\User','updated_by');
    }
}
