<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use App\Models\Product;
use Livewire\Component;
use illuminate\Support\Str;
use Carbon\Carbon;
use Livewire\WithFileUploads;

class AdminAddProductComponent extends Component
{

	use WithFileUploads;
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
	public $category_id;

	public function generateslug(){
        $this->slug=Str::slug($this->name);
    }

    public function addProduct(){
    	$product = new Product();
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
		 $imageName = Carbon::now()->timestamp.'.'.$this->image->extension();
		
		$this->image->storeAs('products',$imageName);
		 $product->image  = $imageName;
		 $product->category_id  = $this ->category_id;
		 $product->save();
		 session()->flash('success_message','Product has been created succesfully!');
    }

	public function mount(){
		$this->stock_status='instock';
		$this->featured=0;
	}

    public function render()
    {
        $categories = Category::all();
        return view('livewire.admin.admin-add-product-component',['categories'=>$categories])->layout('layouts.base');
    }
}
