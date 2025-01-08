<!DOCTYPE html>
<html lang="hu-en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Főoldal</title>
    <link href="{{ asset('/css/style.css') }}" rel="stylesheet">
    <script src="https://kit.fontawesome.com/af0adec3b9.js" crossorigin="anonymous"></script>
</head>
    <body>
     <header class="fejlec">
     <img src="{{ url('kepek/ReAnLogo.png') }}"  class="ReAnLogo" alt="ReAnLogo">
     
    
     <h3 class="bejelentkezes-regisztracio">Bejelentkezés/Regisztráció</h3>
     
     </header>
     
      <main>
                <h2 class="fooldalcim">Főoldal</h2>
                <img src="{{ url('kepek/ReAnBeautyFokep.png') }}"  class="ReAnFokep" alt="ReAnLogo">
                <div class="container">
             <div class="text">
             <h1>Bal oldali szöveg</h1>
              <p>Ez egy példa szöveg a bal oldalon.</p>
             </div>
            <div class="container-logo">
            <img src="{{ url('kepek/ReAnLogo.png') }}"  class="ReAnFokep" alt="ReAnLogo">

            </div>
            </div>

        </main>
        
    </body>
</html>
