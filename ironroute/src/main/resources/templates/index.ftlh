<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IronRoute - Booking system</title>
    <script src="https://kit.fontawesome.com/047a896e47.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styleIndex.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!--
      - custom css link
    -->
    <link rel="stylesheet" href="styleIndex.css">

    <!--
      - google font link
    -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;700&family=Forum&display=swap" rel="stylesheet">
    <!--
     - google font link

   <link
     href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700;800&family=Poppins:wght@400;500;600;700&display=swap"
     rel="stylesheet">-->
</head>

<body id="top">

<!--
  - #HEADER
-->

<header class="header" data-header>

    <div class="overlay" data-overlay></div>

    <div class="header-top">
        <div class="container">

            <div class="header-btn-group">
                <button class="nav-open-btn" aria-label="Open Menu" data-nav-open-btn>
                    <ion-icon name="menu-outline"></ion-icon>
                </button>

            </div>

        </div>
    </div>

    <div class="header-bottom">
        <div class="container">



            <nav class="navbar" data-navbar>

                <div class="navbar-top">



                    <button class="nav-close-btn" aria-label="Close Menu" data-nav-close-btn>
                        <ion-icon name="close-outline"></ion-icon>
                    </button>

                </div>

            </nav>

        </div>
    </div>

</header>





<main>
    <article>

        <!--
          - #HERO
        -->

        <section class="hero" id="home">
            <div class="container">

                <h1 class="h1 hero-title">Discover the World Together!</h1>
                <p class="hero-text">
                    With IronRoute, you can effortlessly purchase tickets for your next adventure or arrange transportation for your cargo.
                    Our intuitive system ensures convenience and efficiency, allowing you to focus on what matters most – your journey.
                </p>
                <div class="btn-group">

                    <a href="/passenger" class="btn btn-primary">Passengers</a>
                    <a href="/ticket" class="btn btn-primary">Tickets</a>

                    <a href="/train" class="btn btn-secondary">Trains</a>
                    <a href="/route" class="btn btn-secondary">Routes</a>

                </div>

            </div>
        </section>






        <!--
          - #POPULAR
        -->

        <section class="popular" id="destination">
            <div class="container">

                <p class="section-subtitle">Uncover place</p>

                <h2 class="h2 section-title">Popular destination</h2>

                <p class="section-text">
                </p>

                <ul class="popular-list">

                    <li>
                        <div class="popular-card">

                            <figure class="card-img">
                                <img src="images/popular-1.jpg" alt="San miguel, italy" loading="lazy">
                            </figure>

                            <div class="card-content">

                                <div class="card-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                </div>

                                <p class="card-subtitle">
                                    <a href="#">Italy</a>
                                </p>

                                <h3 class="h3 card-title">
                                    <a href="#">San miguel</a>
                                </h3>

                                <p class="card-text">
                                    Situated in the heart of the Philippines, captivates with its vibrant culture, colonial architecture, and warm hospitality.
                                </p>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="popular-card">

                            <figure class="card-img">
                                <img src="images/popular-2.jpg" alt="Burj khalifa, dubai" loading="lazy">
                            </figure>

                            <div class="card-content">

                                <div class="card-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                </div>

                                <p class="card-subtitle">
                                    <a href="#">Dubai</a>
                                </p>

                                <h3 class="h3 card-title">
                                    <a href="#">Burj khalifa</a>
                                </h3>

                                <p class="card-text">
                                    Stands as an iconic symbol of modern engineering and architectural brilliance, towering majestically as the world's tallest building.
                                </p>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="popular-card">

                            <figure class="card-img">
                                <img src="images/popular-3.jpg" alt="Kyoto temple, japan" loading="lazy">
                            </figure>

                            <div class="card-content">

                                <div class="card-rating">
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                    <ion-icon name="star"></ion-icon>
                                </div>

                                <p class="card-subtitle">
                                    <a href="#">Japan</a>
                                </p>

                                <h3 class="h3 card-title">
                                    <a href="#">Kyoto temple</a>
                                </h3>

                                <p class="card-text">
                                    Offers a serene escape into the heart of Japanese spirituality, showcasing exquisite architecture and tranquil gardens.
                                </p>

                            </div>

                        </div>
                    </li>

                </ul>
            </div>
        </section>
    </article>
</main>

<!--
  - #FOOTER
-->

<footer class="footer">
    <div class="footer-bottom">
        <div class="container">

            <p class="copyright">
                &copy; 2024 <a href="">Liza Sejko</a>. IronRoute
            </p>

        </div>
    </div>

</footer>





<!--
  - #GO TO TOP
-->

<a href="#top" class="go-top" data-go-top>
    <ion-icon name="chevron-up-outline"></ion-icon>
</a>





<!--
  - custom js link
-->
<script src="./assets/js/script.js"></script>

<!--
  - ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</html>