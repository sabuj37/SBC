<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Marksheet;
use App\Models\StudentManagement;
use App\Models\GradeList;

class MarksheetController extends Controller
{
    public function __construct(){
        $this->middleware('cultivationAdmin');
    }
    public function addMarks(){
        return view('result.add-marks');
    }
    public function getMarks(Request $requ){
        $studentList = StudentManagement::where(['session'=>$requ->sessionId,'section'=>$requ->groupId])->get();
        return view('result.get-marks',['studentList'=>$studentList,'groupId'=>$requ->groupId,'classId'=>$requ->classId,'sessionId'=>$requ->sessionId,'examId'=>$requ->examId,'subjectId'=>$requ->subjectId]);
    }

    public function confirmMarks(Request $requ){
        $studentId = $requ->studentId;
        $totalData = count($studentId);
        $x = 0;
        while($x<$totalData){
            $chkData = Marksheet::where(['sessionId'=>$requ->sessionId,'classId'=>$requ->classId,'groupId'=>$requ->groupId,'studentId'=>$requ->studentId[$x],'examId'=>$requ->examId,'subjectId'=>$requ->subjectId])->first();
            if(isset($chkData) && !empty($chkData)):
                $chkData->delete();
            endif;
            $totalMarks = $requ->subjectMarks[$x]+$requ->objectMarks[$x]+$requ->practicalMarks[$x];
            $grade = GradeList::whereRaw("'$totalMarks' BETWEEN minMark AND maxMark")->first();
            if(isset($grade) && !empty($grade)):
                $gradePoint = $grade->gradePoint;
                $laterGrade = $grade->gradeName;
            else:
                $gradePoint = 0.00;
                $laterGrade = 'F';
            endif;
            $marks = new Marksheet();
            
            $marks->studentId       = $requ->studentId[$x];
            $marks->classId         = $requ->classId;
            $marks->sessionId       = $requ->sessionId;
            $marks->examId          = $requ->examId;
            $marks->subjectId       = $requ->subjectId;
            $marks->groupId         = $requ->groupId;
            $marks->subjectMarks    = $requ->subjectMarks[$x];
            $marks->objectMarks     = $requ->objectMarks[$x];
            $marks->practicalMarks  = $requ->practicalMarks[$x];
            $marks->totalMarks      = $totalMarks;
            $marks->laterGrade      = $laterGrade;
            $marks->gradePoint      = $gradePoint;
            $marks->save();

            $x++;
        }
        // return $x;
        if($x>0):
            return redirect(route('addMarks'))->with('success','Marksentry successfull');
        else:
            return redirect(route('addMarks'))->with('error','Marksentry failed');
        endif;
    }

    public function createMarksheet(){
        return view('result.createMarksheet');
    }

    public function generateMarksheet(Request $requ){
        // return $requ->stdId;
        $studentList = StudentManagement::where(['admitId'=>$requ->stdId])->first();
        return view('result.marksheetGenerate',['studentDetails'=>$studentList,'groupId'=>$requ->groupId,'classId'=>$requ->classId,'sessionId'=>$requ->sessionId,'examId'=>$requ->examId]);
    }
}