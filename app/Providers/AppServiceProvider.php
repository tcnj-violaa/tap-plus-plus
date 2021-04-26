<?php
/**
 * Primary Maintainer: Raymond Chow
 */

namespace App\Providers;

use App\Core\Facades\Auth;
use App\Core\Implementation\TapAuthentication;
use Illuminate\Support\ServiceProvider;

/**
 * Application service provider
 *
 * @package App\Providers
 */
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind('tap-authentication', function ($app) {
            return new TapAuthentication();
        });
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
