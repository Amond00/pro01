<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>

<%
	String name = (String) session.getAttribute("name");
	String id = (String) session.getAttribute("id");
	String pw = (String) session.getAttribute("pw");
	String email = (String) session.getAttribute("email");
	
	String msg = (String) application.getAttribute("msg");
	
%>
<div class="hd_wrap">
            <a href="index.jsp" class="logo"><img src="./lg_display_picture/lg_logo2.png" alt=""></a>
            <nav class="tnb">
	            <%
	            	if(id!=null && id.equals("admin")){
	            %>
		            <div>
		            	<span class="ip_print"><%=name %>님</span>
						<a href="memList.jsp">회원관리</a>
						<a href="boardList.jsp">게시판관리</a>
						<a href="logout.jsp">로그아웃</a>
						<a href="sitemap.jsp"><img src="./lg_display_picture/sitemap.png" width="25" alt=""></a>
					</div>
		        <%
	            	} else if(name!=null) {
		        %>
					<div>
		            	<span class="ip_print"><%=name %>님</span>
		            	<a href="logout.jsp">로그아웃</a>
		                <a href="memInfo.jsp">회원정보</a>
		                <a href="sitemap.jsp"><img src="./lg_display_picture/sitemap.png" width="25" alt=""></a>
		            </div>
		 		<%
	            	} else {
		 		%>
		 			<div>
		                <a href="login.jsp">로그인</a>
		                <a href="term.jsp">회원가입</a>
		                <a href="sitemap.jsp"><img src="./lg_display_picture/sitemap.png" width="25" alt=""></a>
	            	</div>
	           	<%
	            	}
	           	%>
            </nav>
            <nav class="gnb">
                <ul>
                    <li class="item1">
                        <a href="product.jsp#page1" class="dp1">제품</a>
                        <ul class="sub">
                            <li><a href="product.jsp#page1">TV</a></li>
                            <li><a href="product.jsp#page2">IT</a></li>
                            <li><a href="product.jsp#page3">Mobile</a></li>
                        </ul>
                    </li>
                    <li class="item2">
                        <a href="technology.jsp#page1" class="dp1">기술</a>
                        <ul class="sub">
                            <li><a href="technology.jsp#page1">OLED</a></li>
                            <li><a href="technology.jsp#page2">LCD</a></li>
                        </ul>
                    </li>
                    <li class="item3">
                        <a href="esg.jsp#page1" class="dp1">ESG</a>
                        <ul class="sub">
                            <li><a href="esg.jsp#page1">환경</a></li>
                            <li><a href="esg.jsp#page2">사회</a></li>
                            <li><a href="esg.jsp#page3">지배구조</a></li>
                        </ul>
                    </li>
                    <li class="item4">
                        <a href="company.jsp#page1" class="dp1">기업정보</a>
                        <ul class="sub">
                            <li><a href="company.jsp#page1">기업개요</a></li>
                            <li><a href="company.jsp#page2">연혁</a></li>
                            <li><a href="company.jsp#page3">사업장 위치</a></li>
                        </ul>
                    </li>
                    <li class="item5">
                        <a href="invest.jsp#page1" class="dp1">투자정보</a>
                        <ul class="sub">
                            <li><a href="invest.jsp#page1">재무정보</a></li>
                            <li><a href="invest.jsp#page2">주주총회</a></li>
                            <li><a href="invest.jsp#page3">공시정보</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
</div>