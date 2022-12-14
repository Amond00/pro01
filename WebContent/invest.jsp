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

    .noti_lst {  width:800px; margin-bottom: 30px; }
    .noti_lst li { clear:both; height:32px; border-bottom:1px solid #333;
    box-sizing:border-box; }
    .noti_lst li:first-child { border-top:2px solid #333; }
    .noti_lst li:last-child { border-bottom:2px solid #333; }
    .noti_lst li span { display:block; box-sizing:border-box; float:left; line-height: 32px; font-size:14px; }
    .noti_num { width: 60px; text-align:center; }
    .not_tit { width: 340px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
    .item_hd { font-weight:600; }
    .not_tit.item_hd { text-align: center; }
    .not_tit a { display: block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; padding-right: 12px; color:#333; }
    .noti_auth { width: 80px; text-align: center; }
    .noti_date { width: 110px; text-align: center; }

    .noti_title { display: block; clear: both; text-align: center;}

    /* content2 */

    .page_title { font-size: 60px; margin-top: -60px; margin-bottom: 100px;}
    .inv_tit { font-size: 40px; margin: 20px; color:#c10037; text-align: center;}
    .inv_img > img { margin: 20px;}
    .tit_down { text-align: center; margin: 100px;}
    .inv_com { margin-bottom: 60px; color: gray; line-height: 20px; text-align: center;}
    .inv_img2 { text-align: center; margin-bottom: 50px;}
    .page_title3 { color: #c10037; font-size: 60px; margin: 30px; text-align: center;}
    
    .agree_fr {width: 1200px; margin: 10px auto; padding: 24px; border:2px solid #eee; height:600px; overflow-y:auto; }

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
    <!--div.bread>div.bread_fr>a.home{HOME}+select#sel1.sel+select#sel2.sel-->
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./lg_display_picture/product_main.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>????????????</option>
                    <option value="product.jsp#page1">??????</option>
                    <option value="technology.jsp#page1">??????</option>
                    <option value="esg.jsp#page1">ESG</option>
                    <option value="company.jsp#page1">????????????</option>
                </select> &gt; 
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>????????????</option>
                    <option value="invest.jsp#page2">????????????</option>
                    <option value="invest.jsp#page3">????????????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">????????????</h2>
                <ul class="inv">
                    <li>
                        <h3 class="inv_tit">????????????</h3>
                        <div class="inv_img"><img src="./lg_display_picture/invest_mgm1.png" alt="" ></div>
                        <div class="inv_img"><img src="./lg_display_picture/invest_mgm2.png" alt="" ></div>
                        <p class="inv_com">
                            
                        </p>
                    </li>
                    <li>
                        <h3 class="inv_tit">????????????</h3>
                        <div class="inv_img"><img src="./lg_display_picture/invest_mgm3.png" alt="" ></div>
                        <div class="inv_img"><img src="./lg_display_picture/invest_mgm4.png" alt="" ></div>
                        <p class="inv_com">
                            
                        </p>
                    </li>
                    <li>
                        <h3 class="inv_tit">????????????</h3>
                        <div class="inv_img"><img src="./lg_display_picture/invest_mgm5.png" alt="" ></div>
                        <p class="inv_com">
                            (1) ?????????????????? ????????????????????? ??????<br>
                            (2) ??????????????? ????????? ????????????, ????????????, ??????????????? ?????? ??? ??????????????? ???????????? ??????<br>
                            (3) ?????????????????? ?????? ?????? ????????? ????????????????????? ???(???)??? ?????????<br>
                            (4) ????????? ????????? ???????????? ???
                        </p>
                    </li>
                    <li class="tit_down">
                        <h3 class="inv_tit">?????? ???????????? - ???????????????</h3>
                        <p class="inv_com">
                            <a>2022??? 2?????? ??????????????? (K-IFRS)</a>
                            <a class="down" href="https://www.lgdisplay.com/kor/attachment/downloadTest?originFileName=company/investment/2022%EB%85%84_2%EB%B6%84%EA%B8%B0_%EC%86%90%EC%9D%B5%EA%B3%84%EC%82%B0%EC%84%9C_K_IFRS.pdf">
                            [**** DOWNLOAD ****] 
                            </a><br>
                            <a>2022??? 1?????? ??????????????? (K-IFRS)</a>
                            <a class="down" href="https://www.lgdisplay.com/kor/attachment/downloadTest?originFileName=company/investment/2022%EB%85%84_1%EB%B6%84%EA%B8%B0_%EC%86%90%EC%9D%B5%EA%B3%84%EC%82%B0%EC%84%9C_K_IFRS.pdf">
                            [**** DOWNLOAD ****] 
                            </a>
                        </p>
                        <h3 class="inv_tit">?????? ???????????? - ?????? ????????? </h3>
                        <p class="inv_com">
                            <a>2022??? 2?????? ??????????????? (K-IFRS)</a>
                            <a class="down" href="https://www.lgdisplay.com/kor/attachment/downloadTest?originFileName=company/investment/2022%EB%85%84_2%EB%B6%84%EA%B8%B0_%EC%9E%AC%EB%AC%B4%EC%83%81%ED%83%9C%ED%91%9C_K_IFRS.pdf">
                            [**** DOWNLOAD ****]
                            </a><br>
                            <a>2022??? 1?????? ??????????????? (K-IFRS)</a>
                            <a class="down" href="https://www.lgdisplay.com/kor/attachment/downloadTest?originFileName=company/investment/2022%EB%85%84_1%EB%B6%84%EA%B8%B0_%EC%9E%AC%EB%AC%B4%EC%83%81%ED%83%9C%ED%91%9C_K_IFRS.pdf">
                            [**** DOWNLOAD ****]
                            </a>
                        </p>
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
                    <option>????????????</option>
                    <option value="product.jsp#page1">??????</option>
                    <option value="technology.jsp#page1">??????</option>
                    <option value="esg.jsp#page1">ESG</option>
                    <option value="company.jsp#page1">????????????</option>
                </select> &gt; 
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>????????????</option>
                    <option value="invest.jsp#page1">????????????</option>
                    <option value="invest.jsp#page3">????????????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">????????????</h2>
                <ul class="inv">
                    <div class="inv_img2"><img src="./lg_display_picture/invest_mgm6.png" alt="" ></div>
                    <li>
                        <h3 class="inv_tit">?????? ??? ????????? ????????? ?????? ????????????</h3>
                        <p class="inv_com">
                            LG?????????????????? ????????? ????????? ???????????? ?????? ?????? ??? ?????? ?????? ????????? ??????????????? ???????????? ????????????. ????????????????????? ????????????????????? ?????? ??????, ?????? ??? ?????? ???
                            ???????????? ????????? ?????? ????????? ??????????????? ?????????????????????(DART)??? ???????????? ?????????, ?????? ????????????????????? ?????? ????????? ???????????? ????????????.
                            ??? ????????? ?????? ??????, ?????? ?????? ??? ??????, ?????? ??? ?????? ????????? ????????? ??????????? ???????????? ??? DART, KIND ??? ???????????????????????? ?????? ?????? ???????????????.<br><br>
                            ?????? ????????? ???????????? ??? ????????? ???????????? ?????? ???????????? ???????????? ?????????, ?????? ??? ????????? ????????? ?????? Web Casting ????????? ??? ??????????? ?????? ????????? ?????? ?????????.
                            ?????? ?????????????? ?????? ?????????????????? ???????????????????????????(U.S. Securities Exchange Commission, SEC)??? ???????????????, ??????????????????, ???????????????(Form 20-F) ??????
                            ?????????, ?????? ??????????????? ?????? ???????????? ??? ??????????????? ?????? Special Disclosure ????????? ???????????? ????????????.
                        </p>
                    </li>
                    <li>
                        <h3 class="inv_tit">?????? ??? ????????? ???????????? ?????????</h3>
                        <p class="inv_com">
                            LG?????????????????? ?????? ??? ??????????????? ????????? ?????? ????????? ????????? IR ????????? ???????????? ????????????.<br> ???????????? ?????? ?????? ??? ????????? ????????? ?????? ????????? IR Materials??? ????????????
                            ?????????,<br> ?????????????????? ???????????? ??? 2??? ???????????? ????????????, ?????? ??????????????? ?????? ????????? ????????? ?????? ????????? ??????????????????<br> ????????????????????? ??????????????? ??????????????? ????????????.<br><br>
                            ?????? ?????? ??? ?????? ???????????????, ?????? ??? ????????? ?????????????????? ???????????? ????????? NDR(Non-Deal Roadshow)<br> ???????????? ???????????? ?????????, ?????? ??? ?????? ???????????? ??????,
                            ???????????? ???????????? ????????? 1:1 ??? ?????? <br>????????? ?????????????????? ??? ????????? ????????? IR??? ???????????? ????????????.
                        </p>
                    </li>
                </ul>
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
                    <option>????????????</option>
                    <option value="product.jsp#page1">??????</option>
                    <option value="technology.jsp#page1">??????</option>
                    <option value="esg.jsp#page1">ESG</option>
                    <option value="company.jsp#page1">????????????</option>
                </select> &gt; 
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>????????????</option>
                    <option value="invest.jsp#page1">????????????</option>
                    <option value="invest.jsp#page2">????????????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <!-- <h2 class="page_title3">????????????</h2>
                <ul class="noti_lst">
                    <li>
                        <span class="noti_num item_hd">??????</span>
                        <span class="not_tit item_hd">??????</span>
                        <span class="noti_auth item_hd">????????????</span>
                        <span class="noti_date item_hd">?????????</span>
                    </li>
                    <li>
                        <span class="noti_num">1</span>
                        <span class="not_tit">2022??? 1?????? ?????????</span>
                        <span class="noti_auth"><a href="https://www.lgdisplay.com/kor/attachment/download?s3FileName=2022-05-16/Du4f7kc5BYkTXXZbkmKJ8DwXUa8Srps0.pdf&originFileName=Q1%202022%20%EB%B6%84%EA%B8%B0%EB%B3%B4%EA%B3%A0%EC%84%9C.pdf">DOWNLOAD</a></span>
                        <span class="noti_date">2022-05-16</span>
                    </li>
                    <li>
                        <span class="noti_num">2</span>
                        <span class="not_tit">2022??? ?????? ?????????</span>
                        <span class="noti_auth"><a href="https://www.lgdisplay.com/kor/attachment/download?s3FileName=2022-08-16/xermW8TyxgneBRvDW2czGwn7YCbgDTeg.pdf&originFileName=%5BLG%EB%94%94%EC%8A%A4%ED%94%8C%EB%A0%88%EC%9D%B4%5D%EB%B0%98%EA%B8%B0%EB%B3%B4%EA%B3%A0%EC%84%9C(2022.08.16).pdf">DOWNLOAD</a></span>
                        <span class="noti_date">2022-08-16</span>
                    </li>
                    <li>
                        <span class="noti_num">3</span>
                        <span class="not_tit">2021??? ?????? ???????????????</span>
                        <span class="noti_auth"><a href="https://www.lgdisplay.com/kor/attachment/download?s3FileName=2022-03-15/QaAzdNVbgdEuaEfnUJhLZiodvdVeDeZt.pdf&originFileName=LG%EB%94%94%EC%8A%A4%ED%94%8C%EB%A0%88%EC%9D%B4_%EC%82%AC%EC%97%85%EB%B3%B4%EA%B3%A0%EC%84%9C_20220315.pdf">DOWNLOAD</a></span>
                        <span class="noti_date">2022-03-15</span>
                    </li>
                    <li>
                        <span class="noti_num">4</span>
                        <span class="not_tit">2021 Annual Report Form 20-F_????????????</span>
                        <span class="noti_auth"><a href="https://www.lgdisplay.com/kor/attachment/download?s3FileName=2022-04-29/NEajk3mkcvApwxmR2qiNJB8N9WHPuz1U.pdf&originFileName=2021%20Annual%20Report%20Form%2020-F_%EA%B5%AD%EB%AC%B8%EC%9A%94%EC%95%BD.pdf">DOWNLOAD</a></span>
                        <span class="noti_date">2022-04-29</span>
                    </li>
                    <li>
                        <span class="noti_num">5</span>
                        <span class="not_tit">2021 LG???????????????(???) ?????????????????? ?????????</span>
                        <span class="noti_auth"><a href="https://www.lgdisplay.com/kor/attachment/download?s3FileName=2022-06-02/IX6R6ckgge1HGxPKJWS40sYh1KeebJp7.pdf&originFileName=2021%EB%85%84%20LG%EB%94%94%EC%8A%A4%ED%94%8C%EB%A0%88%EC%9D%B4(%EC%A3%BC)%20%EA%B8%B0%EC%97%85%EC%A7%80%EB%B0%B0%EA%B5%AC%EC%A1%B0%20%EB%B3%B4%EA%B3%A0%EC%84%9C.pdf">DOWNLOAD</a></span>
                        <span class="noti_date">2022-06-02</span>
                    </li>
                </ul> -->
                <ul class="inv">
                    <li>
                        <h2 class="page_title3">????????????</h2>
                        <div class="inv_img2"><img src="./lg_display_picture/invest_mgm7.png" alt="" ></div>
                        <div class="agree_fr" text>
                            LG?????????????????? ????????????????????????<br><br>

                                ??? ??? : 2009.8.31<br><br>

                                ???1??? (??????)<br><br>
                                ??? ????????? ????????? ??????????????? ??????????????? ?????? ????????? ????????? ??? ????????? ?????? ????????? ???????????? ?????????????????? ???????????? ????????? ???????????? ?????? ??? ??????, ??????????????? ?????? ?????? ????????? ????????? ????????? ???????????? ??????.<br><br>

                                ???2??? (????????????)<br><br>
                                ??????????????? ?????? ??? ??????????????? ????????? ?????? ????????? ??????, ???????????? ?????? ????????? ???????????? ?????? ??????????????? ??? ????????? ????????? ?????? ?????????.<br><br>

                                ???3??? (????????? ??????)<br><br>
                                1. ????????????????????? ?????? ????????? ?????? ??? ?????? ?????? ????????? ???????????? ??????????????? ????????? ?????? ??? ?????? ???????????? ??????????????? ?????????????????? ?????? ??????(?????? ???????????????<br>
                                ??????) ??? ??? ?????????(?????? ??????????????? ??????), ???????????????(?????? ?????????????????? ??????)??? ????????? ?????? ??? ?????? ?????? ?????? ??????(?????? ?????????????????????????????? ??????),<br>
                                ???????????????(?????? ?????????????????? ??????)??? ?????????????????? ????????????(?????? ???????????????????????? ??????), U.S. Securities and Exchange Commission(?????? ???SEC?????? ??????)???<br>
                                THE SECURITIES EXCHANGE ACT OF 1934(?????? ???SEC Rule????????? ??????) ??? ?????? ???????????? ????????? ?????? ???????????? ??? ?????? ????????? ????????? ?????????.<br><br>
                                2. ????????????????????? ?????? ??????????????? ????????? ????????? ????????? ?????? ??? ????????????(??????????????????)??? ?????? ????????? ????????? ?????????.<br><br>
                                3. ??????????????????????????? ?????? ??????????????? ?????? ????????? ?????? ???????????? ????????? ??????????????? ?????? ????????? ????????? ?????? ??????????????? ?????????.<br><br>
                                4. ?????????????????????????????? ?????? ??? ????????? ?????? ??????????????? ??????, ??????, ??????, ??????????????? ??????, ?????? ??? ????????? ????????? ????????? ???????????? ???????????????, ?????????????????? ??? ??????????????? ????????? ????????? ????????????????????? ????????????.<br><br>
                                5. ???????????????????????? ?????? ???????????? ?????? CFO??? ????????? ?????? ????????? ??????????????? ???????????????
                                ????????????<br> ?????? ???????????? ???88??? ???1?????? ?????? ?????????????????? ???????????? ????????? ?????? ?????????.<br><br>
                                6. ??????????????????????????? ?????? ????????? ?????? ??? ?????? ????????? ?????? ????????? ??????????????? ???????????? ????????? ?????????.<br> ??? ?????? ???????????????????????? ???????????? ???88??? ???2??????
                                ?????? ???????????? ????????? ????????????????????? 2??? ????????? ??????????????? ??????.<br><br>
                                7. ??????????????????????????? ?????? ????????????, ????????????, ??????????????????, IR??????, ????????????,<br> ??????????????????, ???????????? ??? ????????? ??????????????? ????????? ????????? ????????? ????????????
                                ????????? ?????????.<br><br>
                                8. ????????????????????? ?????? ????????? ????????????????????? ??? ???????????? ??? ???????????? ????????? ?????? ????????? ??? ???159???, ???160???, ???165???, ??? ???168???, ???170???,<br>
                                ?????????????????? ???4-3???, ???????????? ???21?????? ?????? ????????? ?????? ???????????? ???????????????, ???????????????, ?????????????????? ??????????????? ?????? SEC Rule??? ?????? ?????? SEC???<br>
                                ?????? ?????????(Form 20-F)??? ???????????? ?????? ?????????.<br><br>
                                9. ????????????????????? ?????? ????????????????????? ???????????? ????????? ??????????????? ???????????? ?????? ??????????????? ????????? ?????????<br> ?????? ?????? ?????? ???????????? ?????? ???????????? ???7??????
                                ?????? ???????????? ?????? ?????? ???????????? ?????? ?????????.<br><br>
                                10. ????????????????????? ?????? ????????? ??????????????? ???????????? ????????? ?????? ?????? ????????? ??????????????? ???????????? ?????? ?????? ?????? ??????????????? ?????? ???????????? ?????? ???????????? ???15??? ??? ???16?????? ???????????? ??????????????????????????? ?????? ?????? ????????? ?????????????????? ?????????(?????? ???????????? ?????? ???????????? ?????????) ??? ??? ????????? ???????????? ???????????? ?????? ?????????.
                                11. ????????????????????? ?????? ????????? ????????? ?????? ??? ????????? ???????????? ???????????? ??????????????? ????????? ????????? ???????????? ???12?????? ?????? ?????????????????? ???????????? ???????????? ?????? ?????????.
                                12. ????????????????????? ?????? ????????? ???9?????? ?????????????????? ????????? ????????? ??????????????? ??? ???????????? ??????????????? ????????? ????????? ?????? ??? ????????? ??????????????? ???????????? ????????? ?????? ?????? ?????? ?????? ?????? ????????? ??????????????? ???????????? ?????? ???????????? ???28??? ??? ??????????????? ???8?????? ?????? ???????????? ???????????? ?????? ?????????.
                                13. ??????????????? ??? ???????????????????????? ?????? ??????????????? ????????? ????????????????????? ??????, ??????, ??????????????? ??? ????????? ?????????????????? ??????????????? ??????????????? ?????? ?????? ????????? ??? ???119???, ???121??? ?????? ???123???, ???130???, ???161???, ??? ???120??? ?????? ???122???, ???137???, ???171???, ?????????????????? ???2-4???, ???2-6???, ???2-14???, ???2-17???, ???4-5???, ???5-8??? ?????? ???5-10???, ???5-15?????? ?????? ???????????? ?????? ???????????? ??????????????? ?????? SEC Rule??? ?????? SEC??? ?????? ???????????? ???????????? ?????? ?????????.
                                14. ???Form 6-K?????? ?????? ???????????? ??????????????? ?????? ????????? ????????? SEC??? ???????????? ?????? ?????????.
                                15. ??? ???????????? ???????????? ????????? ???????????? ??? ???????????? ????????? ????????? ????????? ??????????????? ?????? ????????? ???????????? ???????????? ????????? ?????? ?????????.
                                ???4??? (?????? ??? ??????)
                                1. ???????????????
                                1) ?????????????????? ???????????? ?????? CFO??? ????????????.
                                2) ?????????????????? ????????????????????? ?????? ??? ????????? ????????? ????????? ???????????? ?????? ????????? ????????? ????????????.
                                ??? ???????????? ??? ????????????(?????? ????????? ????????????. ?????? ??????)??? ?????? ??????????????????????????? ?????? ??????
                                ??? ???????????? ????????????????????? ????????? ?????? ????????? ??????(?????? ????????????, ????????? ?????? ???)
                                ??? ????????????????????? ?????? ????????? ???????????? ???????????????
                                ??? ?????????????????? ??????????????? ??????????????? ???????????? ?????? ????????? ?????? ???????????? ??? ????????? ??????
                                ??? ????????????????????? ?????? ??? ??????
                                3) ?????????????????? ??? ????????? ???????????? ?????? ????????? ?????? ?????? ????????? ????????? ?????????.
                                ??? ??????????????? ????????? ?????? ?????? ??? ????????? ?????? ???????????? ??? ?????????
                                ??? ???????????? ?????? ???????????? ?????? ??? ???????????? ????????? ?????? ?????? ????????? ???????????? ?????? ?????? ?????????
                                4) ?????????????????? ??? ????????? ???????????? ?????? ????????? ?????? ??????????????? ????????? ??? ?????????, ?????????????????? ????????? ????????? ??? ??????.
                                2. ??????????????????
                                1) ???????????? ?????? CFO??? ??????????????? ?????? ????????? ????????? ?????? ?????? ???????????? ??????????????? ???????????? ????????? ??????????????? ?????? ??? ??? 2?????? ???????????? ???88??? ???2?????? ?????? ?????????????????? ??????????????? ??????.
                                2) ????????????????????? ??????????????? ???????????? ?????????????????? ????????? ????????? ?????? ????????? ????????? ????????????.
                                ??? ?????? ??????????????? ?????? ??? ??????
                                ??? ??????????????? ?????? ??? ????????????
                                ??? ?????? ????????????????????? ?????? ??? ???????????? ??????
                                ??? ???????????? ????????? ????????????????????? ?????? ???????????? ??? ??????????????? ?????? ????????? ????????? ?????? ??? ?????????????????? ?????? ??????
                                ??? ?????? ???????????? ??????????????? ??????????????? ??????, ??????, ??????, ??????
                                ??? ?????? ????????????, CFO ?????? ?????????????????? ??????????????? ???????????? ??????
                                3. ??????????????????
                                1) ??? ??????????????????????????? ?????? ????????? 1??? ???????????? ???????????? ????????????????????? ????????? ?????? ?????? ????????? ??????????????? ??????.
                                ??? ???????????????????????? ?????? ??????????????? ??????????????? ????????? ???????????? ??????
                                ??? ????????? ????????? ????????? ????????? ????????? ??????????????? ??????????????? ?????? ????????? ???????????? ??????
                                ??? ?????? ????????? ????????? ?????? ?????? ??????????????? ??????????????? ????????? ???????????? ??????
                                ??? ?????? ??????????????? ?????? ??????????????????????????? ????????? ?????? ??????
                                2) ??? ??????????????????????????? ????????? ??????????????? ???????????? ?????? ?????? ????????? ????????? ?????? ??? ???????????? ?????? ?????? ????????? ????????? ????????????????????? ???????????? ?????? ?????? ????????? ??????????????? ??????. ??????, ????????? ???????????? ???????????? ????????? ?????? ???????????? ?????? ?????? ????????? ???????????? ???????????? ????????? ?????? ????????? ????????? ????????? ????????? ??? ??????.
                                ???5??? (????????????????????? ??????)
                                1. ????????????
                                1) ????????? ????????????????????? ???????????? ???????????? ?????? ?????????, ????????? ??? SEC??? ??????????????? ??????.
                                2) ??????????????????????????? ????????????????????? ??????????????? ????????? ??????????????? ???????????? ?????? ???????????? ????????????????????? ??????????????? ????????? ?????? ????????????????????? ??????????????? ??????.
                                3) ??????????????????????????? ??? ???????????????????????? ???????????? ?????? ?????? ???????????? ?????????????????? ?????? ?????? ??? ??????????????? ?????? ????????????????????? ???????????? ????????????????????? ??????????????? ??????.
                                4) ??????????????????????????? ?????????????????? ??????????????? ????????? ?????? ?????????????????? ?????? ??????????????? ??????????????? ??????. ??? ?????? ??????????????? ?????? ???????????? ?????? ????????? ????????? ???????????? ?????? ????????? ??????????????? ??????.
                                5) ?????????????????? ???????????????????????????????????? ???????????? ????????????????????? ??????????????? ?????? ???????????? ?????????????????? ????????? ?????? ????????????????????? ?????? ???????????? ????????? ?????????, ????????? ?????? ????????? ???????????? ?????? ?????????????????? ??????????????? ?????? ??????????????? ????????? ?????? ?????????????????????????????? ????????? ??????????????? ????????? ??????.
                                6) ??????????????? ???????????????????????? ???????????? ????????????????????? ????????? ?????? ????????? ?????? ?????? ?????? ??? ??????????????? ?????? ??????????????? ????????? ????????? ????????? ??????.
                                7) ?????????????????? ????????? ????????? ????????????????????? ??????????????????????????? ?????? ??? ?????? ?????? ??????????????? ??????????????? ??????????????? ??????, ??????????????????????????? ???????????? ??????????????? ?????? ?????? ?????? ?????? ?????? ?????? ???????????? ?????? ???????????? ??? ????????? ????????? ???????????? ??????.<br><br>
                                2. ????????????
                                1) ????????? ????????????????????? ???????????? ???????????? ?????? ???????????? ??????????????? ??????.
                                2) ????????????????????? ????????????????????? ??????????????? ????????? ???????????? ????????? ?????? ??????????????? ????????? ?????? ?????? ??????????????? ??????????????? ????????? ???????????? ?????? ?????? ?????? ?????? ????????? ????????????????????? ??????????????? ?????? ???????????????????????????????????? ???1?????? ????????? ?????? ?????? ?????? ??????????????? ?????? ?????? ???????????? ?????? ?????? ?????? ???????????? ??????.
                                3) ????????????????????? ??????????????????????????? ?????????????????? ?????? ?????? ????????? ???????????? ?????? ?????? ?????? ????????? ??????????????? ??????????????? ????????? ?????? ????????? ????????? ?????????, ????????? ?????? ??????????????? ??????. ??????????????????????????? ????????? ?????? ?????? ????????????????????? ????????? ???????????? ??????????????? ????????? ????????? ??? ??????.
                                4) ??????????????????????????? ????????? ???????????? ????????????????????? ???????????? ???????????? ?????? ????????? ?????? ??????????????? ????????????????????? ???????????? ????????????????????? ??????????????? ??????, ?????? ???????????? ????????? ?????? ??????????????? ?????? ??????????????? ?????? ????????? ??????????????? ??????. ??????, ?????????????????? ?????? ??? ?????????????????? ????????? ?????? ????????? ???????????? ??????????????????????????? ????????? ????????? ??? ??????, ??? ?????? ????????? ????????????????????? ?????? ??????????????? ??????.
                                5) ??????????????????????????? ????????????????????? ???????????? ??? ??????????????? ?????? ?????? ???11??????2??? ?????? ???????????????????????? ?????? ????????? ??????????????? ????????? ???????????? ????????? ??????????????? ??????.
                                6) ?????????????????? ???4?????? ??????????????? ???????????? ?????? ??????????????? ?????? ???????????? ?????????????????? ?????? ?????? ???????????? ??????????????? ?????? ??????????????? ??????.
                                7) 1. ??????????????? ???7?????? ????????? ??????????????? ????????? ?????? ????????????.<br><br>
                                3. ????????????
                                1) ????????? ????????????????????? ???????????? ???????????? ?????? ???????????? ??????????????? ??????.
                                2) ???????????????????????????(???????????? ???15??? ???2????????? ????????? ?????? ?????????)??? ????????????????????? ?????? ?????? ??? ?????? ?????? ?????? ????????? ?????? ?????? ??????????????? ????????????????????????????????? (???????????? ???15??? ???3????????? ????????? ?????? ?????????)?????? ?????????????????? ?????? ??????.
                                3) ??????????????? ???????????? ???????????? ??????????????? ????????? ???????????? ????????? ????????? ????????? ?????? ???????????? ????????? ???????????? ???????????? ??? ????????? ???????????????, ???????????????, ?????? ?????? ????????????????????? ????????? ?????? ?????????????????? ??? ????????? ?????? ??????????????? ??????. ?????? ?????????????????? ????????? ?????? ???????????? ??????????????????????????? ???????????? ????????? ???????????? ???????????? ????????? ???????????? ?????? ??????????????? ????????? ????????? ??????????????? ??????????????? ??????.
                                4) 1. ??????????????? ???7???, 2. ??????????????? ???2?????? ????????? ??????????????? ????????? ?????? ????????????.<br><br>
                                4. ????????????
                                1) ????????? ????????????????????? ???????????? ???????????? ?????? ???????????? ??????????????? ??????.
                                2) ??????????????????????????? ?????????????????? ???????????? ????????? ?????? ???????????? ?????? ?????? ?????? ??? ??????????????? ?????? ?????? ???????????? ??????????????? ???????????? ?????????????????? ????????? ?????? ?????? ????????? ???????????? ??????. ?????? ??????????????????????????? ??????????????? ??????????????? ?????? ????????? ?????? ??? ????????????????????? ?????? ???????????? ????????? ????????? ????????? ??? ?????????, ??? ?????? ?????? ????????????????????? ?????? ???????????? ??????.
                                3) ??????????????????????????? ??????????????? ???????????? ?????? ???????????? ???????????? ????????? ???????????? ??????(?????? ???????????? ???????????? ??????)??? ???????????? ?????? ??????????????? ?????? ???????????? ?????? ?????? ????????? ???????????? ?????????????????? ????????? ?????? ????????? ?????????????????? 1??? ????????? ???????????? ??????????????? ??????. ??? ?????? 1??? ????????? ???????????? ????????? ????????? ?????????????????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ??????????????? ??????.
                                4) 1. ??????????????? ???7???, 2. ??????????????? ???6?????? ????????? ??????????????? ????????? ?????? ????????????.<br><br>
                                5. ????????????
                                1) ????????? ????????????????????? ???????????? ????????? ???????????? ?????? ???????????? ????????? ??? ??????.
                                2) ?????????????????? ??????????????? ??????????????? ???????????? ???????????? ?????? ??????????????? ????????? ?????? ?????? ??????????????? ??????????????? ????????? ???????????? ?????? ?????????????????????????????? ????????? ????????? ?????? ??? ??????????????? ????????? ????????? ??? ??????.
                                3) ??????????????????????????? ??????????????? ??????????????? ???????????? ???????????? ?????? ??????????????? ????????? ?????? ?????? ??????????????? ??????????????? ????????? ???????????? ?????? ?????? ????????? ?????? ?????????????????? ????????? ?????? ?????? ?????????????????????????????? ????????? ????????? ???????????? ????????? ????????? ????????? ??? ??????.
                                4) ??????????????????????????? ??????????????? ??????????????? ???????????? ???????????? ?????? ??????????????? ????????? ?????? ?????? ??????????????? ??????????????? ????????? ???????????? ?????? ?????? ????????? ????????? ?????? ???????????????????????????????????? ?????? ???????????? ????????? ????????? ???????????? ????????? ????????? ???????????? ?????? ?????? ?????? ?????? ????????? ????????? ????????? ????????????????????? ??????????????? ??????.
                                5) ??????????????????????????? ???????????????????????????????????? ????????? ??????????????? ?????? ?????? ?????? ??????????????? ?????? ?????? ???????????? ???????????? ?????? ?????? ???????????? ??????.
                                6) 1. ??????????????? ???7???, 2. ??????????????? ???3???, ???4???, ???5???, ???6?????? ????????? ??????????????? ????????? ?????? ????????????.
                        </div>
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