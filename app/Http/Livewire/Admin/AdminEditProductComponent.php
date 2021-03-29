<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use App\Models\Product;
use Livewire\Component;
use illuminate\Support\Str;
use Carbon\Carbon;
use Livewire\WithFileUploads;

class AdminEditProductComponent extends Component
{
    use WithFileUploads;

    public $product_slug;
    public $product_id;

    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $regular_price;
    public $sale_price;
    public $sku;
    public $stock_status;
    public $featured;
    public $quantity;
    public $image;
    public $newimage;
    public $category_id;

    public function mount($product_slug){
        $this->product_slug = $product_slug;
        $product = Product::where('slug',$product_slug)->first();
        $this->product_id = $product->id;
        $this->name  = $product->name;
        $this->slug =    $product->slug;
        $this->short_description =    $product->short_description;
        $this->description =    $product->description;
        $this->regular_price =    $product->regular_price;
        $this->sale_price =    $product->sale_price;
        $this->sku =    $product->sku;
        $this->stock_status =    $product->stock_status;
        $this->featured =    $product->featured;
        $this->quantity =    $product->quantity;
        $this->image =    $product->image;
        //$this->newimage =    $product->image;
        $this->category_id =    $product->category_id;


    }
    public function generateslug(){
        $this->slug=Str::slug($this->name);
    }

    public function editProduct(){
        $product = Product::find($this->product_id);
        $product->name = $this ->name;
        $product->slug  = $this ->slug;
        $product->short_description  = $this ->short_description;
        $product->description  = $this ->description;
        $product->regular_price  = $this ->regular_price;
        $product->sale_price  = $this ->sale_price;
        $product->sku  = $this ->sku;
        $product->stock_status  = $this ->stock_status;
        $product->featured  = $this ->featured;
        $product->quantity  = $this ->quantity;
        if($this->newimage){
            $imageName = Carbon::now()->timestamp.'.'.$this->newimage->extension();
            $this->newimage->storeAs('products',$imageName);
            $product->image  = $imageName;
        }

        $product->category_id  = $this ->category_id;
        $product->save();
        session()->flash('success_message','Product has been edited succesfully!');
    }
    public function render()
    {
        $categories = Category::all();
        return view('livewire.admin.admin-edit-product-component',['categories'=>$categories])->layout('layouts.base');
    }
}
