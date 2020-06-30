<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>index.jsp</title>
  <meta charset="utf-8">
  <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="author" content="cosmic">
    <meta name="keywords" content="Bootstrap 3, Template, Theme, Responsive, Corporate, Business">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>ECOSHAUR</title>

    <!-- Bootstrap core CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/css/theme.css" rel="stylesheet">
    <link href="../assets/css/bootstrap-reset.css" rel="stylesheet">
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet">-->

    <!--external css-->
    <link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="../assets/css/flexslider.css"/>
    <link href="../assets/bxslider/jquery.bxslider.css" rel="stylesheet" />
    <link rel="stylesheet" href="../assets/css/animate.css">
    <link rel="stylesheet" href="../assets/owlcarousel/owl.carousel.css">
    <link rel="stylesheet" href="../assets/owlcarousel/owl.theme.css">

    <link href="../assets/css/superfish.css" rel="stylesheet" media="screen">
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> -->


    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="../assets/css/component.css">
    <link href="../assets/css/style.css" rel="stylesheet">
    <link href="../assets/css/style-responsive.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="../assets/css/parallax-slider/parallax-slider.css" />
    <script type="text/javascript" src="../assets/js/parallax-slider/modernizr.custom.28468.js">
    </script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js">
    </script>
    <script src="js/respond.min.js">
    </script>
    <![endif]-->
  </head>

  <body>
    <!--header start-->
    <header class="head-section">
      <div class="navbar navbar-default navbar-static-top container">
          <div class="navbar-header">
              <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index.html">ECO<span>SHAUR</span></a>
          </div>
          <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                  <li>
                      <a href="index.html">HOME</a>
                  </li>
                  <li>
                      <a href="http://localhost:9090/ecoshaur/point/pointList.do">랭킹</a>
                  </li>
                  <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown" href="#">대여목록<i class="fa fa-angle-down"></i>
                      </a>
                      <ul class="dropdown-menu">
                          <li>
                              <a href="typography.html">컴퓨터</a>
                          </li>
                          <li>
                              <a href="button.html">TV/영상가전</a>
                          </li>
                          <li>
                              <a href="form.html">음향기기</a>
                          </li>
                          <li>
                              <a href="table.html">콘솔/게이밍</a>
                          </li>
                          <li>
                              <a href="table.html">카메라</a>
                          </li>
                          <!-- 세 번째 서브 메뉴             
                          <li class="dropdown-submenu">
                              <a href="#" tabindex="-1">More options</a>
                              <ul class="dropdown-menu">
                                  <li>
                                      <a href="#" tabindex="-1">Second level</a>
                                  </li>
                                  <li class="dropdown-submenu">
                                      <a href="#">Even More..</a>
                                      <ul class="dropdown-menu">
                                          <li>
                                              <a href="#">3rd level</a>
                                          </li>
                                          <li>
                                              <a href="#">3rd level</a>
                                          </li>
                                      </ul>
                                  </li>
                                  <li>
                                      <a href="#">Second level</a>
                                  </li>
                                  <li>
                                      <a href="#">Second level</a>
                                  </li>
                              </ul>
                          </li> -->
                      </ul>
                  </li>
                  <li>
                      <a href="contact.html">커뮤니티</a>
                  </li>
                  <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown" href="#">고객센터<i class="fa fa-angle-down"></i>
                      </a>
                      <ul class="dropdown-menu">
                          <li>
                              <a href="portfolio-3-col.html">공지사항</a>
                          </li>
                          <li>
                              <a href="portfolio-4-col.html">QnA</a>
                          </li>
                          
                      </ul>
                  </li>
                  <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown" href="#">마이페이지<i class="fa fa-angle-down"></i>
                      </a>
                      <ul class="dropdown-menu">
                          <li>
                              <a href="blog.html">로그인/회원가입</a>
                          </li>
                          <li>
                              <a href="blog.html">회원정보</a>
                          </li>
                          <li>
                              <a href="blog.html">장바구니</a>
                          </li>              
                      </ul>
                  </li>                 
                  <li><input class="form-control search" placeholder=" Search" type="text"></li>
              </ul>
          </div>
      </div>
    </header>
    <!--header end-->
    
    <br>
    <br>
    <br>
    <br>
    <br>
    

    <!-- js placed at the end of the document so the pages load faster
<script src="js/jquery.js">
</script>
-->
    <script src="../assets/js/jquery-1.8.3.min.js">
    </script>
    <script src="../assets/js/bootstrap.min.js">
    </script>
    <script type="text/javascript" src="../assets/js/hover-dropdown.js">
    </script>
    <script defer src="../assets/js/jquery.flexslider.js">
    </script>
    <script type="text/javascript" src="../assets/bxslider/jquery.bxslider.js">
    </script>

    <script type="text/javascript" src="../assets/js/jquery.parallax-1.1.3.js">
    </script>
    <script src="../assets/js/wow.min.js">
    </script>
    <script src="../assets/owlcarousel/owl.carousel.js">
    </script>

    <script src="../assets/js/jquery.easing.min.js">
    </script>
    <script src="../assets/js/link-hover.js">
    </script>
    <script src="../assets/js/superfish.js">
    </script>
    <script type="text/javascript" src="../assets/js/parallax-slider/jquery.cslider.js">
    </script>
    <script type="text/javascript">
      $(function() {

        $('#da-slider').cslider({
          autoplay    : true,
          bgincrement : 100
        });

      });
    </script>



    <!--common script for all pages-->
    <script src="../assets/js/common-scripts.js">
    </script>

    <script type="text/javascript">
      jQuery(document).ready(function() {


        $('.bxslider1').bxSlider({
          minSlides: 5,
          maxSlides: 6,
          slideWidth: 360,
          slideMargin: 2,
          moveSlides: 1,
          responsive: true,
          nextSelector: '#slider-next',
          prevSelector: '#slider-prev',
          nextText: 'Onward →',
          prevText: '← Go back'
        });

      });


    </script>


    <script>
      $('a.info').tooltip();

      $(window).load(function() {
        $('.flexslider').flexslider({
          animation: "slide",
          start: function(slider) {
            $('body').removeClass('loading');
          }
        });
      });

      $(document).ready(function() {

        $("#owl-demo").owlCarousel({

          items : 4

        });

      });

      jQuery(document).ready(function(){
        jQuery('ul.superfish').superfish();
      });

      new WOW().init();


    </script>
  </body>
</html>