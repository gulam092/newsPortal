<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Setting;
class SettingController extends Controller
{
    public function index()
    {
    	$page_name  ="System Setting";
    	$setting   = Setting::find(1);
    	$system_name  =$setting->value;
    	return view('admin.setting.update',compact('page_name','system_name'));
    }
    public function update(Request $request)
    {
          $this->validate($request,[
      		'name'=>'required'
    	]);
       $fav_settings = Setting::find(2);
       if ($request->file('favicon')) {
        @unlink(public_path('/others/'.$fav_settings->value));
     	$file = $request->file('favicon');
     	$extension = $file->getClientOriginalExtension();
     	$favicon = 'favicon.'.$extension;
     	$file->move(public_path('/others'),$favicon);
     	$fav_settings->value = $favicon;
     	$fav_settings->save(); 
       }
       $front_settings = Setting::find(3);
       if ($request->file('front_logo')) {
        @unlink(public_path('/others/'.$front_settings->value));
     	$file = $request->file('front_logo');
     	$extension = $file->getClientOriginalExtension();
     	$favicon = 'front_logo.'.$extension;
     	$file->move(public_path('/others'),$favicon);
     	$front_settings->value = $favicon;
     	$front_settings->save(); 
       }
       $admin_settings = Setting::find(4);
       if ($request->file('admin_logo')) {
        @unlink(public_path('/others/'.$admin_settings->value));
     	$file = $request->file('admin_logo');
     	$extension = $file->getClientOriginalExtension();
     	$favicon = 'admin_logo.'.$extension;
     	$file->move(public_path('/others'),$favicon);
     	$admin_settings->value = $favicon;
     	$admin_settings->save(); 
       }
    $sys_settings = Setting::find(1);
   $sys_settings->value = $request->name;
   $sys_settings->save();
   return redirect()->action('Admin\SettingController@index');

    }






}
