<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubDistrict extends Model
{
    protected $table = 'subdistrict';
    protected $primaryKey = 'sub_district_id';
    protected $fillable = ['sub_district_name'];
    protected $guarded = [];
}
