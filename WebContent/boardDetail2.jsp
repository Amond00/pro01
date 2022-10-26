<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String sid = (String) session.getAttribute("id");
	
	int uno = Integer.parseInt(request.getParameter("no"));
	String utitle = "";
	String ucontent = "";
	String uname = "";
	String uresdate = "";
	String author = "";
	

%>
<%@ include file="connectionPool.conf" %>
<%

sql = "select a.no no, a.title tit, a.content con, b.name nm, to_char(a.resdate, 'yyyy-MM-dd') res from board a inner join member b on a.author=b.id where a.no=1";
pstmt = con.prepareStatement(sql);
rs = pstmt.executeQuery();

if(rs.next()){
	utitle = rs.getString("tit");
	ucontent = rs.getString("con");
	uname = rs.getString("nm");
	uresdate = rs.getString("res");
}
%>
<%@ include file="connectionClose.conf" %>
<!DOCTYPE html>
<html>
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
    .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:580px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:1px solid #fff; color:#fff; background-color:#333; 
    width:120px; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:left;
    padding-left:80px; border-right:2px solid #333; }
    .tb tr:first-child th { border-top:2px solid #333; }
    .tb tr:first-child td { border-top:2px solid #333; }
    .tb tr:last-child th { border-bottom:2px solid #333; }
    .tb tr:last-child td { border-bottom:2px solid #333; }
	.btn_group { clear:both; width:580px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:14px;
	line-height:24px; border-radius:36px; border:2px solid #333; text-align:center; }
	.btn_group .btn.primary { background-color:#333; color:#fff; margin-left:-5px; display:block;}
	.btn_group .btn.primary:hover { background-color:deepskyblue; color:red; }
    
</style>
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
                <span class="sel">글 상세 내용</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">글 상세 내용</h2>
  				<div class="tb_fr">
  					<table class="tb">
  						<tbody>             
							<tr>
								<th>글 번호</th>
								<td><%=uno %></td>
							</tr>
							<tr>
								<th>제목</th>
								<td><%=utitle %></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><%=ucontent %></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><%=uname %></td>
							</tr>
							<tr>
								<th>작성일</th>
								<td><%=uresdate %></td>
							</tr>
						</tbody> 
					</table>
					<div class="btn_group">
						<a href="boardList.jsp" class="btn primary">목록으로 돌아가기</a>
						<%
							if(sid.equals("admin") || id.equals("id")) {
						%>
						<a href='boardModify.jsp?no=<%=uno %>' class="btn primary">수정</a>
						<a href='boardDel.jsp?no=<%=uno %>' class="btn primary">삭제</a>
						<% } %>
					</div>
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