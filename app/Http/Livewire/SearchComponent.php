<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;
use App\Models\Category;

class SearchComponent extends Component
{
    use WithPagination;
    public $sorting;
    public $pagesize;

    public $search;
    public $product_cat;
    public $product_cat_id;



    public function mount(){
        $this->sorting = "default";
        $this->pagesize = "12";
        $this->fill(request()->only('search','product_cat','product_cat_id'));
    }
    public function store($product_id,$product_name,$product_price){
        Cart::add($product_id,$product_name,1,$product_price)->associate('App\Models\Product');
        session()->flash('success_message','Item added in Cart');
        return redirect()->route('product.cart');
    }
    public function render()
    {

        $where_clause =  array();
        if(!empty($this->search)){
            $where_clause[]=['name','like','%'.$this->search.'%'];
        }
        if($this->product_cat_id > 0){
            $where_clause[]=['category_id',$this->product_cat_id];
        }
        if($this->sorting == 'date'){
            $products = Product::where($where_clause)->orderBy('created_at','desc')->paginate($this->pagesize);
        }else if($this->sorting == 'price'){
            $products = Product::where($where_clause)->orderBy('regular_price','asc')->paginate($this->pagesize);
        }else if($this->sorting == 'price-desc'){
            $products = Product::where($where_clause)->orderBy('regular_price','desc')->paginate($this->pagesize);
        }else{
            $products = Product::where($where_clause)->paginate($this->pagesize);
        }
        $categories = Category::all();

        return view('livewire.search-component',['products'=>$products,'categories'=>$categories])->layout('layouts.base');
    }
}
