<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
    <title>Coffee Store</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../static/css/bground.css">
    <link rel="stylesheet" type="text/css" href="../../static/css/footer.css">
    <link rel="stylesheet" type="text/css" href="../../static/css/reset.css">
    <link rel="stylesheet" type="text/css" href="../../static/css/blog.css">
    <script src="../../js/clock.js" ></script>
</head>
<body>
    <section class="hero">
    <header>
        <div class="header-top">
            <div class="container">
                <div class="row justify-content-end">
                    <div class="col-lg-8 col-sm-4 col-8 header-top-right no-padding">

                        <ul>
                            <li>
                                Mon-Fri: 8am to 2pm
                            </li>
                            <li>
                                Sat-Sun: 11am to 4pm
                            </li>
                            <li>
                                <a href="tel:(012) 6985 236 7512">0773749328</a>
                            </li>
                            <li style="font-size: 23px;color: yellow;">
    <security:authorize  access="hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')">
                            <form:form action="/j_spring_security_logout" method="post" >
                             Welcome ${pageContext.request.userPrincipal.name}
                                <input style="background: blue;color: yellow;size: 50px" type="submit" value="Logout" class="login_btn"/>
                                    </form:form>
    </security:authorize>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrapper">
            <a href="#"><img src="../../static/img/logo.png" class="logo" alt="" titl=""/></a>
            <a href="#" class="hamburger"></a>
            <nav>
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <a href="${pageContext.request.contextPath}/login" class="login_btn">Login</a>
                        </c:if>
        <security:authorize  access="hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')">
                    <div class="btn-group">
                        <a class="login_btn" data-toggle="dropdown">Sản Phẩm<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="/list">Nguyên Liệu</a></li>
                            <li><a href="/listTU">Thức Uống</a></li>
                        </ul>
                    </div>
        </security:authorize>
                <a href="/list_dathang" class="login_btn">Đặt hàng</a>
<security:authorize  access="hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')">
    <div class="btn-group">
        <a class="login_btn" data-toggle="dropdown">Đơn Hàng<span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
            <li><a href="/listHD">Quản Lý Đơn Hàng</a></li>
            <li><a href="/user/listHDCT">Quản Lý Chi Tiết Đơn Hàng</a></li>
        </ul>
    </div>
</security:authorize>
                <security:authorize access="hasRole('ROLE_ADMIN')">
                <a href="/listNV" class="login_btn">Nhân Viên</a>
                </security:authorize>
            </nav>
        </div>
    </header><!--  end header section  -->
    </section>
    <!-- start banner Area -->
    <section class="banner-area" id="home">
        <div class="container">
            <div class="row fullscreen d-flex align-items-center justify-content-start">
                <div class="banner-content col-lg-7">
                    <div class="btn-group">
                        <a href="#review" class="btn btn-primary" style="background: transparent;">Review</a>
                        <a href="#blog" class="btn btn-primary" style="background: transparent">Blog</a>
                    </div>
                    <h6 class="text-white text-uppercase" style="font-size: 40px;color: gold;font-family: 'Times New Roman'">Coffee Store</h6>
                    <h1 href="#review">
                        Start your day with <br>
                        a black Coffee
                    </h1>
                    <div id="time"></div>
                    <script>
                    dongho();
                    </script>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->
    <!-- Start review Area -->
    <section class="review-area section-gap" id="review">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="menu-content pb-60 col-lg-10">
                    <div class="title text-center">
                        <h1 class="mb-10" style="text-align: center">What kind of Coffee we serve for you</h1>
                    </div>
                </div>
            </div>
        </div>
            <div class="container">
                <div id="myCoffee" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCoffee" data-slide-to="0" class="active"></li>
                        <li data-target="#myCoffee" data-slide-to="1"></li>
                        <li data-target="#myCoffee" data-slide-to="2"></li>
                        <li data-target="#myCoffee" data-slide-to="3"></li>
                        <li data-target="#myCoffee" data-slide-to="4"></li>
                        <li data-target="#myCoffee" data-slide-to="5"></li>
                        <li data-target="#myCoffee" data-slide-to="6"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="../../static/img/cafe2.jpg"style="width:100%;">
                        </div>

                        <div class="item">
                        <img src="../../static/img/cafe4.jpg"style="width:100%;">
                    </div>

                        <div class="item">
                            <img src="../../static/img/anh-ly-cafe-buoi-sang-43.jpg" style="width:100%;">
                        </div>
                        <div class="item">
                            <img src="../../static/img/cafeBG1.jpg"style="width:100%;">
                        </div>

                        <div class="item">
                            <img src="../../static/img/cafeBG2.jpg" style="width:100%;">
                        </div>
                        <div class="item">
                            <img src="../../static/img/cafeBG4.jpg"style="width:100%;">
                        </div>

                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCoffee" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCoffee" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
    </section>
    <!-- End review Area -->
    <!-- Blog -->
    <section class="blog_home" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <h2 class="blog_home_title line_after_heading section_heading">Blog</h2>
                </div>
                <div class="clearfix"></div>
                    <div class="blog_item flex_direction_column display_flex "><a class="article_item_image" href="/bloghat" title="TẠI SAO NÊN MUA CÀ PHÊ HẠT?"><div class="article_img" style="background-image: url('../../static/img/cafehat.jpeg')"></div></a>
                        <div class="article_item_info display_flex flex_direction_column justify-content-spbetween">
                            <span class="article_tags">Tin tức</span>
                            <h3><a href="/bloghat" title="TẠI SAO NÊN MUA CÀ PHÊ HẠT?">TẠI SAO NÊN MUA CÀ PHÊ HẠT?</a></h3>
                            <p>Trong blog này, Nhà xin chia sẻ một chút về chuyện mua cà phê xay sẵn hay mua cà phê hạt và mong rằng, không ít thì nhiều, sẽ giúp bạn làm ra được một ly cà phê tuyệt vời hơn</p>
                            <br>
                            <div class="article_item_action">
                                <a class="animate_btn" href="/bloghat">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="blog_item flex_direction_column display_flex "><a class="article_item_image" href="/blogphin" title="Nghệ thuật thưởng thức Cà Phê Phin"><div class="article_img" style="background-image: url('../../static/img/cafephin.jpg')"></div></a>
                        <div class="article_item_info display_flex flex_direction_column justify-content-spbetween">
                            <span class="article_tags">Tin tức</span>
                            <h3><a href="/blogphin" title="Nghệ thuật thưởng thức Cà Phê Phin">Nghệ thuật thưởng thức Cà Phê Phin</a></h3>
                            <p>Theo chân người Pháp đem văn hóa cà phê vào Việt Nam, những tưởng thức uống này ban đầu chỉ dành cho những nhà khá giả có điều kiện. Dần dà, cà phê bình dân hóa, trở thành đặc sản chung của mọi cư dân Việt Nam đến tận bây giờ.</p>
                            <br>
                            <div class="article_item_action">
                                <a class="animate_btn" href="/blogphin">Xem thêm</a>
                            </div>
                        </div></div>
                    <div class="blog_item flex_direction_column display_flex"><a class="article_item_image" href="/blogcoldbr" title="Tất tần tật về Menu Cold Brew tại Coffee Store"><div class="article_img" style="background-image: url('../../static/img/cafecoldbrew.jpg')"></div></a>
                        <div class="article_item_info display_flex flex_direction_column justify-content-spbetween">
                            <span class="article_tags">Tin tức</span>
                            <h3><a href="/blogcoldbr" title="Tất tần tật về Menu Cold Brew tại Coffee Store">Tất tần tật về Menu Cold Brew tại Coffee Store</a></h3>
                            <p>Với mong muốn tăng thêm trải nghiệm của khách hàng cũng như làm hài lòng những người yêu cà phê tại Việt Nam, từ 15.09.2018, Cold Brew đã chính thức có mặt tại Coffee Store.</p>
                            <br>
                            <div class="article_item_action">
                                <a class="animate_btn" href="/blogcoldbr">Xem thêm</a>
                            </div>
                        </div></div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Blog -->
    <!-- Start footer -->
    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 footer_col">
                    <svg class="logo_footer">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#logo-footer"></use>
                    </svg>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 footer_col">
                    <h3 class="footer_title">ABOUT</h3>				<ul class="footer_linklists">
                    <li><a href="#" title="Về Chúng Tôi">Về Chúng Tôi</a></li>
                    <li><a href="#" title="Hạt Cà Phê The Coffee House">Hạt Cà Phê Coffee Store</a></li>
                    <li><a href="#blog" tile="Blog">Blog</a></li>
                    <li><a href="#" title="Cửa Hàng">Cửa Hàng</a></li>
                </ul>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 footer_col">
                    <div class="hotline_footer">
                        <h3 class="footer_title">Always-on Support</h3><p>Delivery 1800 6936  (07:00-21:00)</p><p>Support 02871 087 088 (07:00-21:00) </p>				</div>
                    <div class="address_footer">
                        <h3 class="footer_title">Address</h3><p>1096 Kha Van Can, Linh Chieu, Quan Thu Duc Ho Chi Minh, Vietnam</p><p>077 374 9328</p><p>tuan@coffeestore.com</p>				</div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 footer_col">
                    <h3 class="footer_title">Delivery</h3>				<ul class="footer_linklists">
                    <li><a href="#" title="Shipping methods">Shipping methods</a></li>
                    <li><a href="#" title="Payment">Payment</a></li>
                    <li><a href="#" title="Cash voucher">Cash voucher</a></li>
                    <li><a href="#" title="Return">Return</a></li>
                    <li><a href="#" title="Exchange">Exchange</a></li>
                </ul>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="copyright_footer display_flex justify-content-spbetween">
                        <div class="copyright_text copyright_col">Copyright © 2018 Coffee Store. All rights reserved.</div>
                        <div class="copyright_menu copyright_col">
                        <ul>
                            <li><a href="https://order.thecoffeehouse.com/policy">Privacy Policy</a></li>
                            <li><a href="https://order.thecoffeehouse.com/term">Terms of Use</a></li>
                        </ul>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>



