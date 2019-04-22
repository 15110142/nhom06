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
    <link rel="stylesheet" type="text/css" href="../../static/css/header4.css">
    <link rel="stylesheet" type="text/css" href="../../static/css/blogchu.css">
</head>

<body>
<section class="header4">
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
<h1 class="line_after_heading section_heading">Tất tần tật về Menu Cold Brew tại Coffee Store</h1>
<div class="article_content"><p><img src="//file.hstatic.net/1000075078/file/coldbrew_grande.jpg" data-mce-src="//file.hstatic.net/1000075078/file/coldbrew_grande.jpg" style="display: block; margin-left: auto; margin-right: auto;" data-mce-style="display: block; margin-left: auto; margin-right: auto;"><br></p><p style="text-align: center;" data-mce-style="text-align: center;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;"><em>Menu của Coffee Store Signature sẽ được mở rộng hơn với sự ra mắt của dòng Cà phê Cold Brew mới.</em></span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Thứ bảy vừa qua, Coffee Store đã mang dòng Cà phê Cold Brew bổ sung vào Menu hiện có của cửa hàng và chính thức phục vụ kể từ ngày 15/09/2018. Với sự ra mắt lần này, Coffee Store mong muốn tăng thêm trải nghiệm của khách hàng cũng như làm hài lòng những người yêu cà phê tại Việt Nam.</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Các Barista của Coffee Store pha chế Cà phê Cold Brew bằng cách ngâm hạt cà phê xay trong nước lạnh, sau đó ủ cà phê như pha trà trong thời gian từ 8-20 giờ. Vì Cold Brew không có sự can thiệp của nhiệt độ cao, cà phê được pha theo phương pháp này sẽ có tính acid thấp, cũng như tránh được tình trạng oxi hóa gây ra vị đắng gắt do sử dụng nước quá nóng trong khi pha.</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">&nbsp;</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Nhờ quá trình chiết xuất chậm, Cà phê Cold Brew thậm chí còn đậm đặc hơn so với Hot Brew (cách pha cà phê bằng nước nóng) cùng loại. Một tách Cà phê pha chế theo phương pháp Cold Brew sẽ có mùi vị mềm mại và tươi tắn. Thú vị hơn, quá trình ủ cà phê sẽ tạo ra hiệu ứng “lên men”, khiến cho ly cà phê có vị thanh, chua nhẹ như một loại nước trái cây.</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">&nbsp;</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Tuy nhiên, dù được pha chế theo phương pháp Cold Brew hay Hot Brew, Coffee Store đều xay tươi hạt cà phê trước mỗi lần pha để đảm bảo chất lượng tốt nhất cho thức uống của bạn.</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">2 loại Cà phê Cold Brew được phục vụ tại Coffee Store Signature (từ trái qua): Classic Cold Brew và Lemon Cold Brew</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Có khá nhiều nhầm lẫn giữa khái niệm của dòng Cold Brew và Iced Coffee (Cà phê đá). Hãy xem hình bên dưới để hình dung rõ hơn về sự khác biệt này nhé:</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">&nbsp;</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt; color: rgb(234, 128, 37);" data-mce-style="font-size: 12pt; color: #ea8025;"><strong>Tận mục sở thị “phòng thí nghiệm pha chế” tại Coffee Store</strong></span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;">Không chỉ đem đến một trải nghiệm mới về cách thưởng thức cà phê, khi đến Coffee Store, bạn sẽ có cơ hội “tận mục sở thị” quy trình làm ra Cold Brew của Barista cũng như biết thêm về những cách thức pha cà phê khác nhau trên thế giới. Hàng loạt những chai lọ thủy tinh đủ kích cỡ bày biện ở khu vực trung tâm nơi các Barista làm việc trông như một “phòng thí nghiệm pha chế” thu nhỏ.</span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;"><em>TODDY Cold Brew System là dụng cụ chuyên dụng để pha Cold Brew. Cà phê sẽ được ủ bằng nước lạnh trong nhiều giờ và được chiết xuất xuống một bình thủy tinh đặt phía dưới.</em></span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;"><em>Xuất xứ từ Pháp, French press được mệnh danh là “cầu nối của mọi câu chuyện”. Một bình French press lớn có thể pha 7 – 10 cốc cà phê cùng lúc và mọi người có thể cùng ngồi thưởng thức cà phê với câu chuyện của mình.</em></span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt;" data-mce-style="font-size: 12pt;"><em>Aeropress là một trong những dụng cụ pha chế cà phê cơ động và độc đáo nhất trên thế giới. Đây cũng là 1 dụng cụ pha chế duy nhất có hẳn một cuộc thi dành riêng cho nó (Aeropress World Championship).</em></span></p><p style="text-align: justify;" data-mce-style="text-align: justify;"><span style="font-size: 12pt; color: rgb(234, 128, 37);" data-mce-style="font-size: 12pt; color: #ea8025;"><strong>Bạn cũng có thể tìm thấy những postcard nhỏ giới thiệu về những hạt cà phê và các cách rang xay, phối hạt tại đây. Tùy mùa vụ và loại hạt mà cà phê pha ra sẽ có mùi vị khác nhau, có khi là vị táo xanh, vị cóc chín, việt quất hay vị của trái dâu rừng...</strong></span></p></div>
<div class="btn_action">
    <a class="previous_article" href="/blogphin" title="Previous Post">Bài trước</a>
    <a class="btn primary-btn" href="/">Trang Chủ</a>
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
                <li><a href="#" title="Hạt Cà Phê Coffee Store">Hạt Cà Phê Coffee Store</a></li>
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