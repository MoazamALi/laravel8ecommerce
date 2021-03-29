<div>
    <div class="container" style="padding: 20px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="col-md-6">All Products</div>
                        <div class="col-md-6">
                            <a href="{{route('admin.addproduct')}}" class="btn btn-primary pull-right">
                                Add Product
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Stock</th>
                                    <th>Price</th>
                                    <th>Category</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($products as $product)
                                    <tr>
                                        <td>{{$product->id}}</td>
                                        <td><img style="width:32px;" src="{{ asset('assets/images/products') }}/{{$product->image}}"/> </td>
                                        <td>{{$product->name}}</td>
                                        <td>{{$product->stock_status}}</td>
                                        <td>{{$product->regular_price}}</td>
                                        <td>{{$product->Category->name}}</td>
                                        <td>{{$product->created_at}}</td>
                                        <td>
                                            <a href="{{ route('admin.editproduct',['product_slug'=>$product->slug]) }}" >
                                                <i class="fa fa-edit fa-2x"></i>
                                                Edit
                                            </a>
                                            <a href="#" wire:click.prevent="deleteProduct({{$product->id}})" style="margin-left: 10px;">
                                                <i class="fa fa-times fa-2x text-danger"></i>
                                                Delete
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        {{ $products->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
