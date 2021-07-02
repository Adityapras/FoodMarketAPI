<?php

use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\MidtransController;
use App\Http\Controllers\WebAdmin\FoodController;
use App\Http\Controllers\WebAdmin\UsersController;
use App\Http\Controllers\WebAdmin\DashboardController;
use App\Http\Controllers\WebAdmin\MasterController;
use App\Http\Controllers\WebAdmin\TransactionController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect()->route('dashboard');
});

//Home Page
Route::prefix('dashboard')->middleware('auth:sanctum', 'admin')->group(function () {
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
    Route::resource('users', UsersController::class);
    Route::resource('food', FoodController::class);
    Route::resource('transactions', TransactionController::class);
    Route::get('transactions/{id}/status/{status}', [TransactionController::class, 'changeStatus'])->name('transactions.changeStatus');
    Route::get('master/menu',[MasterController::class, 'index']);
    Route::get('menuList',[MasterController::class, 'getMenuList']);

});

Route::prefix('master')->middleware('auth:sanctum', 'admin')->group(function () {
    Route::get('menu', [MasterController::class, 'index']);
    Route::get('menu/list', [MasterController::class, 'getMenuList']);

}); 

Route::get('midtrans', [MidtransController::class, 'success']);
Route::get('midtrans/unfinish', [MidtransController::class, 'unfinish']);
Route::get('midtrans/error', [MidtransController::class, 'error']);

Route::get('send-mail', function () {

    $details = [
        'title' => 'Mail from ItSolutionStuff.com',
        'body' => 'This is for testing email using smtp'
    ];

    Mail::to(['adityapras10@gmail.com', 'sciene.ofcomputer@gmail.com'])
        ->cc('test@gmail.com')
        ->send(new \App\Mail\TestSendEmail($details));

    dd("Email is Sent.");
});

function GenerateNavArray($arr, $parent = 0)
{
    $pages = array();
    foreach ($arr as $page) {
        if ($page['parent'] == $parent) {
            $page['sub'] = isset($page['sub']) ? $page['sub'] : GenerateNavArray($arr, $page['id']);
            $pages[] = $page;
        }
    }
    return $pages;
}

// loop the multidimensional array recursively to generate the HTML
function GenerateNavHTML($nav)
{
    $html = '';
    foreach ($nav as $page) {
        $html .= '<ul class="sidebar-menu" id="nav-accordion"><li class="sub-menu">';
        $html .= '<a href="' . $page['link'] . '">' . $page['name'] . '</a>';
        $html .= GenerateNavHTML($page['sub']);
        $html .= '</li></ul>';
    }
    return $html;
}

Route::get('unlimitedmenus', function () {
    $nav = array(
        array(
            'id' => 27,
            'name' => 'home',
            'link' => 'home.html',
            'parent' => 0
        ),
        array(
            'id' => 33,
            'name' => 'home',
            'link' => 'home.html',
            'parent' => 0
        ),
        array(
            'id' => 30,
            'name' => 'about',
            'link' => 'about.html',
            'parent' => 27
        ),
        array(
            'id' => 31,
            'name' => 'tes',
            'link' => 'about.html',
            'parent' => 30
        ),
        array(
            'id' => 32,
            'name' => 'tes',
            'link' => 'about.html',
            'parent' => 31
        )
    );

    $navarray = GenerateNavArray($nav);
    echo GenerateNavHTML($navarray);
    // dd($navarray);
});

Route::get('insert-menu', function () {

    $menus = App\Models\Admin\Menu::all();
    $collections = collect(GenerateNavArray($menus->toArray()));
    $sorted = $collections->sortBy([
        ['order', 'desc'],
    ]);

    dd($sorted->values()->all());
});


