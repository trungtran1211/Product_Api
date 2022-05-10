<?php

namespace App\Http\Middleware;
use Closure;

use Illuminate\Contracts\Auth\Guard;
use Illuminate\Support\Facades\Request;
use Illuminate\Http\RedirectResponse;
use Auth;

class checkadmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (!in_array($request->user()->level,[1,2,3])) {
            return abort(503);
        }
        return $next($request);
    }
        
}
