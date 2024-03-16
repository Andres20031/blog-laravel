<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="/">
            
            <img src="https://img.freepik.com/free-vector/bird-colorful-logo-gradient-vector_343694-1365.jpg?size=338&ext=jpg&ga=GA1.1.1395880969.1709902800&semt=sph" alt="Logo" width="75" height="75">
        </a>


        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                @foreach ($categories as $category)
                <li class="nav-item">
                    <a href="{{ route('posts.category', $category) }}" class="nav-link">{{ $category->name }}</a>
                </li>
                @endforeach

                @can('admin.home')
                <li class="nav-item">
                    <a href="{{ route('admin.home') }}" class="nav-link text-sm font-semibold leading-6 text-gray-900">Dashboard</a>
                </li>
                @endcan

            </ul>
          
            <form method="POST" action="{{ route('logout') }}" x-data>
                @csrf
                <button type="submit" class="btn btn-link text-sm font-semibold leading-6 text-gray-900">
                    {{ __('Log Out') }}
                </button>
            </form>
        </div>
    </div>


    <div class="d-flex flex-lg-grow-1 justify-content-end align-items-center">
        <a href="{{ route('profile.show') }}" class="nav-link">
            @auth
            <img class="rounded-circle" src="{{ auth()->user()->profile_photo_url }}" alt="User Profile" width="48" height="48">
            @else
            <a href="{{ route('login') }}" class="btn btn-outline-dark"><strong>Log in</strong></a>
            <a href="{{ route('register') }}" class="btn btn-outline-dark">
                 <strong>Sign up</strong>
            </a>
            @endauth
        </a>
        
    </div>



</nav>