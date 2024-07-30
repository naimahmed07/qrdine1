<?php

namespace App\Http\Controllers;

use App\Models\DineinTable;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class DineinTableController extends Controller {
    public function index() {
        $tables = DineinTable::where('restaurant_id', auth()->user()->restaurant->id)
            ->orderBy('created_at', 'desc')
            ->get();
        return view('dinein-tables.index', ['tables' => $tables]);
    }

    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:dinein_tables,name,NULL,id,restaurant_id,' . auth()->user()->restaurant->id
        ]);

        if ($validator->fails()) {
            $error = $validator->errors()->first();

            return response()->json([
                'success' => false,
                'message' => $error
            ], 422);
        }

        try {

            $table = new DineinTable();
            $table->name = $request->name;
            $table->active = $request->active == 'on' ? 1 : 0;
            $table->restaurant_id = auth()->user()->restaurant->id;
            $table->save();

            return response()->json([
                'success' => true,
                'message' => 'Table added successfully'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong'
            ], 500);
        }
    }

    public function update(Request $request, $id) {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:dinein_tables,name,' . $id . ',id,restaurant_id,' . auth()->user()->restaurant->id
        ]);

        try {
            if ($validator->fails()) {
                $error = $validator->errors()->first();

                return response()->json([
                    'success' => false,
                    'message' => $error
                ], 422);
            }

            $table = DineinTable::find($id);
            $table->name = $request->name;
            $table->active = $request->active == 'on' ? 1 : 0;
            $table->save();

            return response()->json([
                'success' => true,
                'message' => 'Table updated successfully'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong'
            ], 500);
        }
    }

    public function destroy(DineinTable $dineinTable) {
        try {
            $dineinTable->delete();
            return response()->json([
                'success' => true,
                'message' => 'Table deleted successfully'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something went wrong'
            ], 500);
        }
    }

    public function generateQrCode(DineinTable $dineinTable) {
        $url = env('APP_URL', 'http://127.0.0.1:8000') . '/resto/' . $dineinTable->restaurant->slug . '?table=' . $dineinTable->id;
        $qrCode = QrCode::format('png')
            ->size(350)
            ->generate($url);

        $filename = $dineinTable->restaurant->slug . '_' . str_replace(' ', '-', $dineinTable->name) . '.png';

        $response = Response::make($qrCode, 200);
        $response->header('Content-Type', 'image/png');
        $response->header('Content-Disposition', 'attachment; filename="' . $filename . '"');

        return $response;
    }
}
