@extends('layouts.app')

@section('title', 'Home')

@section('content')
    
<div class="container-fluid py-5">
   
     <!-- Texte en français -->
     <div class="mt-4">
        <h2>{{ __('messages.category_management') }}</h2>
        <p>{{ __('messages.welcome_message') }}</p>

        <h3>{{ __('messages.available_actions') }}</h3>
        <ul>
            <li><strong>{{ __('messages.add_category') }}</strong></li>
            <li><strong>{{ __('messages.edit_category') }}</strong></li>
            <li><strong>{{ __('messages.delete_category') }}</strong></li>
        </ul>

        <h3>{{ __('messages.category_list') }}</h3>
        <ul>
            <li><strong>{{ __('messages.id') }}</strong></li>
            <li><strong>{{ __('messages.name') }}</strong></li>
        </ul>

        <p>{{ __('messages.manage_categories') }}</p>
    </div>
</div>


@endsection