<div>
    <style>
        nav svg{
            height:20px;
        }
        nav .hidden{
            display: block !important;
        }
    </style>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel-heading">
                    <div class="col-md-6">All Categories</div>
                    <div class="col-md-6"><a href="{{ route('admin.addcategory') }}" class="btn btn-success pull-right">Add Category</a> </div>
                </div>
                <div class="panel-body">
                    @if(Session::has('success-message'))
                        <div class="alert alert-success">
                            {{ Session::get('success-message') }}
                        </div>
                    @endif
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Category Name</th>
                                <th>Slug</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody >
                            @foreach($categories as $category)
                                <tr>
                                    <td>{{ $category->id }}</td>
                                    <td>{{ $category->name }}</td>
                                    <td>{{ $category->slug }}</td>
                                    <td>
                                        <a href="{{ route('admin.editcategory',['category_slug'=>$category->slug]) }}" >
                                            <i class="fa fa-edit fa-2x"></i>
                                            Edit
                                        </a>
                                        <a href="#" wire:click.prevent="deleteCategory({{$category->id}})" style="margin-left: 10px;">
                                            <i class="fa fa-times fa-2x text-danger"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{ $categories ->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
