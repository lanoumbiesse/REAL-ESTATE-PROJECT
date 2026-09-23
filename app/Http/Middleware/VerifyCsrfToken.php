<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
        //
        'https://ucgrealestate.ae/admin/property',
        'http://ucgrealestate.ae/admin/property',
      'http://ucgrealestate.ae/sauvegarde',
       'https://ucgrealestate.ae/sauvegarde',
    ];
}
