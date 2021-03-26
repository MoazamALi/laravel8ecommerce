<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use Livewire\Component;
use Livewire\withPagination;

class AdminCategoryComponent extends Component
{
    use withPagination;
    public function deleteCategory($id){
        $cat = Category::find($id);
        $cat->delete();
        session()->flash('success-message','Category has been deleted Succesfully');
    }
    public function render()
    {
        $categories = Category::paginate(5);
        return view('livewire.admin.admin-category-component',['categories'=>$categories])->layout('layouts/base');
    }
}
