<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Province;
use App\District;
use App\SubDistrict;

class HomeController extends Controller
{
    public function index()
    {
    	$province = Province::all();
    	return view('index',compact('province'));
    }

    public function district(Request $request)
    {
    	if($request->ajax()){
    		$query = District::where('ref_province_id',$request->province_id)->get()->toArray();
			return response()->json($query);    		
    	}
    }

    public function subdistrict(Request $request)
    {
    	if($request->ajax()){
    		$query = SubDistrict::where('ref_district_id',$request->district_id)->get()->toArray();
    		return response()->json($query);
    	}
    }
}
