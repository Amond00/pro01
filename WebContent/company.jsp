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

    .con_fr { clear:both; margin-top: 40px; margin-bottom: 18px; }
    .con_fr:after { content:""; display:block; clear:both; }
    .page_aside { width: 200px;  float:left; }
    .year_fr { width: 1000px;  float:right; margin-top: 20px; margin-bottom: 20px; }
    .year_lst { clear: both; border-left:1px solid #c10037; }
    .year_lst li { clear:both; height: 90px; position:relative; }
    .year_lst li:before { content:""; display:block; width: 12px; height: 12px; 
    border-radius:8px; background-color:#c10037; position:absolute; top:0px; left:-6px; z-index:10; clear: both;}
    .year_lst li h3, .year_lst li p { padding-left: 30px; }
    .year_tit { color: #c10037; line-height: 30px;}
    .year_com { line-height: 30px;}

    /* content 2 */
    .page_title {font-size: 50px;  }
    .company_img1 { float: right; margin-left: 50px;}
    .company_img2 { text-align: center; margin: 50px;}
    .company_tit1 { line-height: 50px; font-size: 23px; position: relative; color: gray;}
    .company_tit2 { line-height: 50px; font-size: 40px; margin: 30px;}
    .company_tit.rose { color:#ac0010; }
    .company_com { line-height: 25px; }
    .company_com2 { line-height: 25px; text-align: center;}
    .ceo_mal { color: gray; font-size: 18px; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif}
    
    .company_tit { line-height: 2.4; font-size:32px;  padding-top: 1.5rem; }
    .map_lst { clear:both; width: 100%; padding-bottom: 60px; }
    .map_lst:after { content:""; display:block; clear: both; }
    .map_lst li { float:left; width: 50%; }

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
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>기업 정보</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="technology.jsp#page1">기술</option>
                    <option value="esg.jsp#page1">ESG</option>
                    <option value="invest.jsp#page1">투자정보</option>
                </select> &gt; 
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>기업개요</option>
                    <option value="company.jsp#page2">연혁</option>
                    <option value="company.jsp#page3">사업장 위치</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">기업개요</h2>
                <ul class="company">
                    <li>
                        <div class="company_img1"><img src="./lg_display_picture/company_ceo1.png" alt="" width="400px"><p class="ceo_mal">LG디스플레이 대표이사 사장 정호영</p></div>
                        <h3 class="company_tit rose">CEO MESSAGE</h3>
                        <h3 class="company_tit1">여러분이 꿈꾸는 미래, LG Display가 펼쳐갑니다.</h3>
                        <p class="company_com">
                            "몸이 열이면 눈은 아홉에 해당한다"(眼十中九)라는 말이 있을 정도로 우리는 눈으로<br>
                            세상을 보고, 느끼고, 경험합니다. LG디스플레이는 더 크고, 얇고, 생생한<br> 디스플레이를 통해 사람과 사람, 사람과 세상을 연결해 왔습니다.<br><br>
                            빠르게 다가오는 4차 산업혁명, 디지털 트랜스포메이션 시대에 디스플레이의 역할은<br> 더욱 다양하고 복합적이 될 것입니다. 디스플레이를 통한 경험의 
                            세계는 시각을 넘어<br> 청각과 촉각으로까지 무한대로 뻗어가고 있습니다.<br><br>
                            이제 LG디스플레이는 ‘고객 최우선’의 가치 아래 ‘The Best Display Solution<br> Company’로 나아가고자 합니다.<br>
                            제품과 기술뿐 아니라 서비스, 프로세스, 시스템, 인재 등 모든 분야에서 최고 수준을<br> 이루어, 고객의 기대를 뛰어 넘는 최고의 솔루션을 제공하겠습니다.<br><br>
                            시대와 환경이 바뀌어도 LG디스플레이가 궁극적으로 추구하는 바는 고객의 꿈과<br> 바람을 현실화 하는 것입니다. 인류의 더 편리하고 행복한 삶을 위한 동반자가 되고,<br> 
                            인류의 꿈과 더불어 끊임없이 성장하는 기업이 되겠습니다.<br>
                            You Dream, We Display<br>
                            감사합니다.
                        </p>
                    </li>
                    <li>
                        <h3 class="company_tit2">회사개요</h3>
                        <div class="company_img2"><img src="./lg_display_picture/company_ceo2.png" alt=""></div>
                        <p class="company_com2">
                            LG디스플레이는 1987년 TFT-LCD 개발을 시작으로 OLED, IPS 등의 차별화 기술을 통해,<br> 혁신적인 디스플레이 및 관련 제품을 생산/ 판매하는 글로벌 디스플레이 회사입니다.<br><br>
                            중국과 유럽, 북미 등 주요 시장을 보다 밀착 공략하기 위해 세계 곳곳에 생산 거점 및 판매<br> 법인과 지사를 설립하여 운영하고 있습니다. 
                            또한 TV, Mobile, IT 및 Auto, Commercial 용<br> 디스플레이 제품 등 다양한 디스플레이 제품군에서 Cinematic Sound OLED, 8K OLED, Flexible<br> OLED 등 혁신적인 
                            신기술을 지속 개발하고 있습니다. <br><br>
                            LG디스플레이는 차별화된 혁신 제품들을 가능케 하는 한 발 앞선 기술력과 안정적인 생산 능력을<br> 바탕으로 시장을 이끌어가는 선도적인 
                            디스플레이 업체로 자리매김 해 나가겠습니다. 
                        </p>
                    </li>
                    <li>
                        <h3 class="company_tit2">비전</h3>
                        <div class="company_img2"><img src="./lg_display_picture/company_ceo3.png" alt=""></div>
                        <p class="company_com2">
    
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
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>기업정보</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="technology.jsp#page1">기술</option>
                    <option value="esg.jsp#page1">ESG</option>
                    <option value="invest.jsp#page1">투자정보</option>
                </select> &gt; 
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>연혁</option>
                    <option value="company.jsp#page1">기업개요</option>
                    <option value="company.jsp#page3">사업장 위치</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">연혁</h2>
                <div class="con_fr">
                    <div class="page_aside">
                        <h2 class="aside_tit">2021년</h2>
                    </div>
                    <div class="year_fr">
                        <ul class="year_lst">
                            <li>
                                <h3 class="year_tit">12월</h3>
                                <p class="yesr_com">
                                    LG디스플레이, 차세대 TV 패널 'OLED.EX' 발표<br>
                                    LG디스플레이-연세대학교, 차세대 디스플레이 융합인재 육성
                                </p>
                            </li>
                            <li>
                                <h3 class="year_tit">11월</h3>
                                <p class="yesr_com">LG디스플레이 ‘Auto용 POLED’ 대한민국 기술대상 ‘대통령상’수상</p>
                            </li>
                            <li>
                                <h3 class="year_tit">9월</h3>
                                <p class="yesr_com">LG디스플레이, 7년 연속 동반성장 ‘최우수 기업’ 선정</p>
                            </li>
                            <li>
                                <h3 class="year_tit">6월</h3>
                                <p class="yesr_com">롤러블 OLED TV, 美 SID 선정 '올해의 디스플레이' 수상</p>
                            </li>
                            <li>
                                <h3 class="year_tit">1월</h3>
                                <p class="yesr_com">48인치 4K 벤더블 CSO(Cinematic Sound OLED) 최초 공개</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="con_fr">
                    <div class="page_aside">
                        <h2 class="aside_tit">2020년</h2>
                    </div>
                    <div class="year_fr">
                        <ul class="year_lst">
                            <li>
                                <h3 class="year_tit">12월</h3>
                                <p class="yesr_com">
                                    L88인치 8K OLED, 2020 대한민국 기술대상 ‘국무총리상’ 수상<br>
                                    CSO(Cinematic Sound OLED), 국가기술표준원 제정 ‘소리 내는 디스플레이’ 국가표준(KS) 등재
                                </p>
                            </li>
                            <li>
                                <h3 class="year_tit">11월</h3>
                                <p class="yesr_com">OLED TV 패널, 스위스 SGS社 친환경 제품(Eco Product) 인증 획득</p>
                            </li>
                            <li>
                                <h3 class="year_tit">9월</h3>
                                <p class="yesr_com">2019 동반성장지수 평가 최우수 등급 획득(6년 연속)</p>
                            </li>
                            <li>
                                <h3 class="year_tit">8월</h3>
                                <p class="yesr_com">OLED TV 패널, 英 인터텍(Intertek)社 ‘화질 정확도(Accurate Picture Quality)’ 인증 획득</p>
                            </li>
                            <li>
                                <h3 class="year_tit">7월</h3>
                                <p class="yesr_com">중국 광저우 8.5세대 OLED 패널 양산</p>
                            </li>
                            <li>
                                <h3 class="year_tit">6월</h3>
                                <p class="yesr_com">
                                    최고의 디스플레이 솔루션 기업' 비전체계 재정립<br>
                                    산업통상자원부 추진, '스트레처블(Stretchable) 디스플레이 개발' 국책과제 총괄 주관 기업 선정
                                </p>
                            </li>
                            <li>
                                <h3 class="year_tit">4월</h3>
                                <p class="yesr_com">2019 CDP Korea '탄소경영 아너스클럽', '물경영우수기업' 동시 선정</p>
                            </li>
                        </ul>
                    </div>
                </div>  
                <div class="con_fr">
                    <div class="page_aside">
                        <h2 class="aside_tit">2019년</h2>
                    </div>
                    <div class="year_fr">
                        <ul class="year_lst">
                            <li>
                                <h3 class="year_tit">12월</h3>
                                <p class="yesr_com">65인치 Rollable OLED, 2019 대한민국 기술대상 '대통령상' 수상</p>
                            </li>
                            <li>
                                <h3 class="year_tit">8월</h3>
                                <p class="yesr_com">중국 광저우 8.5세대 OLED 패널 공장 준공</p>
                            </li>
                            <li>
                                <h3 class="year_tit">7월</h3>
                                <p class="yesr_com">
                                    2018년 CDP Korea '기후변화대응', '물경영' 평가<br>
                                    국내 유일 리더쉽 A(최고등급)동시 획득
                                </p>
                            </li>
                            <li>
                                <h3 class="year_tit">7월</h3>
                                <p class="yesr_com">파주 6세대 P-OLED 생산라인(E6) 양산</p>
                            </li>
                            <li>
                                <h3 class="year_tit">1월</h3>
                                <p class="yesr_com">세계 최초 65인치 8K OLED 및 65인치 UHD 크리스탈 모션 OLED 패널 개발</p>
                            </li>
                        </ul>
                    </div>
                </div>  
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./lg_display_picture/product_main.png" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>기업정보</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="technology.jsp#page1">기술</option>
                    <option value="esg.jsp#page1">ESG</option>
                    <option value="invest.jsp#page1">투자정보</option>
                </select> &gt; 
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>사업장 위치</option>
                    <option value="company.jsp#page1">기업개요</option>
                    <option value="company.jsp#page2">연혁</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">사업장 위치</h2>
                <ul class="map_lst">
                    <li>
                        <h3 class="company_tit left">LG DISPLAY - 본사</h3>
                        <iframe class="left_map" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12656.565236645683!2d126.9297206!3d37.5281661!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x72a26b898945bc92!2zTEcg65SU7Iqk7ZSM66CI7J20IOuzuOyCrA!5e0!3m2!1sko!2skr!4v1666146628311!5m2!1sko!2skr" 
                        width="450" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </li>
                    <li>
                        <h3 class="company_tit left">LG DISPLAY - LG사이언스파크</h3>
                        <iframe class="left_map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8916.231490033171!2d126.76820454436864!3d37.80494511695174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c8d4e342146e7%3A0xe0f639c9d6051050!2zTEfrlJTsiqTtlIzroIjsnbQo7KO8KQ!5e0!3m2!1sko!2skr!4v1666084877809!5m2!1sko!2skr" 
                        width="450" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </li>
                    <li>

                        <h3 class="company_tit right">LG DISPLAY - 파주공장</h3>
                        <iframe class="right_map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12649.539584019261!2d126.82301299021319!3d37.56955337675578!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9c14541010d1%3A0xa6c2cd0160df8438!2zTEfsgqzsnbTslrjsiqTtjIztgaw!5e0!3m2!1sko!2skr!4v1666146757130!5m2!1sko!2skr" 
                        width="450" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </li>
                    <li>

                        <h3 class="company_tit right">LG DISPLAY - 구미공장</h3>
                        <iframe class="right_map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3223.2261484655105!2d128.40461033032457!3d36.11234781643312!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3565c41a6730d05b%3A0x607eefd91f443857!2zTEfrlJTsiqTtlIzroIjsnbQg6rWs66-4MjPqs7XsnqU!5e0!3m2!1sko!2skr!4v1666146815606!5m2!1sko!2skr" 
                        width="450" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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