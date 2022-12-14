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

    .page_aside { width: 200px; min-height:500px; float:left; color:#ac0010; }
    .year_tit { color: #ac0010; }
    .year_fr { width: 1000px; min-height:500px; float:right; }
    .year_lst { clear: both; border-left:1px solid #333; }
    .year_lst li { clear:both; height: 90px; position:relative; }
    .year_lst li:before { content:""; display:block; width: 12px; height: 12px; 
    border-radius:8px; background-color:#333; position:absolute; top:0px; left:-6px; z-index:10; }
    .year_lst li h3, .year_lst li p { padding-left: 30px; }
    .last { margin-bottom: 30px;}
    
    .page_title { text-align: center; font-size: 50px; margin-bottom: 50px; }
    .esg_img { text-align: center; }
    .esg_img > img { margin-bottom: 40px;}
    .esg_tit { text-align: center; font-size: 30px; margin: 10px;}
    .esg_tit.rose { color: #8d192b; }
    .esg_com { text-align: center; line-height: 25px; margin: 30px; color: gray;}
    
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
            <img src="./lg_display_picture/product_main.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>ESG</option>
                    <option value="product.jsp#page1">??????</option>
                    <option value="technologyhtml#page1">??????</option>
                    <option value="company.jsp#page1">????????????</option>
                    <option value="invest.jsp#page1">????????????</option>
                </select> &gt; 
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>??????</option>
                    <option value="esg.jsp#page2">??????</option>
                    <option value="esg.jsp#page3">????????????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">ESG - ??????</h2>
                <ul class="esg">
                    <li>
                        <h3 class="esg_tit rose">?????? ?????? ?????? ??????</h3>
                        <p class="esg_com">
                            LG?????????????????? ??????????????? ????????? ???????????? ????????? ?????? ????????? ????????? ?????? ????????? ????????? ???????????? ????????????.<br> 
                            ??????????????? ?????? ????????? ???????????? ???????????? ????????? ????????????????????? ?????? ?????? ????????????<br> 
                            ???????????? ????????? ????????? ?????? ?????? ???????????? ?????? ?????? ??????, ???????????? ??????, ?????? ?????? ??? ????????? ????????? ???????????? ????????????.<br>
                            LG?????????????????? ???????????? ?????? ????????? ???????????? ????????? ???????????? ?????? 2050????????? ?????? ?????? ????????? ?????? ????????? ?????????????????????.
                        </p>
                        <div class="esg_img"><img src="./lg_display_picture/esg_env1.png" alt="" width="1000px"></div>

                    </li>
                    <li>
                        <h3 class="esg_tit rose">???????????? ????????? ??????</h3>
                        <p class="esg_com">
                            LG?????????????????? ???????????? ????????? ????????? ???????????? ???????????? ???????????? ??????????????? ???????????? ???????????? ????????????.<br>
                            ????????????, ?????? ??????, ?????? ??????, ?????? ?????? ??? ?????? ????????? ????????? ???????????? ??????????????? ????????????, ?????? ????????? ???<br>
                            ???????????? ?????? ?????? ???????????? ???????????? ????????? ?????? ??? ?????? ????????? ???????????????.
                        </p>
                        <div class="esg_img"><img src="./lg_display_picture/esg_env2.png" alt="" width="1000px"></div>
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./lg_display_picture/product_main.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>ESG</option>
                    <option value="product.jsp#page1">??????</option>
                    <option value="technologyhtml#page1">??????</option>
                    <option value="company.jsp#page1">????????????</option>
                    <option value="invest.jsp#page1">????????????</option>
                </select> &gt; 
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>??????</option>
                    <option value="esg.jsp#page1">??????</option>
                    <option value="esg.jsp#page3">????????????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">ESG - ??????</h2>
                <ul class="esg">
                    <li>
                        <h3 class="esg_tit rose">????????????</h3>
                        <p class="esg_com">
                            LG Display??? ??????????????? ??????????????? ???????????? ???????????? ?????? ????????? ?????????, ??????????????? ???????????? ?????? ?????????????????? ????????? ????????? ???????????? ??????????????? ?????? ?????? ???????????????.
                            LG Display??? ????????? ????????????????????? ??????????????? ???????????? ?????? UN ??????????????????, UN ????????? ?????????, UN ????????? ?????? ?????? ??????, OECD ??????????????? ???????????????, ILO ?????? ??? ??????, ??????, ??????, ????????? ?????? ????????? ?????? ??????????????? ??? ????????? ???????????? ????????? ???????????? ?????????????????????.
                            ??????, ????????? ???????????? ???????????? ???????????????????? ????????? ??? ?????? ?????? ???????????? ????????? ??????????????? ?????? ??????, ???????????? ??????, ???????????? ??????, ??????????????? ??????, ????????? ??? ????????? ????????? ??????, ?????? ??? ????????????, ???????????? ??????, ???????????? ??????, ?????? ??? ??????, ????????? ???????????? ?????? ??? 10??? ????????? ?????? ???????????? ????????? ???????????? ?????? ???????????? ?????? ???????????? ?????? ??? ?????? ??????????????? ?????????????????????.
                            ?????? ???????????? ???????????? ???????????? ????????? ?????? ?????? ????????? ???????????? ????????? ????????? ??????????????????.
                            LG Display??? ???????????? ????????? ????????? ???????????? ????????? ????????? ????????? ??? ?????? ??????????????????????????? ????????? ??? ????????? ???????????? ??????????????? ??????????????? ?????? ???????????? ???????????? ??? ?????????????????????.
                        </p>
                    </li>
                    <li>
                        <h3 class="esg_tit rose">???????????? ??????</h3>
                        <p class="esg_com">
                            ?????? ??????
                            ???????????? ????????? ?????? ????????? ????????????, ????????? ?? ???????????? ???????????? ???????????????.<br>
                            ?????? ??? ??????????????? ?????? ?????? ????????? ????????????, ???????????? ???????????? ??????????????? ???????????????.
                        </p>
                    </li>
                </ul>
            </div>
            <div class="page_wrap">
                <div class="page_aside">
                    <h2 class="aside_tit">???????????? ??????</h2>
                </div>
                <div class="year_fr">
                    <ul class="year_lst">
                        <li>
                            <h3 class="year_tit">?????? ??????</h3>
                            <p class="yesr_com">???????????? ????????? ?????? ????????? ????????????, ????????? ?? ???????????? ???????????? ???????????????.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">????????? ??? ????????? ????????? ??????</h3>
                            <p class="yesr_com">????????? ??? ????????? ????????? ????????????, ????????? ????????? ?????? ????????? ???????????? ????????? ?????? ????????? ????????????.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">?????? ??? ????????????</h3>
                            <p class="yesr_com">?????? ??? ??????????????? ?????? ?????? ????????? ????????????, ???????????? ???????????? ??????????????? ???????????????.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">???????????? ??????</h3>
                            <p class="yesr_com">????????? ????????? ?????? ????????????, ????????????, ?????? ????????? ???????????????.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">???????????? ??????</h3>
                            <p class="yesr_com">????????? ????????? ??????????????? ????????????, ???????????? ????????? ??????????????? ???????????????.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">???????????? ??????</h3>
                            <p class="yesr_com">?????? ?????? ????????? ????????????, ??????????????? ?????? ????????? ?????? ????????? ????????? ???????????????.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">??????????????? ??????</h3>
                            <p class="yesr_com">???????????? ???????????? ?????? ??? ??????????????? ????????? ???????????????.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">???????????? ??????</h3>
                            <p class="yesr_com">???????????? ?????? ????????? ???????????? ????????????, ???????????? ?????? ????????? ???????????????.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">?????? ??? ??????</h3>
                            <p class="yesr_com">?????? ????????? ?????? ?????????????? ?????? ????????? ????????????, ?????????????? ?????? ????????? ???????????????.</p>
                        </li>
                        <li class="last">
                            <h3 class="year_tit">????????? ???????????? ??????</h3>
                            <p class="yesr_com">???????????? ?????????????????? ?????? ??? ???????????? ???????????? ????????? ????????? ????????????.</p>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./lg_display_picture/product_main.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>ESG</option>
                    <option value="product.jsp#page1">??????</option>
                    <option value="technologyhtml#page1">??????</option>
                    <option value="company.jsp#page1">????????????</option>
                    <option value="invest.jsp#page1">????????????</option>
                </select> &gt; 
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>????????????</option>
                    <option value="esg.jsp#page1">??????</option>
                    <option value="esg.jsp#page2">??????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">ESG - ????????????</h2>
                <ul class="esg">
                    <li>
                        <h3 class="esg_tit">??????</h3>
                        <p class="esg_com">
                            LG??????????????? ???????????? ?????? ?????? ??? ????????? ?????? ????????? ?????? ??????????????? ?????? ???????????? ??? ????????? ????????? ???????????? ????????????. ???????????? 2???, ????????????????????? 1???,
                            ???????????? 4????????? ????????? ??? 7?????? ???????????? ?????? ??????????????? ???????????? ????????? ???????????? ????????????.
                            ??????????????? ????????? ????????? ???????????? ???????????? ????????? 1??? ?????? ????????????, ??????, ???????????? ??? ?????? ?????? ????????? ???????????? ?????????, ????????? ????????? ????????? ?????? ?????? ?????? ???
                            ????????? ???????????? ???????????? ????????????. ????????? ?????? ??? ?????? ????????? ????????? ??? ???????????? ???????????? ???????????? ???????????? ?????????, 2021??? ????????? ???????????? ???????????? 100%,
                            ???????????? 100%?????????.
                        </p>
                        <div class="esg_img"><img src="./lg_display_picture/esg_owner1.png" alt=""></div>
                    </li>
                    <li>
                        <h3 class="esg_tit">????????? ????????? ??? ?????????</h3>
                        <p class="esg_com">
                            LG?????????????????? ???????????? ??????, ??????????????? ??????, ???????????? ?????? ?????? ?????? ???????????? ???????????? ???????????? ???????????? ???????????? ?????? ???????????? ????????????. ????????? ?????? ??????
                            ???????????? ??????, ??????, ??????, ??????, ????????? ?????? ?????? ?????? ????????? ?????? ?????? ?????????, ????????????, ???????????????, ??????, ???????????? ??? ????????? ???????????? ?????? ??????????????? ????????????
                            ??????????????? ???????????? ????????? ?????? ???????????? ???????????? ????????????.
                            LG?????????????????? ??????????????? ???????????? ??????????????? ?????? ????????? ???????????? ?????? ?????? ?????? ??????, ?????? ??????, ?????? ?????? ??? ?????? ?????? ?????? ??????, ?????? ????????? ?????? ????????? ??????
                            ??????, ????????? ????????? ?????? ?????? ???????????? ???????????? ?????? ???????????? ????????????. ??????, ??????????????? ????????? ???????????? ???????????? ??????????????? ??????, ?????? ??? ????????? ????????? ??????
                            ???????????? ?????? ??? ????????? ???????????? ????????????. ??????????????? ????????? ???????????? ????????? ?????? ???12?????? ?????? ????????? ?????? ????????? ????????? ?????? ?????? ??????????????? ???????????? ??? ????????????.
                        </p>
                        <div class="esg_img"><img src="./lg_display_picture/esg_owner2.png" alt=""></div>
                    </li>
                    <li>
                        <h3 class="esg_tit">????????? ????????? ??? ?????????</h3>
                        <p class="esg_com">
                            LG?????????????????? ???????????? ????????? ????????? ?????? ???????????? ????????? ??????????????? ????????? ???????????? ?????????(57%)??? ???????????? ???????????? ?????? ????????? ?????? ?????? ????????? ???????????? ????????? ???
                            ????????? ?????? ????????????. ????????? ?????? ????????? ????????? ?????? ????????? ???????????????????????????????????? ?????? ?????????, ?????????, ????????? ?????? ??????????????? ???????????? ???????????? ????????? ???????????? ?????????
                            ????????? ???????????????. LG?????????????????? ??????????????? ???????????? ??????????????? ?????? ?????? ??? ?????? ?????? ????????? ?????? ????????? ???????????? ???????????? ?????? ???????????? ???????????? ??????, ??? ?????????
                            ??????????????? ?????? ?????? ????????? ????????? ?????? ?????? 1??? ????????? ??????????????? ????????? ????????? ???????????? <br>????????????.
                        </p>
                    </li>
                    <li>
                        <h3 class="esg_tit">????????? ????????? ??? ?????????</h3>
                        <p class="esg_com">
                            LG?????????????????? ???????????? ??????, ??????????????? ??????, ???????????? ?????? ?????? ?????? ???????????? ???????????? ???????????? ???????????? ???????????? ?????? ???????????? ????????????. ????????? ?????? ?????? ????????????
                            ??????, ??????, ??????, ??????, ????????? ?????? ?????? ?????? ????????? ?????? ?????? ?????????, ????????????, ???????????????, ??????, ???????????? ??? ????????? ???????????? ?????? ??????????????? ???????????? ??????????????? ????????????
                            ????????? ?????? ???????????? ???????????? ????????????.LG?????????????????? ??????????????? ???????????? ??????????????? ?????? ????????? ???????????? ?????? ?????? ?????? ??????, ?????? ??????, ?????? ?????? ??? ?????? ?????? ?????? ??????, 
                            ?????? ????????? ?????? ????????? ?????? ??????, ????????? ????????? ?????? ?????? ???????????? ???????????? ?????? ???????????? ????????????. ??????, ??????????????? ????????? ???????????? ???????????? ??????????????? ??????, ?????? ??? ????????? 
                            ????????? ?????? ???????????? ?????? ??? ????????? ???????????? ????????????. ??????????????? ????????? ???????????? ????????? ?????? ???12?????? ?????? ????????? ?????? ????????? ????????? ?????? ?????? ??????????????? ???????????? ??? ????????????.
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