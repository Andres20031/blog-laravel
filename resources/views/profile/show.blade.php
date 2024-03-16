@extends('layouts.app')

@section('title', 'Home')

@section('content')


<div class="container-fluid min-vh-100 d-flex align-items-center justify-content-center">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white text-center">
            <h2 class="font-semibold text-xl">
                {{ __('User Profile') }}
            </h2>   
        </div>

        <div class="card-body">
            @if (Laravel\Fortify\Features::canUpdateProfileInformation())
                <div class="mb-4">
                    <h4 class="mb-3">Update Profile Information</h4>
                    @livewire('profile.update-profile-information-form')
                </div>
            @endif

            @if (Laravel\Fortify\Features::enabled(Laravel\Fortify\Features::updatePasswords()))
                <div class="mb-4">
                    <h4 class="mb-3">Update Password</h4>
                    @livewire('profile.update-password-form')
                </div>
            @endif

            @if (Laravel\Fortify\Features::canManageTwoFactorAuthentication())
                <div class="mb-4">
                    <h4 class="mb-3">Two-Factor Authentication</h4>
                    @livewire('profile.two-factor-authentication-form')
                </div>
            @endif

            <div class="mb-4">
                <h4 class="mb-3">Logout Other Browser Sessions</h4>
                @livewire('profile.logout-other-browser-sessions-form')
            </div>

            @if (Laravel\Jetstream\Jetstream::hasAccountDeletionFeatures())
                <div class="mb-4">
                    <hr class="my-4">
                    <h4 class="mb-3">Delete Account</h4>
                    @livewire('profile.delete-user-form')
                </div>
            @endif
        </div>
    </div>
</div>






@endsection