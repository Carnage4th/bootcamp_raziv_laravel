<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="antialiased bg-gradient-to-r from-pink-300 via-purple-300 to-indigo-400">
        @include('layouts.navbar')
        <div class="container my-12 mx-auto px-4 md:px-12">
            @include('components.home.hero')
            <div class="my-12"></div>
            @include('components.home.services')
        </div>
    </body>
</html>
