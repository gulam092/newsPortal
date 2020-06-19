<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomePageController extends Controller
{
     public function index(){
     	
   	 return view('front.home');
   }
   public function admin(){
     	
   	 return view('admin.dashboard');
   }
}
