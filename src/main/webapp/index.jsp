<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblio</title>

    <link rel="stylesheet" href="FRONT-END/css/bootstrap.css">
    <link rel="stylesheet" href="FRONT-END/css/header.css">
    <link rel="stylesheet" href="FRONT-END/css/main.css">
    <link rel="stylesheet" href="FRONT-END/css/footer.css">
    <link rel="stylesheet" href="FRONT-END/css/caroussel.css">
    <link rel="stylesheet" href="FRONT-END/css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>

<header id="nav-bar">
    <nav class="nav-bar">
        <div class="logo">
            <img src="FRONT-END/images/logo.svg" alt="Notre logo">
            <h2>Biblio</h2>
        </div>
        <div>
            <ul class="nav-right">
                <li><a href="list_livre?action=acceuil">Accueil</a></li>
                <li><a href="list_livre?action=list">Etudiants</a></li>
            </ul>
        </div>
    </nav>
</header>
<main>
    <section class="carousel">
    <div class="carousel-container">
        <div class="carousel-slide active">
            <img src="FRONT-END/images/nback1.jpg" alt="Image 1">
        </div>
        <div class="carousel-slide">
            <img src="FRONT-END/images/nback2.jpg" alt="Image 2">
        </div>
        <div class="carousel-slide">
            <img src="FRONT-END/images/nback3.jpg" alt="Image 3">
        </div>
        <div class="carousel-slide">
            <img src="FRONT-END/images/nback4.jpg" alt="Image 4">
        </div>
        <div class="carousel-slide">
            <img src="FRONT-END/images/nback5.jpg" alt="Image 5">
        </div>
        <div class="carousel-slide">
            <img src="FRONT-END/images/nback6.jpg" alt="Image 6">
        </div>
        <a class="prev" onclick="moveSlide(-1)">&#10094;</a>
        <a class="next" onclick="moveSlide(1)">&#10095;</a>
    </div>
    </section>
    <div class="center">
        <img src="FRONT-END/images/redcenter.svg" alt="logo">
    </div>
    <section class="list_cards">
        <div class="card-group container">
            <div class="card">
                <img src="FRONT-END/images/nback1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                </div>
            </div>
            <div class="card">
                <img src="FRONT-END/images/nback1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                </div>
            </div>
            <div class="card">
                <img src="FRONT-END/images/nback1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                </div>
            </div>
        </div>
    </section>
    <div class="center">
        <img src="FRONT-END/images/redcenter.svg" alt="logo">
    </div>
</main>

<script src="FRONT-END/js/scripte.js"></script>
</body>
</html>