<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="../../static/css/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="../../static/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
    <script src="../../js/validate_login.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .checkbox-w3 {
            margin:2em 0 2.5em;
        }
        span.check-w3 {
            float: left;
            color: #fff;
            font-size: 1em;
            letter-spacing: 1px;
            font-family: 'Snippet', sans-serif;
        }
        .checkbox-w3 a {
            color: #fff;
            float: right;
            font-size: 1em;
            text-decoration: none;
            font-family: 'Snippet', sans-serif;
        }
        #trangchu{
            background: #fff;
            color: #000;
            outline: none;
            display: block;
            margin: 0 auto;
            border: none;
            cursor: pointer;
            padding: 7px 35px;
            font-size: 16px;
            margin-top: 20px;
            font-weight: bold;
            text-transform: uppercase;
            font-family: 'Sirin Stencil', cursive;
            transition: 0.3s all;
            -webkit-transition: 0.3s all;
            -moz-transition: 0.3s all;
            -o-transition: 0.3s all;
            -ms-transition: 0.3s all;
        }
        #trangchu:hover{
            background: #4CAF50;
            color:#ffffff;
            transition: 0.3s all;
            -webkit-transition: 0.3s all;
            -moz-transition: 0.3s all;
            -o-transition: 0.3s all;
            -ms-transition: 0.3s all;
        }
    </style>
</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <h1>Login Form</h1>
            <div class="main-agileits">
                <!--form-stars-here-->
                <div class="form-w3-agile">
                    <h2>login Now</h2>
    <br>
    <!-- /login?error=true -->
                  <c:if test="${param.error == 'true'}">
                      <div style="color: yellow; margin: 10px 0px;">

                          Login Failed!!!<br /> Reason :
                              ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

                      </div>
                  </c:if>
                    <form name="myform" action="/j_spring_security_login" method="post" onsubmit="return validateform()">
                        <div class="form-sub-w3">
                            <input type="text" name="username" placeholder="Username "/>
                            <div class="icon-w3">
                                <i class="fa fa-user" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="form-sub-w3">
                            <input type="password" name="password" placeholder="Password" />
                            <div class="icon-w3">
                                <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="checkbox-w3">
                            <span class="check-w3"><input type="checkbox" name="remember-me"/>Remember Me</span>
                        </div>
                        <br>
                        <div class="submit-w3l">
                            <input type="submit" value="Login">
                        </div>
                        <div>
                            <input type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}" />
                        </div>
                    </form>
                    <button id ="trangchu" onclick="location.href = '/'">Home</button>
                    <span class="error-message">${error }</span>
                    <div class="social w3layouts">
                        <div class="heading">
                            <h5>Or Login with</h5>
                            <div class="clear"></div>
                        </div>
                        <div class="icons">
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <!--//form-ends-here-->
            </div><!-- copyright -->
            <div class="copyright w3-agile">
                <p style="text-align: center;"> Welcome to website Coffee</p>
            </div>
            <!-- //copyright -->
        </div>
    </div>
</div>

</body>
</html>