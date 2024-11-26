<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('frontend.index');
});

//Result Part
Route::get('/cultivation/result',[
    'uses'  => 'BackofficeController@resultPart',
    'as'    => 'resultPart'
]);

Route::get('/teacher', function () {
    return view('academic.dataTable');
});

Route::post('/cultivation/login/confirm',[
    'uses'  => 'FrontController@cultivationLogin',
    'as'    => 'cultivationLogin'
]);
Route::get('/cultivation/login',[
    'uses'  => 'FrontController@adminLogin',
    'as'    => 'adminLogin'
]);
Route::get('/cultivation/logout',[
    'uses'  => 'FrontController@adminLogout',
    'as'    => 'adminLogout'
]);
Route::post('/cultivation/register',[
    'uses'  => 'FrontController@adminRegister',
    'as'    => 'adminRegister'
]);

//Cultivation Part
Route::get('/cultivation/dashboard',[
    'uses'  => 'CultivationController@index',
    'as'    => 'cultivationIndex'
]);
Route::get('/cultivation/profile',[
    'uses'  => 'CultivationController@adminProfile',
    'as'    => 'adminProfile'
]);
Route::post('/cultivation/profile/save',[
    'uses'  => 'CultivationController@saveAdminProfile',
    'as'    => 'saveAdminProfile'
]);
Route::post('/cultivation/profile/password/save',[
    'uses'  => 'CultivationController@changeAdminPassword',
    'as'    => 'changeAdminPassword'
]);
Route::get('/cultivation/notice/list',[
    'uses'  => 'NoticeController@noticeList',
    'as'    => 'noticeList'
]);
Route::get('/cultivation/notice/new',[
    'uses'  => 'NoticeController@newNotice',
    'as'    => 'newNotice'
]);
Route::post('/cultivation/notice/save',[
    'uses'  => 'NoticeController@saveNotice',
    'as'    => 'saveNotice'
]);
Route::get('/cultivation/notice/edit/{id}',[
    'uses'  => 'NoticeController@editNotice',
    'as'    => 'editNotice'
]);
Route::post('/cultivation/notice/update',[
    'uses'  => 'NoticeController@updateNotice',
    'as'    => 'updateNotice'
]);
Route::get('/cultivation/notice/delete/{id}',[
    'uses'  => 'NoticeController@delNotice',
    'as'    => 'delNotice'
]);
Route::get('/cultivation/notice/preview/{id}',[
    'uses'  => 'NoticeController@prevNotice',
    'as'    => 'prevNotice'
]);

//notice ends here

Route::get('/cultivation/institute/info/',[
    'uses'  => 'InstituteController@insInfo',
    'as'    => 'insInfo'
]);

Route::get('/cultivation/institute/info/img/del/{id}',[
    'uses'  => 'InstituteController@delHeroImg',
    'as'    => 'delHeroImg'
]);

Route::post('/cultivation/institute/details/',[
    'uses'  => 'InstituteController@insDetails',
    'as'    => 'insDetails'
]);

Route::get('/cultivation/institute/principal/speech',[
    'uses'  => 'InstituteController@principalSpeech',
    'as'    => 'principalSpeech'
]);

Route::post('/cultivation/institute/principal/speech/save',[
    'uses'  => 'InstituteController@savePrincipalSpeech',
    'as'    => 'savePrincipalSpeech'
]);

Route::get('/cultivation/institute/principal/exList',[
    'uses'  => 'InstituteController@exPrincipal',
    'as'    => 'exPrincipal'
]);

Route::post('/cultivation/institute/principal/exList/save',[
    'uses'  => 'InstituteController@saveExPrincipal',
    'as'    => 'saveExPrincipal'
]);

Route::get('/cultivation/institute/principal/exList/edit/{id}',[
    'uses'  => 'InstituteController@editExPrincipal',
    'as'    => 'editExPrincipal'
]);

Route::get('/cultivation/institute/principal/exList/del/{id}',[
    'uses'  => 'InstituteController@delExPrincipal',
    'as'    => 'delExPrincipal'
]);

Route::get('/cultivation/institute/committee/',[
    'uses'  => 'InstituteController@managingCommittee',
    'as'    => 'managingCommittee'
]);

Route::post('/cultivation/institute/committee/save',[
    'uses'  => 'InstituteController@saveManagingCommittee',
    'as'    => 'saveManagingCommittee'
]);

Route::get('/cultivation/institute/committee/edit/{id}',[
    'uses'  => 'InstituteController@editManagingCommittee',
    'as'    => 'editManagingCommittee'
]);

Route::get('/cultivation/institute/committee/del/{id}',[
    'uses'  => 'InstituteController@delManagingCommittee',
    'as'    => 'delManagingCommittee'
]);

// institute info ends here

Route::get('/cultivation/academic/syllabus/',[
    'uses'  => 'AcademicController@syllabusManage',
    'as'    => 'syllabusManage'
]);

Route::post('/cultivation/academic/syllabus/save',[
    'uses'  => 'AcademicController@saveSyllabus',
    'as'    => 'saveSyllabus'
]);

Route::get('/cultivation/academic/syllabus/edit/{id}',[
    'uses'  => 'AcademicController@editSyllabus',
    'as'    => 'editSyllabus'
]);

Route::get('/cultivation/academic/syllabus/content/delete/{id}',[
    'uses'  => 'AcademicController@delSyllabusContent',
    'as'    => 'delSyllabusContent'
]);

Route::get('/cultivation/academic/syllabus/del/{id}',[
    'uses'  => 'AcademicController@delSyllabus',
    'as'    => 'delSyllabus'
]);


Route::get('/cultivation/academic/classRoutine/',[
    'uses'  => 'AcademicController@classRoutineManage',
    'as'    => 'classRoutineManage'
]);

Route::post('/cultivation/academic/classRoutine/save',[
    'uses'  => 'AcademicController@saveClassRoutine',
    'as'    => 'saveClassRoutine'
]);

Route::get('/cultivation/academic/classRoutine/edit/{id}',[
    'uses'  => 'AcademicController@editClassRoutine',
    'as'    => 'editClassRoutine'
]);

Route::get('/cultivation/academic/classRoutine/del/{id}',[
    'uses'  => 'AcademicController@delClassRoutine',
    'as'    => 'delClassRoutine'
]);

Route::get('/cultivation/academic/classRoutine/content/delete/{id}',[
    'uses'  => 'AcademicController@delClassRoutineContent',
    'as'    => 'delClassRoutineContent'
]);

Route::get('/cultivation/academic/examRoutine/',[
    'uses'  => 'AcademicController@examRoutineManage',
    'as'    => 'examRoutineManage'
]);

Route::post('/cultivation/academic/examRoutine/save',[
    'uses'  => 'AcademicController@saveExamRoutine',
    'as'    => 'saveExamRoutine'
]);

Route::get('/cultivation/academic/examRoutine/edit/{id}',[
    'uses'  => 'AcademicController@editExamRoutine',
    'as'    => 'editExamRoutine'
]);

Route::get('/cultivation/academic/examRoutine/del/{id}',[
    'uses'  => 'AcademicController@delExamRoutine',
    'as'    => 'delExamRoutine'
]);

Route::get('/cultivation/academic/examRoutine/content/delete/{id}',[
    'uses'  => 'AcademicController@delExamRoutineContent',
    'as'    => 'delExamRoutineContent'
]);

Route::get('/cultivation/academic/semisterPlan/',[
    'uses'  => 'AcademicController@semisterPlanManage',
    'as'    => 'semisterPlanManage'
]);

Route::post('/cultivation/academic/semisterPlan/save',[
    'uses'  => 'AcademicController@saveSemisterPlan',
    'as'    => 'saveSemisterPlan'
]);

Route::get('/cultivation/academic/semisterPlan/edit/{id}',[
    'uses'  => 'AcademicController@editSemisterPlan',
    'as'    => 'editSemisterPlan'
]);

Route::get('/cultivation/academic/semisterPlan/del/{id}',[
    'uses'  => 'AcademicController@delSemisterPlan',
    'as'    => 'delSemisterPlan'
]);

Route::get('/cultivation/academic/semisterPlan/content/delete/{id}',[
    'uses'  => 'AcademicController@delSemisterPlanContent',
    'as'    => 'delSemisterPlanContent'
]);

Route::get('/cultivation/placement/jobPlacement/',[
    'uses'  => 'PlacementCellController@placementCell',
    'as'    => 'placementCell'
]);

Route::get('/cultivation/placement/placementCell/edit/{id}',[
    'uses'  => 'PlacementCellController@editPlc',
    'as'    => 'editPlc'
]);

Route::get('/cultivation/placement/placementCell/delete/{id}',[
    'uses'  => 'PlacementCellController@delPlc',
    'as'    => 'delPlc'
]);

Route::post('/cultivation/placement/placementCell/save',[
    'uses'  => 'PlacementCellController@savePlacementCell',
    'as'    => 'savePlacementCell'
]);

Route::get('/cultivation/placement/needyStudentPanel/',[
    'uses'  => 'PlacementCellController@needyStudentPanel',
    'as'    => 'needyStudentPanel'
]);
//academic info ends here

//
Route::get('/cultivation/configuration',[
    'uses'  => 'CultivationController@config',
    'as'    => 'serverConfig'
]);
Route::post('/cultivation/configuration/save',[
    'uses'  => 'CultivationController@saveConfig',
    'as'    => 'saveConfig'
]);
Route::get('/cultivation/sign/del/{id}',[
    'uses'  => 'CultivationController@delSign',
    'as'    => 'delSign'
]);
Route::post('/cultivation/sign/save',[
    'uses'  => 'CultivationController@saveSign',
    'as'    => 'saveSign'
]);
Route::get('/cultivation/logo/del/{id}',[
    'uses'  => 'CultivationController@delLogo',
    'as'    => 'delLogo'
]);
Route::post('/cultivation/logo/save',[
    'uses'  => 'CultivationController@saveLogo',
    'as'    => 'saveLogo'
]);
Route::get('/cultivation/favicon/del/{id}',[
    'uses'  => 'CultivationController@delFavicon',
    'as'    => 'delFavicon'
]);
Route::post('/cultivation/favicon/save',[
    'uses'  => 'CultivationController@saveFavicon',
    'as'    => 'saveFavicon'
]);
Route::get('/cultivation/avatar/del/{id}',[
    'uses'  => 'CultivationController@delAvatar',
    'as'    => 'delAvatar'
]);
Route::post('/cultivation/avatar/save',[
    'uses'  => 'CultivationController@saveAvatar',
    'as'    => 'saveAvatar'
]);

//Account Part
Route::get('/cultivation/account',[
    'uses'  => 'BackofficeController@index',
    'as'    => 'accountPart'
]);

//Academic Part
Route::get('/cultivation/academic',[
    'uses'  => 'BackofficeController@index',
    'as'    => 'academicPart'
]);
//Student route declaration
Route::get('/cultivation/student/admit',[
    'uses'  => 'StudentController@admitStudent',
    'as'    => 'admitStudent'
]);
Route::post('/cultivation/student/admit/confirm',[
    'uses'  => 'StudentController@confirmAdmit',
    'as'    => 'confirmAdmit'
]);
Route::get('/cultivation/student/edit/{stdId}',[
    'uses'  => 'StudentController@editStudent',
    'as'    => 'editStudent'
]);
Route::post('/cultivation/student/edit/confirm',[
    'uses'  => 'StudentController@updateAdmit',
    'as'    => 'updateAdmit'
]);
Route::get('/cultivation/student/del/{stdId}',[
    'uses'  => 'StudentController@delStudent',
    'as'    => 'delStudent'
]);
Route::get('/cultivation/student/del/avatar/{stdId}',[
    'uses'  => 'StudentController@delStdAvatar',
    'as'    => 'delStdAvatar'
]);

Route::get('/cultivation/student/list',[
    'uses'  => 'StudentController@studentList',
    'as'    => 'studentList'
]);

Route::get('/cultivation/student/idCard/{stdId}',[
    'uses'  => 'StudentController@stdIdCard',
    'as'    => 'stdIdCard'
]);
Route::get('/cultivation/student/promotion',[
    'uses'  => 'StudentController@studentPromotion',
    'as'    => 'studentPromotion'
]);

//Teacher route declaration

Route::get('/cultivation/teacher/admit',[
    'uses'  => 'TeacherController@addTeacher',
    'as'    => 'addTeacher'
]);
Route::post('/cultivation/teacher/admit/confirm',[
    'uses'  => 'TeacherController@confirmTeacher',
    'as'    => 'confirmTeacher'
]);
Route::get('/cultivation/teacher/edit/{profileId}',[
    'uses'  => 'TeacherController@editTeacher',
    'as'    => 'editTeacher'
]);
Route::post('/cultivation/teacher/edit/confirm',[
    'uses'  => 'TeacherController@updateTeacher',
    'as'    => 'updateTeacher'
]);
Route::get('/cultivation/teacher/del/{profileId}',[
    'uses'  => 'TeacherController@delTeacher',
    'as'    => 'delTeacher'
]);
Route::get('/cultivation/teacher/del/avatar/{profileId}',[
    'uses'  => 'TeacherController@delTeacherPhoto',
    'as'    => 'delTeacherPhoto'
]);

Route::get('/cultivation/teacher/list',[
    'uses'  => 'TeacherController@teacherList',
    'as'    => 'teacherList'
]);

//Teacher route declaration

Route::get('/cultivation/staff/admit',[
    'uses'  => 'StaffController@addStaff',
    'as'    => 'addStaff'
]);
Route::post('/cultivation/staff/admit/confirm',[
    'uses'  => 'StaffController@confirmStaff',
    'as'    => 'confirmStaff'
]);
Route::get('/cultivation/staff/edit/{profileId}',[
    'uses'  => 'StaffController@editStaff',
    'as'    => 'editStaff'
]);
Route::post('/cultivation/staff/edit/confirm',[
    'uses'  => 'StaffController@updateStaff',
    'as'    => 'updateStaff'
]);
Route::get('/cultivation/staff/del/{profileId}',[
    'uses'  => 'StaffController@delStaff',
    'as'    => 'delStaff'
]);
Route::get('/cultivation/staff/del/avatar/{profileId}',[
    'uses'  => 'StaffController@delStaffPhoto',
    'as'    => 'delStaffPhoto'
]);

Route::get('/cultivation/staff/list',[
    'uses'  => 'StaffController@staffList',
    'as'    => 'staffList'
]);


//Classes route declaration

Route::get('/cultivation/class/create',[
    'uses'  => 'ClassController@createClass',
    'as'    => 'createClass'
]);
Route::post('/cultivation/class/create/confirm',[
    'uses'  => 'ClassController@confirmClass',
    'as'    => 'confirmClass'
]);
Route::get('/cultivation/class/edit/{itemId}',[
    'uses'  => 'ClassController@editClass',
    'as'    => 'editClass'
]);
Route::post('/cultivation/class/edit/confirm',[
    'uses'  => 'ClassController@updateClass',
    'as'    => 'updateClass'
]);
Route::get('/cultivation/class/del/{itemId}',[
    'uses'  => 'ClassController@delClass',
    'as'    => 'delClass'
]);

Route::get('/cultivation/class/list',[
    'uses'  => 'ClassController@allClasses',
    'as'    => 'allClasses'
]);


//Department route declaration

Route::get('/cultivation/department/create',[
    'uses'  => 'DepartmentController@createDepartment',
    'as'    => 'createDepartment'
]);
Route::post('/cultivation/department/create/confirm',[
    'uses'  => 'DepartmentController@confirmDepartment',
    'as'    => 'confirmDepartment'
]);
Route::get('/cultivation/department/edit/{itemId}',[
    'uses'  => 'DepartmentController@editDepartment',
    'as'    => 'editDepartment'
]);
Route::post('/cultivation/department/edit/confirm',[
    'uses'  => 'DepartmentController@updateDepartment',
    'as'    => 'updateDepartment'
]);
Route::get('/cultivation/department/del/{itemId}',[
    'uses'  => 'DepartmentController@delDepartment',
    'as'    => 'delDepartment'
]);

Route::get('/cultivation/department/list',[
    'uses'  => 'DepartmentController@allDepartment',
    'as'    => 'allDepartment'
]);

//Session route declaration

Route::get('/cultivation/session/create',[
    'uses'  => 'SessionController@createSession',
    'as'    => 'createSession'
]);
Route::post('/cultivation/session/create/confirm',[
    'uses'  => 'SessionController@confirmSession',
    'as'    => 'confirmSession'
]);
Route::get('/cultivation/session/edit/{itemId}',[
    'uses'  => 'SessionController@editSession',
    'as'    => 'editSession'
]);
Route::post('/cultivation/session/edit/confirm',[
    'uses'  => 'SessionController@updateSession',
    'as'    => 'updateSession'
]);
Route::get('/cultivation/session/del/{itemId}',[
    'uses'  => 'SessionController@delSession',
    'as'    => 'delSession'
]);

Route::get('/cultivation/session/list',[
    'uses'  => 'SessionController@allSession',
    'as'    => 'allSession'
]);

//Subject route declaration

Route::get('/cultivation/subject/create',[
    'uses'  => 'SubjectController@createSubject',
    'as'    => 'createSubject'
]);
Route::post('/cultivation/subject/create/confirm',[
    'uses'  => 'SubjectController@confirmSubject',
    'as'    => 'confirmSubject'
]);
Route::get('/cultivation/subject/edit/{itemId}',[
    'uses'  => 'SubjectController@editSubject',
    'as'    => 'editSubject'
]);
Route::post('/cultivation/subject/edit/confirm',[
    'uses'  => 'SubjectController@updateSubject',
    'as'    => 'updateSubject'
]);
Route::get('/cultivation/subject/del/{itemId}',[
    'uses'  => 'SubjectController@delSubject',
    'as'    => 'delSubject'
]);

Route::get('/cultivation/subject/list',[
    'uses'  => 'SubjectController@allSubject',
    'as'    => 'allSubject'
]);


//Exam route declaration

Route::get('/cultivation/exam/create',[
    'uses'  => 'ExamController@createExam',
    'as'    => 'createExam'
]);
Route::post('/cultivation/exam/create/confirm',[
    'uses'  => 'ExamController@confirmExam',
    'as'    => 'confirmExam'
]);
Route::get('/cultivation/exam/edit/{itemId}',[
    'uses'  => 'ExamController@editExam',
    'as'    => 'editExam'
]);
Route::post('/cultivation/exam/edit/confirm',[
    'uses'  => 'ExamController@updateExam',
    'as'    => 'updateExam'
]);
Route::get('/cultivation/exam/del/{itemId}',[
    'uses'  => 'ExamController@delExam',
    'as'    => 'delExam'
]);

Route::get('/cultivation/exam/list',[
    'uses'  => 'ExamController@allExam',
    'as'    => 'allExam'
]);


//Marks route declaration

Route::get('/cultivation/marks/add',[
    'uses'  => 'MarksheetController@addMarks',
    'as'    => 'addMarks'
]);
Route::post('/cultivation/marks/add/getData',[
    'uses'  => 'MarksheetController@getMarks',
    'as'    => 'getMarks'
]);
Route::post('/cultivation/marks/add/confirm',[
    'uses'  => 'MarksheetController@confirmMarks',
    'as'    => 'confirmMarks'
]);

Route::get('/cultivation/marksheet/create',[
    'uses'  => 'MarksheetController@createMarksheet',
    'as'    => 'createMarksheet'
]);

Route::post('/cultivation/marksheet/generate',[
    'uses'  => 'MarksheetController@generateMarksheet',
    'as'    => 'generateMarksheet'
]);

//grade route declaration

Route::get('/cultivation/grade/create',[
    'uses'  => 'GradeListController@createGrade',
    'as'    => 'createGrade'
]);
Route::post('/cultivation/grade/create/confirm',[
    'uses'  => 'GradeListController@confirmGrade',
    'as'    => 'confirmGrade'
]);
Route::get('/cultivation/grade/edit/{itemId}',[
    'uses'  => 'GradeListController@editGrade',
    'as'    => 'editGrade'
]);
Route::post('/cultivation/grade/edit/confirm',[
    'uses'  => 'GradeListController@updateGrade',
    'as'    => 'updateGrade'
]);
Route::get('/cultivation/grade/del/{itemId}',[
    'uses'  => 'GradeListController@delGrade',
    'as'    => 'delGrade'
]);

Route::get('/cultivation/grade/list',[
    'uses'  => 'GradeListController@allGrade',
    'as'    => 'allGrade'
]);
