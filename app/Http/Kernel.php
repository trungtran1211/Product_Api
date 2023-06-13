<?php

namespace App\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    /**
     * The application's global HTTP middleware stack.
     *
     * These middleware are run during every request to your application.
     *
     * @var array
     */
    protected $middleware = [
        \App\Http\Middleware\CorsMiddleware::class,
        \Illuminate\Foundation\Http\Middleware\CheckForMaintenanceMode::class,
        \Illuminate\Foundation\Http\Middleware\ValidatePostSize::class,
        \App\Http\Middleware\TrimStrings::class,
        \Illuminate\Foundation\Http\Middleware\ConvertEmptyStringsToNull::class,
    ];

    /**
     * The application's route middleware groups.
     *
     * @var array
     */
    protected $middlewareGroups = [
        'web' => [
            \App\Http\Middleware\EncryptCookies::class,
            \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
            \Illuminate\Session\Middleware\StartSession::class,
            //\Illuminate\Session\Middleware\AuthenticateSession::class,
            \Illuminate\View\Middleware\ShareErrorsFromSession::class,
            \App\Http\Middleware\VerifyCsrfToken::class,
            \Illuminate\Routing\Middleware\SubstituteBindings::class,

        ],

        'api' => [
            \Fruitcake\Cors\HandleCors::class,
            'throttle:5000,1',
            'bindings',
        ],
    ];

    /**
     * The application's route middleware.
     *
     * These middleware may be assigned to groups or used individually.
     *
     * @var array
     */
    protected $routeMiddleware = [
        'CheckLogedIn' => \App\Http\Middleware\CheckLogedIn::class,
        'CheckLogedOut' => \App\Http\Middleware\CheckLogedOut::class,
        'auth' => \Illuminate\Auth\Middleware\Authenticate::class,
        'auth.basic' => \Illuminate\Auth\Middleware\AuthenticateWithBasicAuth::class,
        'bindings' => \Illuminate\Routing\Middleware\SubstituteBindings::class,
        'can' => \Illuminate\Auth\Middleware\Authorize::class,
        'guest' => \App\Http\Middleware\RedirectIfAuthenticated::class,
        'throttle' => \Illuminate\Routing\Middleware\ThrottleRequests::class,
        'lang' => \App\Http\Middleware\LangMiddleware::class,
        'leveladmin' => \App\Http\Middleware\checkadmin::class,
        'levelgiaohang' => \App\Http\Middleware\checknv::class,
        'duyet' => \App\Http\Middleware\checkduyet::class,
        'duyetadmin' => \App\Http\Middleware\admin::class,
        'duyetnguoidung' => \App\Http\Middleware\Checknguoidung::class,
        'cors' => App\Http\Middleware\CORS::class,
        'jwt.verify' => \App\Http\Middleware\JwtMiddleware::class,
        'jwt.refresh' => 'Tymon\JWTAuth\Middleware\RefreshToken',
        'jwt.auth' => \App\Http\Middleware\VerifyJWTToken::class,
    ];
}
