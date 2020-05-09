<?php

namespace App\Http\Controllers;

use App\Inmueble;
use Illuminate\Http\Request;
use DB;

class InmueblesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        if ($request->user()->authorizeRoles(['admin', 'user'])) { //con esto sólo lo ven si eres admin o user, sino con uno sólo

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

        if ($request->user()->authorizeRoles(['admin'])) { //con esto sólo lo ven si eres admin

            return view('inmuebles.create');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        if ($request->user()->authorizeRoles(['admin'])) { //si eres admin puedes insertar en BBDD

            $data = array(
                'tipo' => $request->input('tipo'),
                'operacion' => $request->input('operacion'),
                'provincia' => $request->input('provincia'),
                'superficie' => $request->input('superficie'),
                'precio' => $request->input('precio'),
                'imagen' => $request->input('imagen')
            );
            DB::table('inmuebles')->insert($data);
            return "Record inserted successfully.";


            //return $request->all();//muestra todo
            //return $request->input('tipo'); //muestra un attr


        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        if ($request->user()->authorizeRoles(['admin', 'user'])) { //con esto sólo lo ven si eres admin o user, sino con uno sólo

            return "estoy en inmuebles/show/id=" . $id;
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->user()->authorizeRoles(['admin'])) { //con esto sólo lo ven si eres admin

            return "estoy en inmuebles/edit/id=" . $id;
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if ($request->user()->authorizeRoles(['admin'])) { //con esto sólo lo ven si eres admin

            return "estoy en inmuebles/update/{id}";
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->user()->authorizeRoles(['admin'])) { //con esto sólo lo ven si eres admin

            return "estoy en inmuebles/destroy/{id}";
        }
    }
}
