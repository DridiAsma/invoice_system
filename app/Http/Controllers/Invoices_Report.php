<?php

namespace App\Http\Controllers;

use App\Models\invoices;
use Illuminate\Http\Request;


class Invoices_Report extends Controller
{
    public function index(){

     return view('reports.invoices_report');

    }

    public function Search_invoices(Request $request){
       
        $rdio = $request->rdio;

     //In the case of a search by invoice type
    if ($rdio == 1) {
        //If no date is specified
        if ($request->type && $request->start_at =='' && $request->end_at =='') {
           $invoices = invoices::select('*')->where('Status','=',$request->type)->get();
           $type = $request->type;
           return view('reports.invoices_report',compact('type'))->with('details', $invoices);
        }
        //If a due date is specified
        else {
          $start_at = date($request->start_at);
          $end_at = date($request->end_at);
          $type = $request->type;
          $invoices = invoices::whereBetween('invoice_Date',[$start_at,$end_at])->where('Status','=',$request->type)->get();
          return view('reports.invoices_report',compact('type','start_at','end_at'))->with('details',$invoices);
        }
    }else {
          // In the search by invoice number
        $invoices = invoicES::select('*')->where('invoice_number','=',$request->invoice_number)->get();
        return view('reports.invoices_report')->with('details',$invoices);
    }
    }
}
