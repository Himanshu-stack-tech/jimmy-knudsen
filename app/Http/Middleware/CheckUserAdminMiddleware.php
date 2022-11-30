<?php

namespace App\Http\Middleware;

use Closure;

class CheckUserAdminMiddleware
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

        $url = request()->path();

        if(auth()->user() && auth()->user()->role_id != 1 && strpos($url, 'admin') !== false) {
            return redirect()->route('site.index');
        }

        return $next($request);
    }
}
