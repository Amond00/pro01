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
            <img src="./lg_display_picture/product_main.png" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>ESG</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="technologyhtml#page1">기술</option>
                    <option value="company.jsp#page1">기업정보</option>
                    <option value="invest.jsp#page1">투자정보</option>
                </select> &gt; 
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>환경</option>
                    <option value="esg.jsp#page2">사회</option>
                    <option value="esg.jsp#page3">지배구조</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">ESG - 환경</h2>
                <ul class="esg">
                    <li>
                        <h3 class="esg_tit rose">기후 변화 대응 전략</h3>
                        <p class="esg_com">
                            LG디스플레이는 기후변화를 중대한 리스크인 동시에 기업 경쟁력 향상을 위한 전략적 기회로 인식하고 있습니다.<br> 
                            기후변화가 주는 문제의 심각성을 인지하고 글로벌 제조기업으로서 경영 활동 전반에서<br> 
                            기후변화 영향을 최소화 하기 위해 온실가스 감축 목표 설정, 조직체계 구축, 설비 투자 등 다양한 노력을 기울이고 있습니다.<br>
                            LG디스플레이는 앞으로도 한국 정부의 탄소중립 계획에 기여하기 위해 2050년까지 탄소 배출 저감을 위해 꾸준히 노력하겠습니다.
                        </p>
                        <div class="esg_img"><img src="./lg_display_picture/esg_env1.png" alt="" width="1000px"></div>

                    </li>
                    <li>
                        <h3 class="esg_tit rose">기후변화 리스크 대응</h3>
                        <p class="esg_com">
                            LG디스플레이는 내∙외부 리스크 요인을 감지하고 신속하게 대응하여 선제적으로 리스크를 관리하고 있습니다.<br>
                            불확실성, 기회 손실, 인명 피해, 업무 중단 등 사업 환경과 관련된 리스크를 전사적으로 분석하고, 발생 가능성 및<br>
                            영향도에 따라 핵심 리스크를 선정함과 동시에 예방 및 관리 체계를 구축합니다.
                        </p>
                        <div class="esg_img"><img src="./lg_display_picture/esg_env2.png" alt="" width="1000px"></div>
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
                    <option>ESG</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="technologyhtml#page1">기술</option>
                    <option value="company.jsp#page1">기업정보</option>
                    <option value="invest.jsp#page1">투자정보</option>
                </select> &gt; 
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>사회</option>
                    <option value="esg.jsp#page1">환경</option>
                    <option value="esg.jsp#page3">지배구조</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">ESG - 사회</h2>
                <ul class="esg">
                    <li>
                        <h3 class="esg_tit rose">인권경영</h3>
                        <p class="esg_com">
                            LG Display는 인간존중의 경영이념을 바탕으로 구성원은 물론 고객과 협력사, 지역사회를 아우르는 모든 이해관계자의 존엄과 가치를 존중하는 인권경영을 펼칠 것을 선언합니다.
                            LG Display는 글로벌 기업시민으로서 인권경영을 실천하기 위해 UN 세계인권선언, UN 글로벌 콤팩트, UN 기업과 인권 이행 지침, OECD 다국적기업 가이드라인, ILO 선언 등 인권, 노동, 환경, 반부패 등과 관련한 각종 국제기준과 각 국가의 노동관계 법규를 지지하고 준수하겠습니다.
                            또한, 기업의 경영활동 과정에서 직·간접적으로 일어날 수 있는 모든 인권침해 행위를 방지하고자 차별 금지, 강제노동 금지, 아동노동 금지, 노동기본권 보장, 성희롱 및 직장내 괴롭힘 금지, 임금 및 복리후생, 근로시간 준수, 개인정보 보호, 안전 및 보건, 협력사 인권경영 관리 등 10개 영역에 걸쳐 인권경영 정책을 수립하고 이를 실현하기 위한 인권침해 예방 및 구제 프로세스를 구축하였습니다.
                            이를 기반으로 사업운영 전반에서 어떠한 인권 침해 사례도 발생하지 않도록 최선을 다하겠습니다.
                            LG Display는 인권경영 정책이 국내외 사업장을 비롯해 고객과 협력사 등 모든 이해관계자들에게도 지켜질 수 있도록 노력하며 사회적으로 인권경영이 더욱 강화되고 확산되는 데 앞장서겠습니다.
                        </p>
                    </li>
                    <li>
                        <h3 class="esg_tit rose">인권경영 정책</h3>
                        <p class="esg_com">
                            차별 금지
                            고용관계 전반에 있어 차별을 금지하며, 다양성 · 포용성을 존중하고 확대합니다.<br>
                            임금 및 복리후생에 대한 법정 기준을 준수하며, 공정하고 합리적인 보상제도를 운영합니다.
                        </p>
                    </li>
                </ul>
            </div>
            <div class="page_wrap">
                <div class="page_aside">
                    <h2 class="aside_tit">인권경영 정책</h2>
                </div>
                <div class="year_fr">
                    <ul class="year_lst">
                        <li>
                            <h3 class="year_tit">차별 금지</h3>
                            <p class="yesr_com">고용관계 전반에 있어 차별을 금지하며, 다양성 · 포용성을 존중하고 확대합니다.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">성희롱 및 직장내 괴롭힘 금지</h3>
                            <p class="yesr_com">성희롱 및 괴롭힘 행위를 금지하며, 피해자 보호를 위한 제도를 마련하고 예방을 위해 최선을 다합니다.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">임금 및 복리후생</h3>
                            <p class="yesr_com">임금 및 복리후생에 대한 법정 기준을 준수하며, 공정하고 합리적인 보상제도를 운영합니다.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">근로시간 준수</h3>
                            <p class="yesr_com">법에서 정하고 있는 근로시간, 휴게시간, 휴일 규정을 준수합니다.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">강제노동 금지</h3>
                            <p class="yesr_com">어떠한 형태의 강제노동도 금지하며, 공정하고 투명한 근로계약을 체결합니다.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">아동노동 금지</h3>
                            <p class="yesr_com">법정 고용 연령을 준수하며, 연소근로자 고용 시에는 관련 법률과 규정을 준수합니다.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">노동기본권 보장</h3>
                            <p class="yesr_com">근로자의 기본권인 결사 및 단체교섭의 자유를 보장합니다.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">개인정보 보호</h3>
                            <p class="yesr_com">개인정보 관리 기준을 수립하여 운영하고, 개인정보 관련 법규를 준수합니다.</p>
                        </li>
                        <li>
                            <h3 class="year_tit">안전 및 보건</h3>
                            <p class="yesr_com">재해 예방을 위한 안전·보건 관리 체계를 구축하고, 안전·보건 관련 법률을 준수합니다.</p>
                        </li>
                        <li class="last">
                            <h3 class="year_tit">협력사 인권경영 권리</h3>
                            <p class="yesr_com">협력사의 인권경영체계 구축 및 인권침해 예방활동 지원에 최선을 다합니다.</p>
                        </li>
                    </ul>
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
                    <option>ESG</option>
                    <option value="product.jsp#page1">제품</option>
                    <option value="technologyhtml#page1">기술</option>
                    <option value="company.jsp#page1">기업정보</option>
                    <option value="invest.jsp#page1">투자정보</option>
                </select> &gt; 
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>지배구조</option>
                    <option value="esg.jsp#page1">환경</option>
                    <option value="esg.jsp#page2">사회</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">ESG - 지배구조</h2>
                <ul class="esg">
                    <li>
                        <h3 class="esg_tit">구성</h3>
                        <p class="esg_com">
                            LG디스플레이 이사회는 관련 법령 및 정관에 따라 회사의 주요 경영사항에 관한 의사결정 및 통제의 권한을 보유하고 있습니다. 사내이사 2명, 기타비상무이사 1명,
                            사외이사 4명으로 구성된 총 7명의 이사진이 경영 의사결정과 경영감독 기능을 수행하고 있습니다.
                            대표이사를 포함한 회사의 경영진은 이사회에 분기별 1회 이상 경영실적, 전망, 추진과제 등 주요 경영 사안을 보고하고 있으며, 이사회 의결이 필요한 주요 사항 발생 시
                            수시로 이사회를 개최하고 있습니다. 당사는 이사 및 위원 전원이 이사회 및 위원회에 참석하는 방향으로 운영하고 있으며, 2021년 이사회 참석률은 사내이사 100%,
                            사외이사 100%입니다.
                        </p>
                        <div class="esg_img"><img src="./lg_display_picture/esg_owner1.png" alt=""></div>
                    </li>
                    <li>
                        <h3 class="esg_tit">이사회 다양성 및 전문성</h3>
                        <p class="esg_com">
                            LG디스플레이는 기업가치 제고, 지속가능한 성장, 주주권익 보호 등을 위해 다양성과 전문성을 고려하여 이사회를 구성하기 위해 노력하고 있습니다. 당사는 이사 선임
                            과정에서 성별, 인종, 국적, 정치, 문화적 배경 등에 대한 제한을 두고 있지 않으며, 산업기술, 재무ᆞ회계, 법률, 경영자문 등 다양한 전문성을 지닌 사외이사를 선임하여
                            기업경영의 전반적인 사항에 대한 전문성을 확보하고 있습니다.
                            LG디스플레이는 사외이사의 전문성과 경영활동에 대한 책임을 강화하기 위해 주요 사업 현황, 투자 방향, 산업 기술 및 당사 제품 생산 공정, 개정 법률에 따른 이사의 역할
                            변화, 투자자 피드백 등에 대한 사외이사 워크숍을 매년 실시하고 있습니다. 또한, 사외이사가 국내외 사업장을 방문하여 디스플레이 산업, 기술 및 공정과 사업에 대한
                            이해도를 높일 수 있도록 지원하고 있습니다. 마지막으로 당사의 이사회는 이사회 규정 제12조에 따라 필요할 경우 이사회 결의를 통해 외부 전문인력을 지원받을 수 있습니다.
                        </p>
                        <div class="esg_img"><img src="./lg_display_picture/esg_owner2.png" alt=""></div>
                    </li>
                    <li>
                        <h3 class="esg_tit">이사회 독립성 및 효과성</h3>
                        <p class="esg_com">
                            LG디스플레이는 사외이사 독립성 요건에 따라 독립성이 확보된 사외이사를 이사회 구성원의 과반수(57%)로 구성하여 경영진의 직무 집행에 대한 감독 기능이 원활하게 수행될 수
                            있도록 하고 있습니다. 당사는 관계 법령과 정관에 따라 설치된 사외이사후보추천위원회를 통해 독립성, 전문성, 다양성 등을 종합적으로 심사하여 사외이사 후보를 검증하고 적합한
                            후보를 추천합니다. LG디스플레이는 사외이사의 효과적인 직무수행을 위해 상법 및 기타 관련 법령에 따라 마련된 사외이사 결격사유 점검 기준에서 허용하는 범위, 즉 당사와
                            경쟁관계에 있지 않은 경우에 한하여 당사 외에 1개 회사의 사외이사에 한해서 겸직을 허용하고 <br>있습니다.
                        </p>
                    </li>
                    <li>
                        <h3 class="esg_tit">이사회 다양성 및 전문성</h3>
                        <p class="esg_com">
                            LG디스플레이는 기업가치 제고, 지속가능한 성장, 주주권익 보호 등을 위해 다양성과 전문성을 고려하여 이사회를 구성하기 위해 노력하고 있습니다. 당사는 이사 선임 과정에서
                            성별, 인종, 국적, 정치, 문화적 배경 등에 대한 제한을 두고 있지 않으며, 산업기술, 재무ᆞ회계, 법률, 경영자문 등 다양한 전문성을 지닌 사외이사를 선임하여 기업경영의 전반적인
                            사항에 대한 전문성을 확보하고 있습니다.LG디스플레이는 사외이사의 전문성과 경영활동에 대한 책임을 강화하기 위해 주요 사업 현황, 투자 방향, 산업 기술 및 당사 제품 생산 공정, 
                            개정 법률에 따른 이사의 역할 변화, 투자자 피드백 등에 대한 사외이사 워크숍을 매년 실시하고 있습니다. 또한, 사외이사가 국내외 사업장을 방문하여 디스플레이 산업, 기술 및 공정과 
                            사업에 대한 이해도를 높일 수 있도록 지원하고 있습니다. 마지막으로 당사의 이사회는 이사회 규정 제12조에 따라 필요할 경우 이사회 결의를 통해 외부 전문인력을 지원받을 수 있습니다.
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