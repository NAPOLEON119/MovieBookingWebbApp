<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  if (session == null || session.getAttribute("username") == null) {
    response.sendRedirect("login.jsp");
    return;
  }
  String username = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Dashboard | Movie Booking</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/global.css" rel="stylesheet">
  <link href="css/index.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>

<!-- TOP Welcome Section -->

<!-- HEADER MENU BAR -->
<div class="main clearfix position-relative">
  <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none; top:0;" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content bg-transparent border-0">
        <div class="modal-header border-0">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-close"></i></button>
        </div>
        <div class="modal-body p-0">
          <div class="search_1">
            <div class="input-group">
              <input type="text" class="form-control bg-white border-0" placeholder="Search...">
              <span class="input-group-btn">
                                <button class="btn btn-primary bg_oran border_1 rounded-0 p-3 px-4" type="button">
                                    <i class="fa fa-search"></i></button>
                            </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="main_1 clearfix position-absolute top-0 w-100">
    <section id="header">
      <nav class="navbar navbar-expand-md navbar-light px_4" id="navbar_sticky">
        <div class="container-fluid">
          <a class="navbar-brand p-0 fw-bold text-white" href="index.html"><i class="fa fa-modx col_oran"></i> Movie Theme</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mb-0 ms-auto">
              <li class="nav-item"><a class="nav-link active" href="index.html">Home</a></li>
              <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Movies</a>
                <ul class="dropdown-menu drop_1">
                  <li><a class="dropdown-item" href="movies.html"><i class="fa fa-chevron-right font_12 me-1"></i> Movies</a></li>
                  <li><a class="dropdown-item" href="detail.html"><i class="fa fa-chevron-right font_12 me-1"></i> Movie Details</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Blogs</a>
                <ul class="dropdown-menu drop_1">
                  <li><a class="dropdown-item" href="blog.html"><i class="fa fa-chevron-right font_12 me-1"></i> Blogs</a></li>
                  <li><a class="dropdown-item" href="blog_detail.html"><i class="fa fa-chevron-right font_12 me-1"></i> Blog Details</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Pages</a>
                <ul class="dropdown-menu drop_1">
                  <li><a class="dropdown-item" href="faq.html"><i class="fa fa-chevron-right font_12 me-1"></i> Faqs</a></li>
                  <li><a class="dropdown-item" href="login.jsp"><i class="fa fa-chevron-right font_12 me-1"></i> Login</a></li>
                  <li><a class="dropdown-item" href="register.jsp"><i class="fa fa-chevron-right font_12 me-1"></i> Register</a></li>
                  <li><a class="dropdown-item" href="ticket.html"><i class="fa fa-chevron-right font_12 me-1"></i> Ticket</a></li>
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="contact.html">Contact Us</a></li>

            </ul>
            <div class="user_option">
              <span style="color: white; margin-right: 15px;">Welcome, <%= username %></span>
              <form action="logout" method="post" style="display:inline;">
                <button type="submit" class="btn btn-danger">Logout</button>
              </form>
            </div>
          </div>
        </div>
      </nav>
    </section>
  </div>
</div>

  <div class="main_2 clearfix">
    <section id="center" class="center_home">
      <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2" class="" aria-current="true"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="img/1.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-md-block">
              <h3 class="col_oran">Thriller Movie</h3>
              <h1 class="text-white mt-3">The Semper <br> Season 3</h1>
              <p class="mt-3 text-light w-75">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer typesetting, remaining essentially unchanged.</p>
              <ul class="mb-0 mt-4">
                <li class="d-inline-block"><a class="button" href="https://lk.bookmyshow.com/movies/nelum-kuluna-tentigo/ET00005664"><i class="fa fa-check-circle me-1 font_14"></i> More Info</a></li>
                <li class="d-inline-block ms-2"><a class="button_1" href="#"><i class="fa fa-check-circle me-1 font_14"></i> Get Ticket</a></li>
              </ul>
            </div>
          </div>
          <div class="carousel-item">
            <img src="img/2.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-md-block">
              <h3 class="col_oran">Action Movie</h3>
              <h1 class="text-white mt-3">The Porta <br> One</h1>
              <p class="mt-3 text-light w-75">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer typesetting, remaining essentially unchanged.</p>
              <ul class="mb-0 mt-4">
                <li class="d-inline-block"><a class="button" href="#"><i class="fa fa-check-circle me-1 font_14"></i> More Info</a></li>
                <li class="d-inline-block ms-2"><a class="button_1" href="#"><i class="fa fa-check-circle me-1 font_14"></i> Get Ticket</a></li>
              </ul>
            </div>
          </div>
          <div class="carousel-item">
            <img src="img/3.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-md-block">
              <h3 class="col_oran">Adventure Movie</h3>
              <h1 class="text-white mt-3">The Lorem <br> Movie</h1>
              <p class="mt-3 text-light w-75">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer typesetting, remaining essentially unchanged.</p>
              <ul class="mb-0 mt-4">
                <li class="d-inline-block"><a class="button" href="#"><i class="fa fa-check-circle me-1 font_14"></i> More Info</a></li>
                <li class="d-inline-block ms-2"><a class="button_1" href="#"><i class="fa fa-check-circle me-1 font_14"></i> Get Ticket</a></li>
              </ul>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </section>
  </div>

</div>

<div class="border_dashed">

</div>

<section id="join" class="px_4 p_3">
  <div class="container-fluid">
    <div class="row join_1">
      <div class="col-md-4">
        <div class="join_1l position-relative">
          <div class="join_1li">
            <img src="img/4.jpg" class="w-100" alt="abc">
          </div>
          <div class="join_1li1 p-4 bg_backo position-absolute w-100 h-100 top-0">
            <div class="join_1li1n row">
              <div class="col-md-8">
                <div class="join_1li1l">
                  <h6 class="text-light">Join Now</h6>
                  <h3 class="mb-0 text-white">Upcoming <br>
                    Film Festivals</h3>
                </div>
              </div>
              <div class="col-md-4">
                <div class="join_1li1r">
                  <span class="d-inline-block bg_oran text-white rounded-circle text-center font_50"><i class="fa fa-video-camera"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="join_1l position-relative">
          <div class="join_1li">
            <img src="img/4.jpg" class="w-100" alt="abc">
          </div>
          <div class="join_1li1 p-4 bg_backo position-absolute w-100 h-100 top-0">
            <div class="join_1li1n row">
              <div class="col-md-8">
                <div class="join_1li1l">
                  <h6 class="text-light">Watch Now</h6>
                  <h3 class="mb-0 text-white">Watch Film
                    <br>
                    Awards</h3>
                </div>
              </div>
              <div class="col-md-4">
                <div class="join_1li1r">
                  <span class="d-inline-block bg_oran text-white rounded-circle text-center font_50"><i class="fa fa-film"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="join_1l position-relative">
          <div class="join_1li">
            <img src="img/4.jpg" class="w-100" alt="abc">
          </div>
          <div class="join_1li1 p-4 bg_backo position-absolute w-100 h-100 top-0">
            <div class="join_1li1n row">
              <div class="col-md-8">
                <div class="join_1li1l">
                  <h6 class="text-light">Get Ticket</h6>
                  <h3 class="mb-0 text-white">Comedy TV
                    <br>
                    Shows</h3>
                </div>
              </div>
              <div class="col-md-4">
                <div class="join_1li1r">
                  <span class="d-inline-block bg_oran text-white rounded-circle text-center font_50"><i class="fa fa-microphone"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="trend" class="p_3 pt-0">
  <div class="container-xl">
    <div class="row trend_1 text-center mb-4">
      <div class="col-md-12">
        <span class="fa fa-film col_oran"></span>
        <h6 class="text-muted mt-3">Watch New Movies</h6>
        <h1 class="mb-0 font_50">Movies Now Playing</h1>
      </div>
    </div>
    <div class="row trend_2">
      <div class="col-md-3 col-sm-6">
        <div class="trend_2i position-relative">
          <div class="trend_2i1">
            <img src="img/5.jpg" class="w-100" alt="abc">
          </div>
          <div class="trend_2i2 bg_back position-absolute w-100 h-100 top-0 px-4">
            <h6 class="font_14 text-light">Comedy / 180 Mins </h6>
            <h5><a class="text-white a_tag" href="#">The Fifth Day</a></h5>
            <h6 class="mb-0 mt-3"><a class="button_1 p-2 px-3 font_14" href="#">Get Ticket</a></h6>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="trend_2i position-relative">
          <div class="trend_2i1">
            <img src="img/6.jpg" class="w-100" alt="abc">
          </div>
          <div class="trend_2i2 bg_back position-absolute w-100 h-100 top-0 px-4">
            <h6 class="font_14 text-light">Animation / 160 Mins </h6>
            <h5><a class="text-white a_tag" href="#">Black & White</a></h5>
            <h6 class="mb-0 mt-3"><a class="button_1 p-2 px-3 font_14" href="#">Get Ticket</a></h6>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="trend_2i position-relative">
          <div class="trend_2i1">
            <img src="img/7.jpg" class="w-100" alt="abc">
          </div>
          <div class="trend_2i2 bg_back position-absolute w-100 h-100 top-0 px-4">
            <h6 class="font_14 text-light">Thriller / 190 Mins </h6>
            <h5><a class="text-white a_tag" href="#">Scariest Game</a></h5>
            <h6 class="mb-0 mt-3"><a class="button_1 p-2 px-3 font_14" href="#">Get Ticket</a></h6>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="trend_2i position-relative">
          <div class="trend_2i1">
            <img src="img/8.png" class="w-100" alt="abc">
          </div>
          <div class="trend_2i2 bg_back position-absolute w-100 h-100 top-0 px-4">
            <h6 class="font_14 text-light">Romance / 150 Mins </h6>
            <h5><a class="text-white a_tag" href="#">New Day Dreams</a></h5>
            <h6 class="mb-0 mt-3"><a class="button_1 p-2 px-3 font_14" href="#">Get Ticket</a></h6>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="feat" class="p_3 bg-light">
  <div class="container-xl">
    <div class="row feat_1 mb-4">
      <div class="col-md-6">
        <div class="feat_1l">
          <span class="fa fa-film col_oran"></span>
          <h6 class="text-muted mt-3">Checkout Movies</h6>
          <h1 class="mb-0 font_50">Top Featured Movies</h1>
        </div>
      </div>
      <div class="col-md-6">
        <div class="feat_1r mt-5">
          <p class="mb-0">Phasellus non cursus ligula, sed mattis urna. Aenean ac tor gravida, volutpat quam eget, consequat elit.</p>
        </div>
      </div>
    </div>
    <div class="row feat_2">
      <div class="col-md-4">
        <div class="feat_2i position-relative">
          <div class="feat_2i1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/9.jpg" class="w-100" alt="abc"></a>
              </figure>
            </div>
          </div>
          <div class="feat_2i2 position-absolute  bg-white shadow_box p-4">
            <h5><a href="#">The Fifth Day</a></h5>
            <h6 class="font_14 mt-3"><i class="fa fa-tag col_oran me-1"></i> Comedy <i class="fa fa-clock-o col_oran me-1 ms-3"></i> 180 Mins</h6>
            <ul class="mb-0 mt-3 font_14">
              <li class="d-inline-block"><a href="#">Watch Trailer</a></li>
              <li class="d-inline-block ms-2"><a href="#">Get Ticket</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="feat_2i position-relative">
          <div class="feat_2i1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/10.jpg" class="w-100" alt="abc"></a>
              </figure>
            </div>
          </div>
          <div class="feat_2i2 position-absolute  bg-white shadow_box p-4">
            <h5><a href="#">Scariest Game</a></h5>
            <h6 class="font_14 mt-3"><i class="fa fa-tag col_oran me-1"></i> Thriller <i class="fa fa-clock-o col_oran me-1 ms-3"></i> 150 Mins</h6>
            <ul class="mb-0 mt-3 font_14">
              <li class="d-inline-block"><a href="#">Watch Trailer</a></li>
              <li class="d-inline-block ms-2"><a href="#">Get Ticket</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="feat_2i position-relative">
          <div class="feat_2i1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/11.jpg" class="w-100" alt="abc"></a>
              </figure>
            </div>
          </div>
          <div class="feat_2i2 position-absolute  bg-white shadow_box p-4">
            <h5><a href="#">Black & White</a></h5>
            <h6 class="font_14 mt-3"><i class="fa fa-tag col_oran me-1"></i> Action <i class="fa fa-clock-o col_oran me-1 ms-3"></i> 160 Mins</h6>
            <ul class="mb-0 mt-3 font_14">
              <li class="d-inline-block"><a href="#">Watch Trailer</a></li>
              <li class="d-inline-block ms-2"><a href="#">Get Ticket</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="row feat_3  border_1 p-3 mx-auto">
      <div class="col-md-9">
        <div class="feat_3l mt-1">
          <p class="mb-0"><span class="fs-5 col_oran fw-bold align-middle">23,00+</span> more comedy & horror movies you can explore</p>
        </div>
      </div>
      <div class="col-md-3">
        <div class="feat_3r text-end">
          <h6 class="mb-0"><a class="button_2 p-2 px-3 font_14" href="#">Explore Now</a></h6>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="choose">
  <div class="choose_m bg_backo pt-5 pb-5">
    <div class="container-xl">
      <div class="choose_1 row">
        <div class="col-md-6 col-sm-6">
          <div class="choose_1l">
            <span class="fa fa-film col_oran"></span>
            <h6 class="text-white-50 mt-3">Documentary</h6>
            <h1 class="font_50 text-white">Movies Now Playing</h1>
            <p class="mt-3 text-white-50">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer typesetting, remaining essentially unchanged</p>
            <h6 class="mb-0 mt-4"><a class="button_1" href="#">More Info</a></h6>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="choose_1r text-center mt-5">
            <h4 class="text-white mb-0">Watch the Trailer <span class="ms-2"><a class="col_oran" href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#templateVideoModal"><i class="fa fa-play-circle align-middle"></i></a></span></h4>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="gallery" class="px_4 p_3">
  <div class="container-fluid">
    <div class="row gallery_1 text-center mb-4">
      <div class="col-md-12">
        <h1 class="mb-0">Our Photo Gallery</h1>
      </div>
    </div>
    <div class="row gallery_2">
      <div class="col">
        <div class="gallery_2i position-relative">
          <div class="gallery_2i1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/12.jpg" class="w-100" alt="abc"></a>
              </figure>
            </div>
          </div>
          <div class="gallery_2i2 bg_backn text-center px-4 position-absolute w-100 h-100 top-0">
            <span class="d-inline-block"><a class="fs-1 text-white"  data-bs-target="#exampleModal3" data-bs-toggle="modal" href="#"><i class="fa fa-instagram"></i></a></span>
          </div>
          <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none; top:0;" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content bg-transparent border-0">
                <div class="modal-header border-0">
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-close"></i></button>
                </div>
                <div class="modal-body">
                  <img src="img/12.jpg" class="w-100" alt="abc">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="gallery_2i position-relative">
          <div class="gallery_2i1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/13.jpg" class="w-100" alt="abc"></a>
              </figure>
            </div>
          </div>
          <div class="gallery_2i2 bg_backn text-center px-4 position-absolute w-100 h-100 top-0">
            <span class="d-inline-block"><a class="fs-1 text-white"  data-bs-target="#exampleModal4" data-bs-toggle="modal" href="#"><i class="fa fa-instagram"></i></a></span>
          </div>
          <div class="modal fade" id="exampleModal4" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none; top:0;" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content bg-transparent border-0">
                <div class="modal-header border-0">
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-close"></i></button>
                </div>
                <div class="modal-body">
                  <img src="img/13.jpg" class="w-100" alt="abc">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="gallery_2i position-relative">
          <div class="gallery_2i1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/14.jpg" class="w-100" alt="abc"></a>
              </figure>
            </div>
          </div>
          <div class="gallery_2i2 bg_backn text-center px-4 position-absolute w-100 h-100 top-0">
            <span class="d-inline-block"><a class="fs-1 text-white"  data-bs-target="#exampleModal5" data-bs-toggle="modal" href="#"><i class="fa fa-instagram"></i></a></span>
          </div>
          <div class="modal fade" id="exampleModal5" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none; top:0;" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content bg-transparent border-0">
                <div class="modal-header border-0">
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-close"></i></button>
                </div>
                <div class="modal-body">
                  <img src="img/14.jpg" class="w-100" alt="abc">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="gallery_2i position-relative">
          <div class="gallery_2i1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/15.jpg" class="w-100" alt="abc"></a>
              </figure>
            </div>
          </div>
          <div class="gallery_2i2 bg_backn text-center px-4 position-absolute w-100 h-100 top-0">
            <span class="d-inline-block"><a class="fs-1 text-white"  data-bs-target="#exampleModal6" data-bs-toggle="modal" href="#"><i class="fa fa-instagram"></i></a></span>
          </div>
          <div class="modal fade" id="exampleModal6" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none; top:0;" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content bg-transparent border-0">
                <div class="modal-header border-0">
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-close"></i></button>
                </div>
                <div class="modal-body">
                  <img src="img/15.jpg" class="w-100" alt="abc">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="gallery_2i position-relative">
          <div class="gallery_2i1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/16.jpg" class="w-100" alt="abc"></a>
              </figure>
            </div>
          </div>
          <div class="gallery_2i2 bg_backn text-center px-4 position-absolute w-100 h-100 top-0">
            <span class="d-inline-block"><a class="fs-1 text-white"  data-bs-target="#exampleModal7" data-bs-toggle="modal" href="#"><i class="fa fa-instagram"></i></a></span>
          </div>
          <div class="modal fade" id="exampleModal7" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none; top:0;" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content bg-transparent border-0">
                <div class="modal-header border-0">
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-close"></i></button>
                </div>
                <div class="modal-body">
                  <img src="img/16.jpg" class="w-100" alt="abc">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="event" class="p_3">
  <div class="container-xl">
    <div class="row event_1">
      <div class="col-md-6">
        <div class="event_1l pt-5">
          <span class="fa fa-film col_oran"></span>
          <h6 class="text-muted mt-3">Upcoming Event</h6>
          <h1 class="mb-0 font_50">Register Yourself Now
            for the Events</h1>
          <p class="mt-3">Every man must decide whether he will walk in the light of creative altruism or in the darkness of eritdestructive selfishness. Ut porttitor et lectus ut tempus. Aliquam lacinia justo.</p>
          <h6 class="mb-0 mt-4"><a class="button_2" href="#">More Info</a></h6>
        </div>
      </div>
      <div class="col-md-6">
        <div class="event_1r">
          <div class="event_1ri row">
            <div class="col-md-5 p-0 col-sm-5">
              <div class="event_1ril position-relative">
                <div class="event_1ril1">
                  <div class="grid clearfix">
                    <figure class="effect-jazz mb-0">
                      <a href="#"><img src="img/17.jpg" height="240" class="w-100" alt="abc"></a>
                    </figure>
                  </div>
                </div>
                <div class="event_1ril2 position-absolute w-100 top-0">
                  <h6 class="mb-0 d-inline-block bg_oran text-white p-2 px-4 font_14"> 22 MAR, 2024</h6>
                </div>
              </div>
            </div>
            <div class="col-md-7 p-0 col-sm-7">
              <div class="event_1rir px-4 shadow_box">
                <h6 class="font_14"><i class="fa fa-clock-o col_oran me-1"></i> 14:00 - 18:00 <i class="fa fa-map-marker col_oran me-1 ms-3"></i>  New York</h6>
                <h5 class="mt-3"><a href="#">Best Magical Movies Ever Made</a></h5>
                <h6 class="mb-0 mt-4"><a class="button_2" href="#">Read More</a></h6>
              </div>
            </div>
          </div>
          <div class="event_1ri row mt-4">
            <div class="col-md-5 p-0 col-sm-5">
              <div class="event_1ril position-relative">
                <div class="event_1ril1">
                  <div class="grid clearfix">
                    <figure class="effect-jazz mb-0">
                      <a href="#"><img src="img/18.jpg" height="240" class="w-100" alt="abc"></a>
                    </figure>
                  </div>
                </div>
                <div class="event_1ril2 position-absolute w-100 top-0">
                  <h6 class="mb-0 d-inline-block bg_oran text-white p-2 px-4 font_14"> 23 MAR, 2024</h6>
                </div>
              </div>
            </div>
            <div class="col-md-7 p-0 col-sm-7">
              <div class="event_1rir px-4 shadow_box">
                <h6 class="font_14"><i class="fa fa-clock-o col_oran me-1"></i> 16:00 - 19:00 <i class="fa fa-map-marker col_oran me-1 ms-3"></i>  London</h6>
                <h5 class="mt-3"><a href="#">The Strange Love Movie 2023 Festival</a></h5>
                <h6 class="mb-0 mt-4"><a class="button_2" href="#">Read More</a></h6>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
</section>

<section id="testim" class="p_3 bg-light carousel_p">
  <div class="container-xl">
    <div class="row testim_1">
      <div class="col-md-6">
        <div class="testim_1l">
          <span class="fa fa-film col_oran"></span>
          <h6 class="text-muted mt-3">Our Feedbacks</h6>
          <h1 class="mb-0 font_50">What They’re
            Talking About us?</h1>
          <p class="mt-3">Every man must decide whether he will walk in the light of creative altruism or in the darkness of eritdestructive selfishness. Ut porttitor et lectus ut tempus. Aliquam lacinia justo.</p>
          <h6 class="mb-0 mt-4"><a class="button_2" href="#">View All Feedbacks</a></h6>
        </div>
      </div>
      <div class="col-md-6">
        <div class="testim_1r mt-5">
          <div id="carouselExampleCaptions2" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions2" data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions2" data-bs-slide-to="1" aria-label="Slide 2" class="" aria-current="true"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="testim_1i row">
                  <div class="col-md-12">
                    <div class="testim_1i1 bg-white p-4 clearfix">
                      <span class="d-inline-block bg_oran text-white text-center span_1 rounded-circle"><i class="fa fa-quote-left"></i></span>
                      <div class="testim_1i1i clearfix mt-3">
                        <span><img src="img/19.jpg" alt="abc" class="rounded-circle me-3 float-start"></span>
                        <h6 class="mb-0 fw-bold text-uppercase"> Eget Nulla <br> <span class="col_oran font_14 fw-normal">Customer</span></h6>
                      </div>
                      <p class="mb-0 mt-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer typesetting, remaining essentially unchanged.</p>
                    </div>
                  </div>

                </div>
              </div>
              <div class="carousel-item">
                <div class="testim_1i row">
                  <div class="col-md-12">
                    <div class="testim_1i1 bg-white p-4 clearfix">
                      <span class="d-inline-block bg_oran text-white text-center span_1 rounded-circle"><i class="fa fa-quote-left"></i></span>
                      <div class="testim_1i1i clearfix mt-3">
                        <span><img src="img/20.jpg" alt="abc" class="rounded-circle me-3 float-start"></span>
                        <h6 class="mb-0 fw-bold text-uppercase"> Lorem Porta <br> <span class="col_oran font_14 fw-normal">Customer</span></h6>
                      </div>
                      <p class="mb-0 mt-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer typesetting, remaining essentially unchanged.</p>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
</section>

<section id="trend_o" class="p_3 px_4">
  <div class="container-fluid">
    <div class="row trend_1 text-center mb-4">
      <div class="col-md-12">
        <span class="fa fa-film col_oran"></span>
        <h6 class="text-muted mt-3">New Upcoming Movies</h6>
        <h1 class="mb-0 font_50">Movies Coming Soon</h1>
      </div>
    </div>
    <div class="row trend_2">
      <div class="col-md-3 col-sm-6">
        <div class="trend_2i position-relative">
          <div class="trend_2i1">
            <img src="img/21.jpg" class="w-100" alt="abc">
          </div>
          <div class="trend_2i2 bg_back position-absolute w-100 h-100 top-0 px-4">
            <h6 class="font_14 text-light">Comedy / 180 Mins </h6>
            <h5><a class="text-white a_tag" href="#">The Fifth Day</a></h5>
            <h6 class="mb-0 mt-3"><a class="button_1 p-2 px-3 font_14" href="#">Get Ticket</a></h6>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="trend_2i position-relative">
          <div class="trend_2i1">
            <img src="img/22.jpg" class="w-100" alt="abc">
          </div>
          <div class="trend_2i2 bg_back position-absolute w-100 h-100 top-0 px-4">
            <h6 class="font_14 text-light">Animation / 160 Mins </h6>
            <h5><a class="text-white a_tag" href="#">Black &amp; White</a></h5>
            <h6 class="mb-0 mt-3"><a class="button_1 p-2 px-3 font_14" href="#">Get Ticket</a></h6>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="trend_2i position-relative">
          <div class="trend_2i1">
            <img src="img/23.jpg" class="w-100" alt="abc">
          </div>
          <div class="trend_2i2 bg_back position-absolute w-100 h-100 top-0 px-4">
            <h6 class="font_14 text-light">Thriller / 190 Mins </h6>
            <h5><a class="text-white a_tag" href="#">Scariest Game</a></h5>
            <h6 class="mb-0 mt-3"><a class="button_1 p-2 px-3 font_14" href="#">Get Ticket</a></h6>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="trend_2i position-relative">
          <div class="trend_2i1">
            <img src="img/24.png" class="w-100" alt="abc">
          </div>
          <div class="trend_2i2 bg_back position-absolute w-100 h-100 top-0 px-4">
            <h6 class="font_14 text-light">Romance / 150 Mins </h6>
            <h5><a class="text-white a_tag" href="#">New Day Dreams</a></h5>
            <h6 class="mb-0 mt-3"><a class="button_1 p-2 px-3 font_14" href="#">Get Ticket</a></h6>
          </div>
        </div>
      </div>
    </div>
    <div class="row trend_o1 mt-4 w-75 mx-auto">
      <div class="col-md-12">
        <div class="trend_o1i1 bg_backn pt-5 pb-5 px-4">
          <div class="trend_o1i1i row">
            <div class="col-md-8">
              <div class="trend_o1i1il pt-4">
                <h2 class="mb-0 text-white">
                  40% Discount for Students</h2>
              </div>
            </div>
            <div class="col-md-4">
              <div class="trend_o1i1ir text-end">
                <h6 class="mb-0 mt-4"><a class="button_3" href="#">Book Your Ticket</a></h6>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="blog" class="p_3 bg-light">
  <div class="container-xl">
    <div class="row trend_1 text-center mb-4">
      <div class="col-md-12">
        <span class="fa fa-film col_oran"></span>
        <h6 class="text-muted mt-3">Directly Blog Posts</h6>
        <h1 class="mb-0 font_50">Latest News & Articles <br>
          from the Posts</h1>
      </div>
    </div>
    <div class="row blog_h1">
      <div class="col-md-4">
        <div class="blog_h1m">
          <div class="blog_h1m1 position-relative">
            <div class="blog_h1m1">
              <div class="grid clearfix">
                <figure class="effect-jazz mb-0">
                  <a href="#"><img src="img/25.jpg" class="w-100" alt="img25"></a>
                </figure>
              </div>
            </div>
            <div class="blog_h1m2 position-absolute w-100">
              <h2 class="mb-0 bg_oran d-inline-block p-3 text-white text-center">
                18<br>
                <span class="fs-6">JUNE</span></h2>
            </div>
          </div>
          <div class="blog_h1m2 shadow_box bg-white p-4">
            <h4><a href="#">Upcoming New Season 5 Just Flow in !</a></h4>
            <p class="mt-3">Nostrud tem exrcitation duis laboris nisi ut aliquip sed duis aute cupidata con proident sunt culpa.</p>
            <h5 class="fs-6"><a href="#">Read More</a></h5>
            <hr>
            <h6 class="mt-4 mb-0 font_14"><i class="fa fa-user col_oran me-1"></i>  <a href="#">Admin</a>
              <span class="pull-right"><i class="fa fa-comment-o col_oran me-1"></i> <a href="#">0 Comments</a></span></h6>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="blog_h1m">
          <div class="blog_h1m1 position-relative">
            <div class="blog_h1m1">
              <div class="grid clearfix">
                <figure class="effect-jazz mb-0">
                  <a href="#"><img src="img/26.jpg" class="w-100" alt="img25"></a>
                </figure>
              </div>
            </div>
            <div class="blog_h1m2 position-absolute w-100">
              <h2 class="mb-0 bg_oran d-inline-block p-3 text-white text-center">
                19<br>
                <span class="fs-6">JUNE</span></h2>
            </div>
          </div>
          <div class="blog_h1m2 shadow_box bg-white p-4">
            <h4><a href="#">The Foreign Oscar Nominations 2023</a></h4>
            <p class="mt-3">Nostrud tem exrcitation duis laboris nisi ut aliquip sed duis aute cupidata con proident sunt culpa.</p>
            <h5 class="fs-6"><a href="#">Read More</a></h5>
            <hr>
            <h6 class="mt-4 mb-0 font_14"><i class="fa fa-user col_oran me-1"></i>  <a href="#">Admin</a>
              <span class="pull-right"><i class="fa fa-comment-o col_oran me-1"></i> <a href="#">0 Comments</a></span></h6>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="blog_h1m">
          <div class="blog_h1m1 position-relative">
            <div class="blog_h1m1">
              <div class="grid clearfix">
                <figure class="effect-jazz mb-0">
                  <a href="#"><img src="img/27.jpg" class="w-100" alt="img25"></a>
                </figure>
              </div>
            </div>
            <div class="blog_h1m2 position-absolute w-100">
              <h2 class="mb-0 bg_oran d-inline-block p-3 text-white text-center">
                17<br>
                <span class="fs-6">JUNE</span></h2>
            </div>
          </div>
          <div class="blog_h1m2 shadow_box bg-white p-4">
            <h4><a href="#">See Meila enjoyable capturing moment</a></h4>
            <p class="mt-3">Nostrud tem exrcitation duis laboris nisi ut aliquip sed duis aute cupidata con proident sunt culpa.</p>
            <h5 class="fs-6"><a href="#">Read More</a></h5>
            <hr>
            <h6 class="mt-4 mb-0 font_14"><i class="fa fa-user col_oran me-1"></i>  <a href="#">Admin</a>
              <span class="pull-right"><i class="fa fa-comment-o col_oran me-1"></i> <a href="#">0 Comments</a></span></h6>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="footer_t">
  <div class="container-fluid">
    <div class="footer_t1 row">
      <div class="col-md-4 p-0">
        <div class="footer_ti position-relative">
          <div class="footer_ti1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/12.jpg" class="w-100" alt="img25"></a>
              </figure>
            </div>
          </div>
          <div class="footer_ti2 bg_back pt-5 text-center px-4 position-absolute w-100 h-100 top-0">
            <span class="d-inline-block bg-white rounded-circle col_oran fs-1"><i class="fa fa-youtube-play"></i></span>
            <h2 class="mb-0 text-white mt-3">Top 5 Movies in Theaters</h2>
          </div>
        </div>
      </div>
      <div class="col-md-4 p-0">
        <div class="footer_ti position-relative">
          <div class="footer_ti1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/13.jpg" class="w-100" alt="img25"></a>
              </figure>
            </div>
          </div>
          <div class="footer_ti2 bg_backn1 pt-5 text-center px-4 position-absolute w-100 h-100 top-0">
            <span class="d-inline-block bg-white rounded-circle col_oran fs-2"><i class="fa fa-film"></i></span>
            <h2 class="mb-0 text-white mt-3">Watch Coming Soon Movies</h2>
          </div>
        </div>
      </div>
      <div class="col-md-4 p-0">
        <div class="footer_ti position-relative">
          <div class="footer_ti1">
            <div class="grid clearfix">
              <figure class="effect-jazz mb-0">
                <a href="#"><img src="img/14.jpg" class="w-100" alt="img25"></a>
              </figure>
            </div>
          </div>
          <div class="footer_ti2 bg_back pt-5 text-center px-4 position-absolute w-100 h-100 top-0">
            <span class="d-inline-block bg-white rounded-circle col_oran fs-1"><i class="fa fa-video-camera"></i></span>
            <h2 class="mb-0 text-white mt-3"> Hot Movies Trailers Live Now</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="footer" class="p_3 bg-black">
  <div class="container-xl">
    <div class="footer_1 row pb-4">
      <div class="col-md-3">
        <div class="footer_1l">
          <h4 class="mb-0"><a class="fw-bold text-white" href="index.html"><i class="fa fa-modx col_oran"></i> Movie Theme </a></h4>
        </div>
      </div>
      <div class="col-md-9">
        <div class="footer_1r text-end">
          <ul class="mb-0">
            <li class="d-inline-block"><a class="text-white-50 a_tag" href="#">Help</a></li>
            <li class="d-inline-block text-white-50">/</li>
            <li class="d-inline-block me-2"><a class="text-white-50 a_tag" href="#"> Privacy Policy</a></li>
            <li class="d-inline-block"><a class="social_icon" href="#"> <i class="fa fa-twitter"></i></a></li>
            <li class="d-inline-block"><a class="social_icon" href="#"> <i class="fa fa-facebook"></i></a></li>
            <li class="d-inline-block"><a class="social_icon" href="#"> <i class="fa fa-instagram"></i></a></li>
            <li class="d-inline-block"><a class="social_icon" href="#"> <i class="fa fa-pinterest"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer_2 row mt-4">
      <div class="col-md-3">
        <div class="footer_2i">
          <p class="text-white fw-bold fs-5">Buy movie tickets easily with Aovis system nationwide</p>
          <h6 class="mb-0 mt-4"><a class="button" href="#">Get Your Ticket</a></h6>
        </div>
      </div>
      <div class="col-md-3">
        <div class="footer_2i">
          <h5 class="col_oran mb-4">Movies</h5>
          <div class="row footer_1ism">
            <h6 class="fw-normal col-md-12 col-6"><a class="text-white-50 a_tag" href="#"> Action</a></h6>
            <h6 class="fw-normal mt-2 col-md-12 col-6"><a class="text-white-50 a_tag" href="#"> Adventure</a></h6>
            <h6 class="fw-normal mt-2 col-md-12 col-6"><a class="text-white-50 a_tag" href="#"> Animation</a></h6>
            <h6 class="fw-normal mt-2 col-md-12 col-6"><a class="text-white-50 a_tag" href="#"> Thriller</a></h6>
            <h6 class="fw-normal mt-2 col-md-12 col-6"><a class="text-white-50 a_tag" href="#"> Crime</a></h6>
            <h6 class="fw-normal mt-2 col-md-12 col-6 mb-0"><a class="text-white-50 a_tag" href="#"> Comedy</a></h6>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="footer_2i">
          <h5 class="col_oran mb-4">Links</h5>
          <div class="row footer_1ism">
            <h6 class="fw-normal col-md-12 col-6"><a class="text-white-50 a_tag" href="#"> About Us</a></h6>
            <h6 class="fw-normal mt-2 col-md-12 col-6"><a class="text-white-50 a_tag" href="#"> My account</a></h6>
            <h6 class="fw-normal mt-2 col-md-12 col-6"><a class="text-white-50 a_tag" href="#"> News</a></h6>
            <h6 class="fw-normal mt-2 col-md-12 col-6"><a class="text-white-50 a_tag" href="#"> Latest Events</a></h6>
            <h6 class="fw-normal mt-2 col-md-12 col-6"><a class="text-white-50 a_tag" href="#"> Privacy</a></h6>
            <h6 class="fw-normal mt-2 col-md-12 col-6 mb-0"><a class="text-white-50 a_tag" href="#"> Contact Us</a></h6>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="footer_2i">
          <h5 class="col_oran mb-4">Newsletter</h5>
          <p class="text-white-50">Subscribe to Leitmotif newsletter this very day.</p>
          <div class="input-group bg-white">
            <input type="text" class="form-control bg-transparent rounded-0 border-0" placeholder="Enter Your Email">
            <span class="input-group-btn">
					<button class="btn btn-primary bg-transparent rounded-0 border-0 col_oran p-3" type="button">
						<i class="fa fa-location-arrow"></i></button>
				</span>
          </div>
          <div class="form-check mt-3 text-white-50">
            <input class="form-check-input" type="checkbox" value="">
            <label class="form-check-label" for="flexCheckDefault">
              I agree to all terms and policies of the company
            </label>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="footer_b" class="pt-3 pb-3 bg-dark">
  <div class="container-xl">
    <div class="footer_b1 row text-center">
      <div class="col-md-12">
        <p class="mb-0 text-white-50">© 2013 Your Website Name. All Rights Reserved | Design by <a class="col_oran fw-bold" href="http://www.templateonweb.com">TemplateOnWeb</a></p>
      </div>
    </div>
  </div>
</section>

<!-- Video Modal -->
<div class="modal fade" id="templateVideoModal" tabindex="-1" aria-labelledby="videoModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title" id="videoModalLabel">  Video</h2>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <!-- YouTube Embed -->
        <div class="ratio ratio-16x9">
          <iframe id="youtubeVideo" src="" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope" loading="lazy" allowfullscreen></iframe>
        </div>


      </div>

    </div>
  </div>
</div>
<!-- JavaScript to pause the video when modal is closed -->
<script>
  var templateVideoModal = document.getElementById('templateVideoModal');
  templateVideoModal.addEventListener('hide.bs.modal', function () {
    var iframe = document.getElementById('youtubeVideo');
    iframe.src = '';
  });

  templateVideoModal.addEventListener('show.bs.modal', function () {
    var iframe = document.getElementById('youtubeVideo');
    iframe.src = 'https://www.youtube.com/embed/xHYMdZvV1f0?autoplay=1';
  });
</script>

<script src="js/common.js"></script>

</body>
</html>
