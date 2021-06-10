<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class SurahController extends Controller
{
     public function index()
     {
          //merge all json file
          for ($i = 1; $i <=  114; $i++) {
               $pathJsonFile =  Storage::disk('public')->get('assets/surah/' . $i . '.json');
               $result[] = json_decode($pathJsonFile, TRUE);
          }
          // make a simple json output array
          foreach ($result as $key => $value) {
               $data[] = $value[$key + 1];
          }

          $collection = collect($data);
          $multiplied = $collection->map(function ($item, $key) {
               return ['number' => $item['number'], 'name_arab' => $item['name'], 'name_id' => $item['name_latin'], 'total_ayat' => $item['number_of_ayah']];
          });

          return response()->json( $multiplied );
     }


     public function get_detail_surah($number)
     {
          $get_data   =  json_decode(Storage::disk('public')->get('assets/surah/' . $number . '.json'),TRUE);
          return response()->json( $get_data[$number] );
     }
}
