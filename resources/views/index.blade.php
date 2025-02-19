@extends("layouts.layout")
@section("title", "Főoldal")
@section("content")

    
        <img src="{{ url('kepek/ReAnBeautyFokep.png') }}" class="ReAnFokep" alt="ReAnLogo">
        
            <!-- Szöveg bal oldalon -->
            <div class="reanbeauty-cim-div"> <h1>ReAnBeauty</h1> </div>

               <div class="reklamszoveg-div"> <p class="reklamszoveg">
                    
            Discover the True Power of Beauty with ReAnBeauty! <br>
            🌟 Skincare. Haircare. Routines. Inspiration. 🌟<br>

            ReAnBeauty is a community where:<br>
            💄 You’ll find the best skincare and haircare products.<br>
            💡 Learn tried-and-true beauty routines to make your skin and hair glow.<br>
            📸 Share your own tips and inspire others!<br>

            Join us and create your personalized beauty world!<br>
            🌺 ReAnBeauty – For the beauty that is you. 🌺<br>

            Visit us now and start your journey of discovery! ✨<br>

            <button class="button-join"> Join now to ReAnBeauty! </button>                </p></div>
            
            <!-- Kör alakú logó jobb oldalon -->
            <div class="container-logo">
                <img src="{{ url('kepek/ReAnLogo.png') }}" alt="ReAnLogo">
            </div>

            

@endsection