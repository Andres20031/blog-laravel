<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="/">

            <img src="https://marketplace.canva.com/EAFYOuP8JZY/1/0/1600w/canva-free-simple-modern-circle-design-studio-logo-O1RnI0wALgo.jpg"
                alt="Logo" width="75" height="75">
        </a>

        <div class="container text-center">
            <ul class="navbar-nav d-flex justify-content-center">
                @foreach ($categories as $category)
                    <li class="nav-item">
                        <a href="{{ route('posts.category', $category) }}" class="nav-link">{{ $category->name }}</a>
                    </li>
                @endforeach

                @can('admin.home')
                    <li class="nav-item">
                        <a href="{{ route('admin.home') }}"
                            class="nav-link text-sm font-semibold leading-6 text-gray-900">Dashboard</a>
                    </li>
                @endcan

                @if (Auth::check())
                    <li class="nav-item">
                        <form method="POST" action="{{ route('logout') }}">
                            @csrf
                            <button type="submit" class="btn btn-link text-sm font-semibold leading-6 text-gray-900">
                                {{ __('Log Out') }}
                            </button>
                        </form>
                    </li>
                @endif
            </ul>
        </div>
    </div>


    <div class="d-flex flex-lg-grow-1 justify-content-end align-items-center">
        <a href="{{ route('profile.show') }}" class="nav-link">
            @auth
                <img class="rounded-circle" src="{{ auth()->user()->profile_photo_url }}" alt="User Profile" width="48"
                    height="48">
            @else
                <a href="{{ route('login') }}" class="btn btn-outline-dark"><strong>Log in</strong></a>
                <a href="{{ route('register') }}" class="btn btn-outline-dark">
                    <strong>Sign up</strong>
                </a>
            @endauth
        </a>
    </div>



</nav>
