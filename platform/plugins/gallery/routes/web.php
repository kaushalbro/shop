<?php

use Botble\Base\Facades\AdminHelper;
use Botble\Gallery\Models\Gallery;
use Botble\Slug\Facades\SlugHelper;
use Botble\Theme\Facades\Theme;
use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Botble\Gallery\Http\Controllers'], function (): void {
    AdminHelper::registerRoutes(function (): void {
        Route::group(['prefix' => 'galleries', 'as' => 'galleries.'], function (): void {
            Route::resource('', 'GalleryController')->parameters(['' => 'gallery']);
        });
    });

    if (defined('THEME_MODULE_SCREEN_NAME')) {
        Theme::registerRoutes(function (): void {
            if (! theme_option('galleries_page_id')) {
                $prefix = SlugHelper::getPrefix(Gallery::class, 'galleries');

                Route::get($prefix ?: 'galleries', [
                    'as' => 'public.galleries',
                    'uses' => 'PublicController@getGalleries',
                ]);
            }
        });
    }
});
