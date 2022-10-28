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
                                    <p class="cate_com">지구를 생각하는 마음으로
                                        재활용률 100%를 달성하는 그날까지!</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/KbAxfKlcG8Q" target="vdo2" class="icon2"> 
                                    <h3 class="cate_tit">Social</h3>
                                    <p class="cate_com">함께 나눌수록 기쁨은 커지니까! 나눔을 실천하는 LG 디스플레이의 사회공헌 이야기</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/gHT2D7INnuk" target="vdo2" class="icon3">
                                    <h3 class="cate_tit">Governance</h3>
                                    <p class="cate_com">고객가치를 최우선에 두고 흔들림 없이 지속가능경영을 펼치고 있는 LG 디스플레이</p>
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
                            <img src="./lg_display_picture/features1.jpg" alt="세계 최대 가전 박람회" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">세계 최대 가전 박람회</h3>
                                <p class="pic_com">IFA 2022 속 LG디스플레이</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features2.jpg" alt="OLED로 만들어낸 미래도시" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">OLED로 만들어낸 미래도시</h3>
                                <p class="pic_com">K-Display 2022에서 펼쳐지다</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features3.jpg" alt="OLED Shelf, 2022 레드닷 디자인 어워드 디자인 컨셉 부문 Winner 수상" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">OLED Shelf, 2022 레드닷 디자인 어워드 디자인 컨셉 부문 Winner 수상</h3>
                                <p class="pic_com">공간에 제약 받지 않는 Home Display, OLED Shelf</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features4.jpg" alt="제 2회 OLEDs Go!" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">제 2회 OLEDs Go!</h3>
                                <p class="pic_com">공모전 수상작 발표 1위 수상작 케일럼</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features5.jpg" alt="투명 OLED로 변화하는 오피스 인테리어" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">투명 OLED로 변화하는 오피스 인테리어</h3>
                                <p class="pic_com">디지털 환경과 실제 공간이 만나다</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features6.jpg" alt="미래형 매장의 시작" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">미래형 매장의 시작</h3>
                                <p class="pic_com">‘랩(Lab) 오브 파리바게뜨’</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features7.jpg" alt="2022 구겐하임 YCC 파티" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">2022 구겐하임 YCC 파티</h3>
                                <p class="pic_com">투명 OLED로 더 빛이 난 그 현장 속으로</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features8.jpg" alt="SBS 방송에서 만난 OLED" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">SBS 방송에서 만난 OLED</h3>
                                <p class="pic_com">디스플레이의 미래를 엿보다</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./lg_display_picture/features9.jpg" alt="SID 2022 : 끊임없이 진화하는 OLED의 신기술" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">SID 2022 : 끊임없이 진화하는 OLED의 신기술</h3>
                                <p class="pic_com">새로운 미래를 열다</p>
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
                <li><a href=""><img src="./lg_display_picture/page3_1.png" alt="파트너스01" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_2.png" alt="파트너스02" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_3.png" alt="파트너스03" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_4.png" alt="파트너스04" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_5.png" alt="파트너스05" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_6.png" alt="파트너스06" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_7.png" alt="파트너스07" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_8.png" alt="파트너스08" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_9.png" alt="파트너스09" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_10.png" alt="파트너스10" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_11.png" alt="파트너스11" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_12.png" alt="파트너스12" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_13.png" alt="파트너스13" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_14.png" alt="파트너스14" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_15.png" alt="파트너스15" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_16.png" alt="파트너스16" class="thumb"></a></li>
                <li><a href=""><img src="./lg_display_picture/page3_17.png" alt="파트너스17" class="thumb"></a></li>
            </ul>
        </div>
    </section>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
	</footer>    
</div>
</body>
</html>