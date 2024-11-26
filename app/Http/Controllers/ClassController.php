<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ClassData;

class ClassController extends Controller
{
    public function createClass(){
        return view('result.new-class');
    }

    public function confirmClass(Request $requ){
        $chk = ClassData::where(['className'=>$requ->className]);
        if($chk->exists()):
            return back()->with('error','Alias already exist');
        else:
            $class = new ClassData();
            $aliasCreate = str_replace(' ','_',$requ->className);
            $alias = strtolower($aliasCreate);

            $class->ClassName   = $requ->className;
            $class->alias       = $alias;
            $class->save();
            return back()->with('success','Record successfully saved');
        endif;
    }

    public function allClass(){
        $itemData = ClassData::orderBy('id','DESC')->get();
        return view('result.classList',['itemData'=>$itemData]);
    }
    
    public function editClass($item){
        $itemData = ClassData::find($item);
        return view('result.edit-class',['item'=>$itemData]);
    }
    

    public function updateClass(Request $requ){
        $class = ClassData::find($requ->itemId);
        if(!empty($class) && $class->exists()):
            $aliasCreate = str_replace(' ','_',$requ->className);
            $alias = strtolower($aliasCreate);

            $class->ClassName   = $requ->className;
            $class->alias       = $alias;
            $class->save();
            return back()->with('success','Record successfully updated');
        else:
            return back()->with('error','No alias found for update');
        endif;
    }

    public function delClass($id){
        $itemData = ClassData::find($id);
        if(empty($itemData)):
            return back()->with('error','Sorry! Alias failed to delete');
        else:
            $itemData->delete();
            return back()->with('success','Success! Alias successfully delete');
        endif;
    }
}