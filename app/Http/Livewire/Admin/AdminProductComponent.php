<?php

namespace App\Http\Livewire\Admin;

use App\Models\Product;
use Livewire\Component;
use livewire\withPagination;

class AdminProductComponent extends Component
{
    use withPagination;
    public function render()
    {
        $products = Product::paginate(10);
        return view('livewire.admin.admin-product-component',['products'=>$products])->layout('layouts.base');
    }
}
