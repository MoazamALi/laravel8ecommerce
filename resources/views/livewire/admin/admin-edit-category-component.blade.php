<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Edit Category
                            </div>
                            <div class="col-md-6">
                                <a href="{{ route('admin.categories') }}" class="btn btn-success pull-right">All Categories</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if(Session::has('success-message'))
                            <div class="alert alert-success">
                                {{ Session::get('success-message') }}
                            </div>
                        @endif
                        <form action="" class="form-horizontal" wire:submit.prevent="updateCategory()">
                            <div class="form-group">
                                <label for="" class="col-md-4 control-label">Category Name</label>
                                <div class="col-md-4">
                                    <input type="text" wire:model="name" placeholder="Category Name" wire:keyup="generateslug()" class="form-control input-md"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-md-4 control-label">Category Slug</label>
                                <div class="col-md-4">
                                    <input readonly type="text" wire:model="slug" placeholder="Category Slug" class="form-control input-md"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
