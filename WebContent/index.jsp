<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="head.jsp" %>
    <style> 

    /* header.css */

    /* content */
    .page { clear:both; width: 100%; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    #page1, #page3 { background-color:#ececec; }
    .page_tit { text-align: center; font-size:32px; padding-top:1.2em; padding-bottom: 0.8em; color:green; }
    .page_tit2 { text-align: center; font-size:32px; padding-top:1.2em; padding-bottom: 0.8em; background-image: linear-gradient(90deg, red, orange, yellow, green, blue, navy, purple);
    -webkit-background-clip: text; color: transparent; font-weight: bold; }
    .lst { clear:both; width: 1200px; }
    .lst:after { content:""; display:block; clear: both;}
    .lst li { margin-bottom: 40px; }
    .lst li.left { float:left; margin-left:220px; display:block;}
    .lst li.right { float:right; width:350px; height: 459px; }
    .ico_lst { clear:both; width: 100%; overflow:hidden; }
    .ico_lst li a { display:block; background-repeat: no-repeat; background-position:0px center; background-size:auto 80%; padding-left: 55px; }
    .cate_tit { font-weight: bolder; color:#00a000; font-size:20px; padding-bottom: 0.5em; }
    .cate_com { color:green; font-size:14px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis; }

    #page2 { background-color: rgba(230, 248, 255, 0.5); }
    .pic_lst { clear:both; width: 100%; padding-bottom: 80px; }
    .pic_lst:after { content:""; display:block; clear:both; }
    .pic_lst li { float:left; position:relative; margin-bottom: 40px; }
    .pic_lst li a { display:block; width: 360px; margin-right: 40px;overflow: hidden; height: 300px; }
    .pic_lst li a img { display:block; width:600px; margin-left: -120px; transition-duration:0.8s; }
    .pic_lst li a:hover img { margin-left: 0; }
    .pic_lst li a .hv_box { width: 360px; height: 300px; color:#fff; opacity:0; position:absolute; top:0; left: 0;
                                z-index:10; transition-duration:0.8s; background-color:transparent; }
    .pic_lst li a:hover .hv_box { opacity:1; }
    .pic_tit { position:absolute; top:30px; left: 30px; text-shadow:0px 0px 3px red; }
    .pic_com { position:absolute; right:30px; bottom:30px; text-shadow:0px 0px 3px blue; }

    #page3 { background-repeat: no-repeat; background-size: cover; background-position:center center; height: 100vh; 
                background-image:url("./lg_display_picture/bg_partners.jpg"); overflow:hidden; }
    #page3 .page_wrap { width: 100%; }
    .circle_lst { clear:both; width: 4455px; }
    .circle_lst li { width: 200px; height: 200px; position:relative; border-radius:120px; overflow:hidden; background-color: #fff; float:left; margin:28px;  }
    .circle_lst.lst2 li { float:right; }
    .circle_lst li a { display:block; width: 100%; height: 100%; }
    .circle_lst li a img { display:block; width:160px; height:auto; position:absolute; top:50%; left: 20px; z-index:11; margin-top: -28px; }
    
    /* footer */
    
    </style>     
    <script>
        $(document).ready(function(){
            $(window).scroll(function(){
                var ht = $(window).height();
                var tp = $(this).scrollTop();
                if(tp>=600){
                    $(".hd").css("position","fixed");
                } else {
                    $(".hd").css("position","absolute");
                }
            });
            $
            $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
            $lst1_obj = $(".circle_lst li").clone();
            $(".circle_lst.lst2").append($lst1_obj);
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
            <video src="./lg_display_video/mainv.mp4" class="vdo" autoplay muted loop></video>
        </figure>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">ESG Impact<br><img src="./lg_display_picture/lg_esg.gi" width="600" alt=""></h2>
                <ul class="lst">
                    <li class="left">
                        <iframe name="vdo2" id="vdo2" width="560" height="315" src="https://www.youtube.com/embed/XWB25P8sm4Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </li>
                    <li class="right">
                        <ul class="ico_lst">
                            <li>
                                <a href="https://www.youtube.com/embed/XWB25P8sm4Q" target="vdo2" class="icon1">
                                    <h3 class="cate_tit">Environment</h3>
                                    <p class="cate_com">????????? ???????????? ????????????
                                        ???????????? 100%??? ???????????? ????????????!</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/KbAxfKlcG8Q" target="vdo2" class="icon2"> 
                                    <h3 class="cate_tit">Social</h3>
                                    <p class="cate_com">?????? ???????????? ????????? ????????????! ????????? ???????????? LG ?????????????????? ???????????? ?????????</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/gHT2D7INnuk" target="vdo2" class="icon3">
                                    <h3 class="cate_tit">Governance</h3>
                                    <p class="cate_com">??????????????? ???????????? ?????? ????????? ?????? ????????????????????? ????????? ?????? LG ???????????????</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page2">
            <div class="page_wrap">
                <h2 class="page_tit2">OLED Features</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features1.jpg" alt="?????? ?????? ?????? ?????????" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">?????? ?????? ?????? ?????????</h3>
                                <p class="pic_com">IFA 2022 ??? LG???????????????</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features2.jpg" alt="OLED??? ???????????? ????????????" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">OLED??? ???????????? ????????????</h3>
                                <p class="pic_com">K-Display 2022?????? ????????????</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features3.jpg" alt="OLED Shelf, 2022 ????????? ????????? ????????? ????????? ?????? ?????? Winner ??????" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">OLED Shelf, 2022 ????????? ????????? ????????? ????????? ?????? ?????? Winner ??????</h3>
                                <p class="pic_com">????????? ?????? ?????? ?????? Home Display, OLED Shelf</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features4.jpg" alt="??? 2??? OLEDs Go!" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">??? 2??? OLEDs Go!</h3>
                                <p class="pic_com">????????? ????????? ?????? 1??? ????????? ?????????</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features5.jpg" alt="?????? OLED??? ???????????? ????????? ????????????" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">?????? OLED??? ???????????? ????????? ????????????</h3>
                                <p class="pic_com">????????? ????????? ?????? ????????? ?????????</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features6.jpg" alt="????????? ????????? ??????" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">????????? ????????? ??????</h3>
                                <p class="pic_com">??????(Lab) ?????? ??????????????????</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features7.jpg" alt="2022 ???????????? YCC ??????" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">2022 ???????????? YCC ??????</h3>
                                <p class="pic_com">?????? OLED??? ??? ?????? ??? ??? ?????? ?????????</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features8.jpg" alt="SBS ???????????? ?????? OLED" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">SBS ???????????? ?????? OLED</h3>
                                <p class="pic_com">?????????????????? ????????? ?????????</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features9.jpg" alt="SID 2022 : ???????????? ???????????? OLED??? ?????????" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">SID 2022 : ???????????? ???????????? OLED??? ?????????</h3>
                                <p class="pic_com">????????? ????????? ??????</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <section class="page" id="page3">
        <div class="page_wrap">
            <h2 class="page_tit"><img src="./lg_display_picture/lg_partner.png" width="" alt=""></h2>
            <ul class="circle_lst lst1">
                <li><a href=""><img src="./lg_display_picture/page3_1.png" alt="????????????01" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_2.png" alt="????????????02" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_3.png" alt="????????????03" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_4.png" alt="????????????04" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_5.png" alt="????????????05" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_6.png" alt="????????????06" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_7.png" alt="????????????07" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_8.png" alt="????????????08" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_9.png" alt="????????????09" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_10.png" alt="????????????10" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_11.png" alt="????????????11" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_12.png" alt="????????????12" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_13.png" alt="????????????13" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_14.png" alt="????????????14" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_15.png" alt="????????????15" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_16.png" alt="????????????16" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_17.png" alt="????????????17" class="thumb"></a></li>
            </ul>
        </div>
    </section>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
	</footer>    
</div>
</body>
</html>