<aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="./"><img src="public/admin/images/logo.png" alt="Logo"></a>
                <a class="navbar-brand hidden" href="./"><img src="public/admin/images/logo2.png" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="./back"> <i class="fa fa-dashboard"></i>Dashboard </a>
                    </li>
                    @permission(['Permission Update','All','Permission'])
                    <li><a href="{{ url('/back/permission') }}"> <i class="fa fa-laptop"></i>Permission </a></li>
                    @endpermission

                    @permission(['Permission Update','All'])
                   <li> <a href="{{ url('/back/roles') }}"> <i class="fa fa-laptop"></i>Role </a></li>
                     @endpermission
                    
                    @permission(['Permission Update','All'])
                    <li> <a href="{{ url('/back/author') }}"> <i class="fa fa-laptop"></i>Author </a></li>
                     @endpermission

                     @permission(['Category List','All'])
                    <li> <a href="{{ url('/back/category') }}"> <i class="fa fa-laptop"></i>Category </a></li>
                     @endpermission
                      @permission(['Post List','All'])
                    <li> <a href="{{ url('/back/posts') }}"> <i class="fa fa-laptop"></i>Post </a></li>
                     @endpermission
                     

                   <!-- /.menu-title -->      
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</aside><!-- /#left-panel -->