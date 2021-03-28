<div>
<div class="container" style="padding:30px 0; ">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="col-md-6">
                        Add New Product
                    </div>
                    <div class="col-md-6">
                        <a href="{{ route('admin.products') }}" class="btn btn-success pull-right">All Products</a>
                    </div>
                </div>
                <div class="panel-body">
                     @if(Session::has('success-message'))
                            <div class="alert alert-success">
                                {{ Session::get('success-message') }}
                            </div>
                        @endif
                    <form wire:submit.prevent="addProduct" 
                    action="" class="form-horizontal" enctype="multipart/form-data">
                        <div class="form-group">
                            <div class="col-md-4 control-label">Product Name</div>
                            <div class="col-md-4">
                                <input type="text" wire:keyup="generateslug" placeholder="Name" class="form-control input-md" wire:model="name"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Product Slug</div>
                            <div class="col-md-4">
                                <input type="text" placeholder="Slug" wire:model="slug"
                                class="form-control input-md"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Short Description</div>
                            <div class="col-md-4">
                                <textarea class="form-control" name=""
wire:model="short_description"
                                 id="" cols="30" rows="10" ></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Description</div>
                            <div class="col-md-4">
                                <textarea class="form-control" name=""
wire:model="description"
                                 id="" cols="30" rows="10" ></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Regular Price</div>
                            <div class="col-md-4">
                                <input type="text" placeholder="Regular Price" 
wire:model="regular_price"
                                class="form-control input-md"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Sale Price</div>
                            <div class="col-md-4">
                                <input type="text"wire:model="sale_price" 
                                placeholder="Regular Price" class="form-control input-md"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">SKU</div>
                            <div class="col-md-4">
                                <input type="text" placeholder="sku"wire:model="sku" 
                                class="form-control input-md"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Stock</div>
                            <div class="col-md-4">
                                <select
wire:model="stock_status"
                                 class="form-control">
                                    <option value="instock">In Stock</option>
                                    <option value="outofstock">Out Of Stock</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Featured</div>
                            <div class="col-md-4">
                                <select
wire:model="featured"
                                 class="form-control">
                                    <option value="0">No</option>
                                    <option value="1">Yes</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Quantity</div>
                            <div class="col-md-4">
                                <input type="text"wire:model="quantity" 
                                placeholder="Quantity" class="form-control input-md"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Product Image</div>
                            <div class="col-md-4">
                                <input wire:model="image" type="file" class="input-file"/>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label">Category</div>
                            <div class="col-md-4">
                                <select 
wire:model="category_id"
                                class="form-control">
                                    <option value="">Select</option>
                                    @foreach($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4 control-label"></div>
                            <div class="col-md-4">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
