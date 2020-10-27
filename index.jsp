<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Mehata Software</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/sl-slide.css">
    <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <link rel="shortcut icon" href="images/logo.jpg">
</head>

<body>
    <!--Header-->
    <header class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a id="logo" class="pull-left" href="index.jsp"></a>
                <div class="nav-collapse collapse pull-right">
                    <ul class="nav">
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="about-us.html">About Us</a></li>
                       
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <i class="icon-angle-down"></i></a>
                            <ul class="dropdown-menu">
                              
                                <li><a href="loginForm.jsp">Login</a></li>
                            </ul>
                        </li>
                        <li><a href="contact-us.html">Contact</a></li>
                    </ul>        
                </div>
            </div>
        </div>
    </header>
    <!-- /header -->

    <!--Slider-->
    <section id="slide-show">
        <div id="slider" class="sl-slider-wrapper">
            <!--Slider Items-->    
            <div class="sl-slider">
                <!--Slider Item1-->
                <div class="sl-slide item1" data-orientation="vertical" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
                    <div class="sl-slide-inner">
                        <div class="container">
                            <img class="pull-right" src="images/sample/slider/1.jpg" alt="" />
                          
                            <a class="btn btn-large btn-transparent" href="#">View More</a>
                        </div>
                    </div>
                </div>
                <!--/Slider Item1-->
                <!--Slider Item2-->
                <div class="sl-slide item2" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
                    <div class="sl-slide-inner">
                        <div class="container">
                            <img class="pull-right" src="images/sample/slider/2.jpg" alt="" />
                            <h2>Aliquam tincidunt ornare placerat</h2>
                            <h3 class="gap">Aenean tincidunt posuere orci</h3>
                            <a class="btn btn-large btn-transparent" href="#">View More</a>
                        </div>
                    </div>
                </div>
                <!--Slider Item2-->
                <!--Slider Item3-->
                <div class="sl-slide item3" data-orientation="vertical" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
                    <div class="sl-slide-inner">
                        <div class="container">
                            <img class="pull-right" src="images/sample/slider/3.jpg" alt="" />
                            <h2>Pellentesque eu libero diam, etiam bibendum</h2>
                            <h3 class="gap">Mauris feugiat est vitae malesuada pharetra</h3>
                            <a class="btn btn-large btn-transparent" href="#">View More</a>
                        </div>
                    </div>
                </div>
                <!--Slider Item3-->
            </div>
            <!--/Slider Items-->
            <!--Slider Next Prev button-->
            <nav id="nav-arrows" class="nav-arrows">
                <span class="nav-arrow-prev"><i class="icon-angle-left"></i></span>
                <span class="nav-arrow-next"><i class="icon-angle-right"></i></span> 
            </nav>
            <!--/Slider Next Prev button-->
        </div>
        <!-- /slider-wrapper -->           
    </section>
    <!--/Slider-->

    <section class="main-info">
        <div class="container">
            <div class="row-fluid">
                <div class="span9">
                    <h4>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos</h4>
                    <p class="no-margin">Ut ultrices eu nunc vitae scelerisque. Praesent sollicitudin accumsan diam, sed tristique diam sodales ut. Ut volutpat tempor dignissim.</p>
                </div>
                <div class="span3">
                    <a class="btn btn-success btn-large pull-right" href="#">Nulla ornare varius</a>
                </div>
            </div>
        </div>
    </section>

    <!--Services-->

 
    <!--Clients-->
    <section id="clients" class="main">
        <div class="container">
            <div class="row-fluid">
                <div class="span2">
                    <div class="clearfix">
                        <h4 class="pull-left">PHASELLUS RUTRUM LAOREET</h4>
                        <div class="pull-right">
                            <a class="prev" href="#myCarousel" data-slide="prev"><i class="icon-angle-left icon-large"></i></a> <a class="next" href="#myCarousel" data-slide="next"><i class="icon-angle-right icon-large"></i></a>
                        </div>
                    </div>
                    <p>Aenean libero ipsum, pellentesque eu lacus eget, sodales accumsan eros. Nunc ut leo commodo.</p>
                </div>
                <div class="span10">
                    <div id="myCarousel" class="carousel slide clients">
                        <!-- Carousel items -->
                        <div class="carousel-inner">
                            <div class="active item">
                                <div class="row-fluid">
                                    <ul class="thumbnails">
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client1.png"></a></li>
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client2.png"></a></li>
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client3.png"></a></li>
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client4.png"></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row-fluid">
                                    <ul class="thumbnails">
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client4.png"></a></li>
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client3.png"></a></li>
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client2.png"></a></li>
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client1.png"></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row-fluid">
                                    <ul class="thumbnails">
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client1.png"></a></li>
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client2.png"></a></li>
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client3.png"></a></li>
                                        <li class="span3"><a href="#"><img src="images/sample/clients/client4.png"></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- /Carousel items -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/Clientes-->

    <!--Bottom-->
    <section id="bottom" class="main">
        <!--Container-->
        <div class="container">
            <!--row-fluids-->
            <div class="row-fluid">
                <!--Contact Info-->
                <div class="span3">
                    <h4>CONTACT US</h4>
                    <ul class="unstyled address">
                        <li>
                            <i class="icon-home"></i><strong>Address:</strong> Carrera 7 # 72-01<br>Bogotá D.C., Colombia
                        </li>
                        <li>
                            <i class="icon-envelope"></i>
                            <strong>Email: </strong> <a href="mailto:company@domain.com">company@domain.com</a>
                        </li>
                        <li>
                            <i class="icon-globe"></i>
                            <strong>Website:</strong> <a href="http://www.domain.com">www.domain.com</a>
                        </li>
                        <li>
                            <i class="icon-phone"></i>
                            <strong>Telephone:</strong> 123-456-7890
                        </li>
                    </ul>
                </div>
                <!--End Contact Info-->
                <!--Important Links-->
                <div id="tweets" class="span3">
                    <h4>COMPANY NAME</h4>
                    <div>
                        <ul class="arrow">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Portfolio</a></li>
                            <li><a href="#">Erro 404</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div>  
                </div>
                <!--Important Links-->
                <div id="archives" class="span2">
                    <h4>ARCHIVES</h4>
                    <div>
                        <ul class="arrow">
                            <li><a href="#">Link No. 1</a></li>
                            <li><a href="#">Link No. 2</a></li>
                            <li><a href="#">Link No. 3</a></li>
                            <li><a href="#">Link No. 4</a></li>
                            <li><a href="#">Link No. 5</a></li>
                            <li><a href="#">Link No. 6</a></li>
                        </ul>
                    </div>
                </div>
                <!--End Links-->
                <div class="span4">
                    <h4>FACEBOOK</h4>
                    <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Ffacebook&tabs=timeline&width=340&height=130&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=false&appId" width="340" height="130" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
                </div>
            </div>
            <!--/row-fluid-->
        </div>
        <!--/container-->
    </section>
    <!--/bottom-->

    <!--Footer-->
    <footer id="footer">
        <div class="container">
            <div class="row-fluid">
                <div class="span5 cp">
                    &copy; 2016 <a target="_blank" href="http://www.domain.com/">Your Company</a>. All Rights Reserved.
                </div>
                <div class="span6">
                    <ul class="social pull-right">
                        <li><a href="#"><i class="icon-facebook"></i></a></li>
                        <li><a href="#"><i class="icon-twitter"></i></a></li>
                        <li><a href="#"><i class="icon-pinterest"></i></a></li>
                        <li><a href="#"><i class="icon-linkedin"></i></a></li>
                        <li><a href="#"><i class="icon-google-plus"></i></a></li>                       
                        <li><a href="#"><i class="icon-youtube"></i></a></li>
                        <li><a href="#"><i class="icon-instagram"></i></a></li>                   
                    </ul>
                </div>
                <div class="span1">
                    <a id="gototop" class="gototop pull-right" href="#"><i class="icon-angle-up"></i></a>
                </div>
            </div>
        </div>
    </footer>
    <!--/Footer-->

    <script src="js/vendor/jquery-1.9.1.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/jquery.ba-cond.min.js"></script>
    <script src="js/jquery.slitslider.js"></script>
    <!-- Slider -->
    <script type="text/javascript"> 
    $(function() {
        var Page = (function() {
            var $navArrows = $( '#nav-arrows' ),
            slitslider = $( '#slider' ).slitslider( {
                autoplay : true
            } ),
            init = function() {
                initEvents();
            },
            initEvents = function() {
                $navArrows.children( ':last' ).on( 'click', function() {
                    slitslider.next();
                    return false;
                });
                $navArrows.children( ':first' ).on( 'click', function() {
                    slitslider.previous();
                    return false;
                });
            };
            return { init : init };
        })();
        Page.init();
    });
    </script>
    <!-- /Slider -->
</body>
</html>