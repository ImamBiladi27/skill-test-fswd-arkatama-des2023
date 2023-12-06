<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\View\View;
class UserController extends Controller
{
    //
    public function index(): View
    {
        $users = User::all();
        return view('dashboard', compact('users'));
    }


    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'age' => 'required|string',
            'city' => 'required|string',
        ]);

        try {
            $name = $this->formatName($request->input('name'));
            $age = $this->extractAge($request->input('age'));
            $city = strtoupper($request->input('city'));

            User::create([
                'name' => $name,
                'age' => $age,
                'city' => $city,
            ]);

            return redirect()->route('index')->with('success', 'Data berhasil disimpan ke dalam database.');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Error: Format input tidak valid.');
        }
    }

    private function formatName($name)
    {
        // Mengubah name menjadi UPPERCASE saat dikirimkan
        return strtoupper($name);
    }

    private function extractAge($ageString)
    {
        // menggunakan regex untuk mengekstrak angka dari string usia
        $age = (int) preg_replace('/\D/', '', strtoupper(str_replace(['TAHUN', 'THN', 'TH'], '', $ageString)));

        return $age;
    }
}
