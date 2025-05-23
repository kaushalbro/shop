<?php

use Botble\Theme\Theme;
use Illuminate\View\View;

return [
    'inherit' => 'shofy',

    'events' => [
        'beforeRenderTheme' => function (Theme $theme): void {
            $theme->asset()->usePath()->add('shofy-theme', 'css/theme.css');

            $theme->partialComposer('header.*', function (View $view): void {
                $headerTopBackgroundColor = theme_option('header_top_background_color', '#fff');
                $headerTopTextColor = theme_option('header_top_text_color', '#010f1c');
                $headerMainBackgroundColor = theme_option('header_main_background_color', 'transparent');
                $headerMainTextColor = theme_option('header_main_text_color', '#010f1c');

                $view->with(compact(
                    'headerTopBackgroundColor',
                    'headerTopTextColor',
                    'headerMainBackgroundColor',
                    'headerMainTextColor'
                ));
            });
        },
    ],
];
