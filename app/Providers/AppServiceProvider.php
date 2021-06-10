<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use App\Models\Admin\Menu;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $menulist        = Menu::all();
        $menu            = $this->GenerateNavArray($menulist->toArray());
        $menuCollection  = collect($menu);
        $sortedMenu      = $menuCollection->sortBy([ ['order', 'asc'] ]);
        $displayMenu     = $this->GenerateNavHTML($sortedMenu);
        View::share('data', ['menu' => $menu, 'displayMenu' => $displayMenu]);
    }

    function GenerateNavArray($arr, $parent = 0)
    {
        $pages = array();
        foreach ($arr as $page) {
            if ($page['parent'] == $parent) {
                $page['sub'] = isset($page['sub']) ? $page['sub'] : $this->GenerateNavArray($arr, $page['id']);
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

            if ($page['parent'] === 0 && count($page['sub'])  > 0) {
                $html .= '<li class="sub-menu">';
            } else {
                $html .= '<li>';
            }

            $html .= '<a href="' . $page['link'] . '"> <i class="' . $page['icon'] . '"></i><span>' . $page['name'] . '</span></a>';
            if (count($page['sub'])  > 0) {
                $html .= '<ul class="sub"><li>';
            }

            $html .= $this->GenerateNavHTML($page['sub']);

            if (count($page['sub'])  > 0) {
                $html .= '</li></ul>';
            }

            $html .= '</li>';
        }


        return $html;
    }
}
