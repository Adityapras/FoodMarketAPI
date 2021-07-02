<?php

namespace App\Http\Controllers\WebAdmin\Master;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Symfony\Component\Console\Input\Input;

class MenuController extends Controller
{
    public function index(Request $request)
    {
        return view('admin.master.menu');
    }

    public function getMenuList()
    {
        $menu = \App\Models\Admin\Menu::all()->toArray();
        return response()->json($this->GenerateNavArray($menu));
    }

    public function GenerateNavArray($arr, $parent = 0)
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

    public function getMenuListOriginal(Request $request)
    {
        $menu = \App\Models\Admin\Menu::orderBy('name', 'asc')->paginate($request->per_page);
        return response()->json($menu);
    }

    public function store(Request $request)
    {
        $menu = new \App\Models\Admin\Menu();

        $menu->name = $request->input('menu_name');
        $menu->link = $request->input('link');
        $menu->order = $request->input('menu_show_order');
        $menu->icon = $request->input('icon');
        $menu->parent = $request->input('parent');

        try {
            $menu->save();
            return response()->json(['meta' => ['code' => 200], 'message' => 'success']);
        } catch (exception $e) {
            return response()->json(['meta' => ['code' => 400], 'message' =>  $e]);
        }
    }

    public function update(Request $request)
    {
        $menu =  \App\Models\Admin\Menu::find($request->input('id'));

        $menu->name = $request->input('menu_name');
        $menu->link = $request->input('link');
        $menu->order = $request->input('menu_show_order');
        $menu->icon = $request->input('icon');
        $menu->parent = $request->input('parent');

        try {
            $menu->save();
            return response()->json(['meta' => ['code' => 200], 'message' => 'success']);
        } catch (exception $e) {
            return response()->json(['meta' => ['code' => 400], 'message' =>  $e]);
        }
    }

    public function delete($id)
    {
        $menu =  \App\Models\Admin\Menu::find($id);
        
        try {
            $menu->delete();
            return response()->json(['meta' => ['code' => 200], 'message' => 'success']);
        } catch (exception $e) {
            return response()->json(['meta' => ['code' => 400], 'message' =>  $e]);
        }
    }
}
