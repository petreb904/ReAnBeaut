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
   <div class="reanbeauty-cim-div"> <h2 class="reanbeauty-cim">ReAnBeauty</h2></div>
    <h2 class="homepage-cim">Log in </h2>
       <button class="bejelentkezes-gomb">Log in</button>
     <br>
      <button class="regisztracio">Sign up</button>

      
    </header>
    
</body>