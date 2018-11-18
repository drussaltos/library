<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class Book extends Model
{
    protected $fillable = ['title', 'description'];

    public function authors()
    {
        return $this->belongsToMany(
            Author::class,
            'book_authors',
            'book_id',
            'author_id'
        );
    }

    public static function add($fields)
    {
        $book = new static();
        $book->fill($fields);
        $book->save();

        return $book;
    }

    public function edit($fields)
    {
        $this->fill($fields);
        $this->save();
    }

    public function remove()
    {
        Storage::delete('uploads/' . $this->file);
        $this->delete();
    }

    public function uploadBook($file)
    {
        if($file == null) { return; }

        if ($this->file != null)
        {
            Storage::delete('uploads/' . $this->file);
        }

        Storage::delete('uploads/' . $this->file);
        $filename = str_random(10) . '.' . $file->extension();
        $file->storeAs('uploads', $filename);
        $this->file = $filename;
        $this->save();
    }

    public function setAuthors($ids)
    {
        if ($ids == null) { return; }

        $this->authors()->sync($ids);
    }

    public function getNameAuthors()
    {
        $authors = implode(', ', $this->authors->pluck('name')->all());
        return $authors;
    }
}

