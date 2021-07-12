<?php

namespace App\Http\Controllers\API\Web\Master;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\Console\Input\Input;
use Throwable;


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
            $menu = \App\Models\Admin\Menu::find($menu->id);
            $response = [
                'meta' => [
                    'code' => 200,
                    'status'   => 'success',
                    'message' => 'data menu is successfully created'
                ],
                'data' => []
            ];
        } catch (Throwable $e) {
            $response = [
                'meta' => [
                    'code' => 400,
                    'status'   => 'error',
                    'message' => $e
                ],
                'data' => []
            ];
        }

        return response()->json($response);
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
            $response = [
                'meta' => [
                    'code' => 200,
                    'status'   => 'success',
                    'message' => 'data menu is successfully updated'
                ],
                'data' => []
            ];
        } catch (Throwable $e) {
            $response = [
                'meta' => [
                    'code' => 400,
                    'status'   => 'error',
                    'message' => $e
                ],
                'data' => []
            ];
        }
        return response()->json($response);
    }

    public function delete($id)
    {
        $menu =  \App\Models\Admin\Menu::find($id);

        try {
            $menu->delete();
            $response = [
                'meta' => [
                    'code' => 200,
                    'status'   => 'success',
                    'message' => 'data menu is successfully deleted'
                ],
                'data' => []
            ];
        } catch (Throwable $e) {
            $response = [
                'meta' => [
                    'code' => 400,
                    'status'   => 'error',
                    'message' => $e
                ],
                'data' => []
            ];
        }
        return response()->json($response);
    }
}
