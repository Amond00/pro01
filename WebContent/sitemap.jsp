<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
    <%@ include file="head.jsp" %>
    <style>
    /* header.css */
    .hd { position:fixed; }

    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm { border:2px solid #333; padding: 24px; width:1200px; margin:50px auto; }
    .sitemap_area { width: 960px; margin: 30px auto; }
    .menu { clear:both; padding-bottom: 100px; }
    .menu:after { content:""; display:block; clear:both; }
    .menu > li { float:left; width: 20%; }
    .menu > li > a.dp1 { display:block; line-height: 48px; font-size:20px; color:#333; font-weight: bold; padding-top: 40px; }
    .menu .sub li { clear:both; padding-left: 16px; }
    .menu .sub li a { display:block; color:#555; font-size:16px; line-height: 36px; }
    .menu .sub li a:hover { text-decoration: underline; color:deepskyblue; }

    .menu2:before { content:"보조 메뉴"; display:block; clear:both; font-size:20px; font-weight:bold; padding-bottom: 20px; }
    .menu2 li { float:left; line-height: 60px; }
    .menu2 li a { display:block; color:#555; }
    .menu2 li a:hover { text-decoration: underline; color:red; } 
    </style>
    <link rel="stylesheet" href="footer.css">
    <script>
    $(document).ready(function(){
        $(".to_top").attr("href", location.href);
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=300){
                $(".to_top").addClass("on");
                $(".to_top").attr("href", location.href);
            } else {
                $(".to_top").removeClass("on");
                $(".to_top").attr("href", location.href);
            }
        });
    });    
    </script>
</head>
<body>
    <div class="wrap">
        <header class="hd">
            <%@ include file="nav.jsp" %>
        </header>
        <div class="content">
            <figure class="vs">
                <img src="./lg_display_picture/product_main.png" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">HOME</a> &gt;
                    <span class="sel">사이트맵</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">사이트맵</h2>
                    <div class="frm">
                        <nav class="sitemap_area">
                            <ul class="menu menu1">
                                <li class="item1">
                                    <a href="" class="dp1">제품</a>
                                    <ul class="sub">
                                        <li><a href="product.jsp#page1">IT</a></li>
                                        <li><a href="product.jsp#page2">TV</a></li>
                                        <li><a href="product.jsp#page3">Mobile</a></li>
                                    </ul>
                                </li>
                                <li class="item2">
                                    <a href="" class="dp1">기술</a>
                                    <ul class="sub">
                                        <li><a href="technology.jsp#page1">OLED</a></li>
                                        <li><a href="technology.jsp#page2">LCD</a></li>
                                    </ul>
                                </li>
                                <li class="item3">
                                    <a href="" class="dp1">ESG</a>
                                    <ul class="sub">
                                        <li><a href="esg.jsp#page1">환경</a></li>
                                        <li><a href="esg.jsp#page2">사회</a></li>
                                        <li><a href="esg.jsp#page3">지배구조</a></li>
                                    </ul>
                                </li>
                                <li class="item4">
                                    <a href="" class="dp1">기업정보</a>
                                    <ul class="sub">
                                        <li><a href="company.jsp#page1">기업개요</a></li>
                                        <li><a href="company.jsp#page2">연혁</a></li>
                                        <li><a href="company.jsp#page3">사업장 위치</a></li>
                                    </ul>
                                </li>
                                <li class="item5">
                                    <a href="" class="dp1">투자 정보</a>
                                    <ul class="sub">
                                        <li><a href="invest.jsp#page1">재무정보</a></li>
                                        <li><a href="invest.jsp#page2">주주총회</a></li>
                                        <li><a href="invest.jsp#page3">공시정보</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="menu menu2">
                                <li><a href="login.jsp">로그인</a></li>
                                <li><a href="term.jsp">회원가입</a></li>
                                <li><a href="boardList.jsp">게시판</a></li>
                                <li><a href="boardList.jsp">QnA게시판</a></li>
                                <li><a href="sitemap.jsp">사이트맵</a></li>
                                <li><a href="member01.jsp" class="dpc">개인정보 처리 방침</a></li>
                                <li><a href="member02.jsp" class="dpc">이용약관</a></li>
                                <li><a href="member03.jsp">이메일무단수집거부</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </section>
        </div>
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
</body>
</html>		
