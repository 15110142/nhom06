<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
    <title>TẠI SAO NÊN MUA CÀ PHÊ HẠT?</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../static/css/bground.css">
    <link rel="stylesheet" type="text/css" href="../../static/css/footer.css">
    <link rel="stylesheet" type="text/css" href="../../static/css/reset.css">
    <link rel="stylesheet" type="text/css" href="../../static/css/blog.css">
    <link rel="stylesheet" type="text/css" href="../../static/css/header3.css">
    <link rel="stylesheet" type="text/css" href="../../static/css/blogchu.css">
</head>

<body>
<section class="header3">
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
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrapper">
            <a href="/"><img src="../../static/img/logo.png" class="logo" alt="" titl=""/></a>
            <a href="#" class="hamburger"></a>
            <nav>
                <a href="#" class="login_btn">Login</a>
                <security:authorize access="hasRole('ROLE_ADMIN') OR hasRole('ROLE_USER')">
                <div class="btn-group">
                    <a class="login_btn" data-toggle="dropdown">Sản Phẩm<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/list">Nguyên Liệu</a></li>
                        <li><a href="#">Thức Uống</a></li>
                    </ul>
                </div>
                </security:authorize>
                <a href="#" class="login_btn">Đặt hàng</a>
                <a href="#blog" class="login_btn">BLOG</a>
                <a href="#review" class="login_btn" >Thể Loại</a>
            </nav>
        </div>
    </header><!--  end header section  -->
</section>
<li>Tin tức</li>
<h1 class="line_after_heading section_heading">Nghệ thuật thưởng thức Cà Phê Phin</h1>
<div class="article_content"><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt; color: rgb(234, 128, 37);" data-mce-style="font-size: 12pt; color: #ea8025;"><strong>Theo chân người Pháp đem văn hóa cà phê vào Việt Nam, những tưởng thức uống này ban đầu chỉ dành cho những nhà khá giả có điều kiện. Dần dà người ta bình dân hóa cà phê, để chất đắng ngấm dần vào cuộc sống của cả tầng lớp lao động phổ thông. Cà phê trở thành đặc sản chung của mọi cư dân Việt Nam đến tận bây giờ.</strong></span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Người Pháp ở Paris thường chỉ ghé quán để uống nhanh một loại cà phê là Espresso (nghĩa là “<em>tức thời</em>”). Hoặc cũng có khi là sau bữa trưa, một tách cà phê để cơ thể được tỉnh táo.</span><br><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;"></span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Còn ở Việt Nam, cà phê là một văn hóa sinh hoạt vừa cộng đồng, vừa riêng tư. Người ta lấy thứ bột đen ém chặt bên trong chiếc phin kim loại làm chất xúc tác cho mọi câu chuyện, những hàn huyên thời cuộc thế nhân bên ngoài và tự sự nội tâm mỗi con người.</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Một tách cà phê ngon, phải được chuẩn bị từ tay kẻ sành sõi: từ những lối pha chế rang xay cầu kỳ, ngộ nghĩnh của từng cái tôi riêng, đầy đủ hương thơm từ hạt cà phê rang tới, lối đánh bọt cho kỳ nổi xốp lớp không khí màu cánh gián. Uống ngay, thêm sữa, thêm đường, bỏ đá hay không bỏ đá... thì cà phê vẫn luôn biến hóa để chiều lòng cả những người khó tính nhất.</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Mà để nói khơi khơi “<em>đi cà phê</em>”, thì quán xá nhiều vô kể. </span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Người ta đến không bởi tiếng tăm, mà bởi chỗ quán quen là chính. Điềm nhiên, đúng quán đúng chỗ, đúng ngày đúng cữ. Môt chiếc ghế ngồi, một chiếc lót ly, một phin cà phê nhễu từng nhịp chậm rãi và thất thường, chiêu thêm cữ trà tráng miệng...thế là nhào vô trò chuyện thế sự với mấy người ngồi quanh. Quán cà phê quen trở thành “nhà”. Người bạn cà phê trở thành “người nhà”.</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Uống cà phê đâu phải chỉ xoay quanh chuyện chiếc phin và những gì bên trong nó, mà còn là câu chuyện bên ngoài và xung quanh chiếc phin. </span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Đời sống phồn thịnh, sầm uất vẫn luôn song hành với thú thưởng thức nhàn nhã, với mấy câu tâm sự thân tình - <span style="color: rgb(234, 128, 37);" data-mce-style="color: #ea8025;"><strong>đây là cách mà bạn uống cà phê tại Việt Nam.</strong></span></span></p></div>
<div class="btn_action clearfix">
    <a class="next_article" href="/blogcoldbr" title="Next Post">Bài kế tiếp</a>
    <a class="previous_article" href="/bloghat" title="Previous Post">Bài trước</a>
</div>
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
                    <div class="copyright_text copyright_col">Copyright © 2018 The Coffee House. All rights reserved.</div>
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