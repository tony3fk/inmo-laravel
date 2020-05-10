<?php

namespace App\Http\Controllers;

use App\Inmueble;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests\StoreInmuebleRequest;


class InmueblesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        if ($request->user()->authorizeRoles(['admin', 'user'])) { //con esto sólo lo ven si eres admin o user

            $inmuebles = Inmueble::all();
            return view('inmuebles.index', compact('inmuebles'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        if ($request->user()->authorizeRoles(['admin'])) { //sólo admins autorizados
            return view('inmuebles.create');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreInmuebleRequest $request)
    {

        if ($request->user()->authorizeRoles(['admin'])) { //si eres admin puedes insertar en BBDD

            if ($request->hasFile('imagen')) {
                $file = $request->file('imagen');
                $fileName = time() . $file->getClientOriginalName();
                $file->move(base_path('public') . '/images/', $fileName);
            } else {
                $fileName = 'thumb_placeholder.jpg';
            }

            $data = array(
                'tipo' => $request->input('tipo'),
                'operacion' => $request->input('operacion'),
                'provincia' => $request->input('provincia'),
                'superficie' => $request->input('superficie'),
                'precio' => $request->input('precio'),
                'imagen' => '/images/' . $fileName,
                'created_at' => date('Y-m-d H:i:s', time())
            );
            DB::table('inmuebles')->insert($data);
            return redirect('inmuebles');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, Inmueble $inmueble)
    {
        if ($request->user()->authorizeRoles(['admin', 'user'])) {
            //$inmueble = Inmueble::find($referencia);
            return view('inmuebles.show', compact('inmueble'));
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, Inmueble $inmueble)
    {
        if ($request->user()->authorizeRoles(['admin'])) { //con esto sólo lo ven si eres admin

            return view('inmuebles.edit', compact('inmueble'));
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Inmueble $inmueble)
    {
        if ($request->user()->authorizeRoles(['admin'])) { //con esto sólo lo ven si eres admin

            $request->updated_at = date('Y-m-d H:i:s', time()); //actualiza el campo update_at
            $inmueble->fill($request->except('imagen'));
            if ($request->hasFile('imagen')) {
                $file = $request->file('imagen');
                $fileName = time() . $file->getClientOriginalName();
                $inmueble->imagen = '/images/' . $fileName;
                $file->move(base_path('public') . '/images/', $fileName);
            }
            $inmueble->save();
            // return view('inmuebles.show', compact('inmueble')); //las dos formas son válidas
            return \redirect()->route('inmuebles.show', [$inmueble])->with('status', 'Inmueble actualizado correctamente');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Inmueble $inmueble)
    {
        if ($request->user()->authorizeRoles(['admin'])) { //con esto sólo lo ven si eres admin

            $file_path = public_path() . $inmueble->imagen;
            \File::delete($file_path);
            $inmueble->delete();
            return redirect('inmuebles');
        }
    }
}
