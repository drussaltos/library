<?php

namespace App\Http\Controllers;

use App\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    /**
     * @var DB
     */
    private $DB;

    public function __construct(DB $DB)
    {
        $this->DB = $DB;
    }

    public function index()
    {
        $books = Book::has('authors', '>=', 3)->get();

        return view('dashboard', ['books' => $books]);

    }
}
