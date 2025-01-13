header

<!DOCTYPE html>
<html lang="hu-en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield("title")</title>
    <link href="{{ asset('/css/style.css') }}" rel="stylesheet">
    <script src="https://kit.fontawesome.com/af0adec3b9.js" crossorigin="anonymous"></script>
  <script src="{{ asset('/js/program.js') }}"></script>
</head>
<body>
    
    <header class="fejlec">

        <img src="{{ url('kepek/ReAnLogo.png') }}" class="ReAnLogo" alt="ReAnLogo">
    <h2 class="reanbeauty-cim">ReAnBeauty</h2>
    <h2 class="homepage-cim">Homepage</h2>
       <button class="bejelentkezes-gomb">Log in</button>
     <br>
      <button class="regisztracio">Sign up</button>

       
      <div class="menu-container">
    <div class="menu-item">_____ <br>
                           _____ <br>
                           _____
                       
       <div class="dropdown-menu">  
                       
             <a href="#" class="termekek">Termékek</a>
                
             <a href="#">Rutinok</a>
              
             <a href="#">Profilom</a>
                
        </div>
      
    </header>
    