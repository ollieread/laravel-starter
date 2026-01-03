<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Laravel Starter Kit

This is a Laravel starter kit created by myself. It’s an opinionated setup that I almost always use, created entirely
to skip the boilerplate process of setting everything up. It contains the following changes from the default
`laravel/laravel` installation:

- Routing, middleware and exceptions are handled by their own classes in `app/Boot`.
- The `routes` directory has been removed and routes are instead defined in `app/Http/Routes` using classes that
  implement the `App\Support\RouteMapper` interface. These classes are then added to `app/Boot/ConfigureRoutes.php`.
- The `app/Http/Controllers` directory has been removed as a side effect due to the remove of the default
  `Controller` class.
- All default migrations have been removed.
- Logs are set to daily.
- Services that were set to use a database by default have been set back to use file, or `sync` in the case of jobs.
- Telescope is installed by default.
- Stubs are published by default.
- Larastsan is installed by default and set to `max`.
- The `tpetry/laravel-postgresql-enhanced` package is installed, and migration stubs have been set to use it.
- All default config has been published.
- The framework is told not to merge in the default config.
- Tailwind has been removed
- SaSS has been added.
- Vite has been configured to use `resources/scss/app.scss` as the entry point.
