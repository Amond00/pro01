<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    .content { display:none; }
    .content:target { display:block; }

    .page_title { padding-top: 1em; }
    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: deepskyblue; }
    .to_top.on { visibility: visible; }

    /* content 2 */
    .page_title { text-align: center; margin-bottom: 50px;
    background-image: linear-gradient(90deg, red, orange, yellow, green, blue, navy, purple);
    -webkit-background-clip: text; color: transparent; font-weight: bold; font-size: 80px; }
    .tec_img { float: left; position: relative; }
    .tec_img > img { width: 1200px; }
    .tec_tit {  font-size: 50px; text-align: center; clear: both; }
    .tec_tit.purple { color: purple; }
    .tec_tit.gray { color: gray; }
    .tec_tit2 { font-size: 35px; text-align: center; color: gray;}
    .tec_tit.blue { color:deepskyblue; }
    .tec_com { margin: 50px; font-size: 18px; text-align: center; color: #868e9b}
    .tec_com2 { text-align: center; clear: both; color: #868e9b; line-height: 30px; font-size: 20px; margin-bottom: 60px;}
    .vs2 { margin-bottom: 50px; }

    </style>
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
    <!--div.bread>div.bread_fr>a.home{HOME}+select#sel1.sel+select#sel2.sel-->
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./lg_display_picture/product_main.png" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.html" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>기술</option>
                    <option value="product.html#page1">제품</option>
                    <option value="esg.html#page1">ESG</option>
                    <option value="company.html#page1">기업정보</option>
                    <option value="invest.html#page1">투자정보</option>
                </select> &gt; 
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>OLED</option>
                    <option value="technology.html#page2">LDC</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title" selected>OLED Technology</h2>
                <figure class="vs2">
                    <video src="./lg_display_video/mainv.mp4" class="vdo" autoplay muted loop></video>
                </figure>
                <ul class="tec">
                    <li>
                        <div class="tec_img"><img src="./lg_display_picture/technology_oled1.png" alt=""></div>
                        <h3 class="tec_tit purple">OLED Natural Reality</h3>
                        <p class="tec_com">
                            지금까지의 TV와 디스플레이는 사람들의 이목을 사로잡기 위해 더 밝고 화려하며 자극적인 화질을 추구해왔습니다.<br>
                            이러한 경쟁 속에 꼭 지켜야 할 가치는 무엇일까?<br>
                            OLED는 생각합니다.<br>
                            세상이 디스플레이로 가득 찰수록, 왜곡 없는 진실 된 정보가 전달되고, 건강과 환경 파괴 없이,<br> 우리의 소통과 꿈을 펼칠 수 있도록 도와야 한다고,<br>
                            OLED의 기술이 자연 그대로의 시각과 청각 경험을 있는 그대로 전달하고, 수많은 디스플레이가 공해와 유해물질 없이<br>
                            “나＂다운 삶에 자연스럽게 녹아 드는 Natural Reality를 추구하는 이유입니다.
                        </p>
                    </li>
                    <li>
                        <div class="tec_img"><img src="./lg_display_picture/technology_oled4.png" alt=""></div>
                        <h3 class="tec_tit blue">OLED.EX 위대한 디테일 기술과 경험</h3>
                        <p class="tec_com blue">
                            고효율의 스마트 소자가 적용된 OLED.EX는
                            당신이 선호하는 컨텐츠를 분석하여 당신에게 맞는<br>
                            개인화 알고리즘으로 최적화된 머신러닝을 통해
                            완벽한 컨텐츠를 전달합니다.
                            OLED. EX는 신뢰성이 더욱 개선 되었고,<br>
                            사용자가 더 긴 시간 동안, 안정된 화질로
                            사용할 수 있게 되었습니다.
                        </p>
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./lg_display_picture/product_main.png" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.html" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>기술</option>
                    <option value="product.html#page1">제품</option>
                    <option value="esg.html#page1">ESG</option>
                    <option value="company.html#page1">기업정보</option>
                    <option value="invest.html#page1">투자정보</option>
                </select> &gt; 
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>LCD</option>
                    <option value="technology.html#page1">OLED</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">LCD Technology</h2>
                <figure class="vs2">
                    <video src="./lg_display_video/tec.mp4" class="vdo" autoplay muted loop></video>
                </figure>
                <ul class="tec">
                    <li>
                        <div class="tec_img"><img src="./lg_display_picture/technology_lcd1.png" alt=""></div>
                        <h3 class="page_title">변함없는 선명한 화질</h3>
                        <p class="tec_com">
                            LG디스플레이의 IPS기술은 액정 분자가 수평으로 구동되는 원리를 바탕으로<br>
                            우수한 화질 및 저 소비전력, 안정적인 화면을 구현하는 기술입니다.<br><br>
                            <h3 class="tec_tit2">Technology of IPS<br></h3>
                            <p class="tec_com2">IPS는 수평 액정 배열 방식으로 어느 각도에서도 동일한 화면을 즐길 수 있는 광시야각 기술입니다.</p>
                        </p>
                    </li>
                    <li>
                        <div class="tec_img"><img src="./lg_display_picture/technology_lcd2.png" alt=""></div>
                        <h3 class="page_title">모든 제품에 적용 가능한 "Oxide-TFT LCD" 기술</h3>
                        <p class="tec_com">
                            <h3 class="tec_tit2">Oxide TFT 기술</h3>
                            <p class="tec_com2">
                            모든 디스플레이 제품에 적용이 가능합니다. 기존 a-Si TFT 의 전자 이동도보다
                            50배 이상<br> 높은 성능으로 모바일부터 노트북, 대형 TV에 이르기까지 전 제품군에 응용이 가능합니다.
                            </p>
                            <h3 class="tec_tit2">선명한 화질</h3> 
                            <p class="tec_com2">개별 화소를 구성하는 TFT의 크기를 줄이고 성능을 높여서<br> 고해상도/풍부한 색상의 디스플레이 구현이 가능합니다.</p>
                            <h3 class="tec_tit2">디자인 혁신</h3> 
                            <p class="tec_com2">Oxide TFT를 적용하면 화면 외곽의 패널 구동 회로부 크기를 획기적으로<br> 줄일 수 있어서 슬림한 디자인의 디스플레이를 만들 수 있습니다.</p>
                            <h3 class="tec_tit2">낮은 소비전력</h3> 
                            <p class="tec_com2">Oxide TFT는 화면이 작동하지 않는 시간에 누설 전류가 매우 작기 때문에<br> 전력 효율이 좋아 노트북이나 패드 제품의 배터리 사용 시간을 늘릴 수 있습니다.</p>
                            <h3 class="tec_tit2">고속 구동</h3> 
                            <p class="tec_com2">LG디스플레이의 고성능 Oxide TFT는 하이엔드급 게이밍 모니터/노트북과<br> 같은 고속 구동 제품 및 가변 주파수 제품에 최적화 되어 있습니다.</p>
                            <h3 class="tec_tit2">제품 수명 연장</h3> 
                            <p class="tec_com2 3">
                                LG디스플레이는 Oxide TFT 기술을 가장 오랜 기간 연구 개발하여 업계 최초로 대량 양산에<br> 성공한
                                선구자 입니다. 고객이 오랫동안 믿고 사용할 수 있는 제품 신뢰성을 보장합니다.
                            </p>
                        </p>
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <script>
        var sel = document.getElementsByClassName("sel");
        for(var i=0;i<sel.length;i++){
            sel[i].addEventListener("change", function(){
                if(this.value!="") location.href = this.value;
            });
        }
    </script>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>