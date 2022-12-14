<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String sid = (String) session.getAttribute("id");
	int cnt = 0; 
%>
<%@ include file="connectionPool.conf" %>
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
    .tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
    color:#fff; background-color:#333; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
	.tb tr th:first-child { width:80px; text-align:center; }
	.tb tr th:nth-child(2) { width:600px; text-align:center; }
	.tb tr th:nth-child(3) { width:160px; text-align:center; }
	.tb tr th:last-child { text-align:center; width:150px; }
	
	.btn_group { clear:both; width:580px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:14px;
	line-height:24px; border-radius:36px; border:2px solid #333; text-align:center; }
	.btn_group .btn.primary { background-color:#333; color:#fff; margin-left:-320px; display:block;}
	.btn_group .btn.primary2 { background-color:#333; color:#fff; margin-left:-180px; display:block;}
	.btn_group .btn.primary:hover { background-color:deepskyblue; color:red;}
	.btn_group .btn.primary2:hover { background-color:deepskyblue; color:red;}
    </style>
    <script>
	    $(document).ready( function () {
	        $('.tb').DataTable();
	    } );
    </script>
</head>
<body>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
    </header>
<div class="content">
        <figure class="vs">
            <img src="./lg_display_picture/product_main.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">?????? ???????????? ??????</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">LG DISPLAY - ?????? ???????????? ??????</h2> 
  				<div class="tb_fr" >
  					<table class="tb">
  						<thead>
  							<tr>
  								<th>??????</th>
  								<th>??????</th>
  								<th>?????????</th>
  								<th>?????????</th>
  							</tr>
  						</thead>
  						<tbody>             
<%		
		
		//????????? ??????
		sql = "select * from faq order by parno asc, gubun asc";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			cnt++;
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
			<tr>
					<td><%=cnt %></td>
					<td>
					<% if(rs.getInt("gubun")==0) { %>
						<a href='faqDetail.jsp?no=<%=rs.getInt("no") %>'style="font-weight:bolder; color:blue; "><%="?????? ???????????? ?????? : "+rs.getString("title")%></a>
					<% } else { %>
						<a href='faqDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:82px; color:red; "><%="??? ????????? ?????? ?????? : " + rs.getString("title")%></a>
					<% } %>
					</td>
					<td><%=rs.getString("author") %></td>
					<td><%=date %></td>
			</tr>
<%
		}
%>
<%@ include file="connectionClose.conf" %>
						</tbody> 
					</table>
					<div class="btn_group">
					<%
					if(sid.equals("admin")) {
					%>
						<a href="faqWrite.jsp" class="btn primary">?????????</a> <% } %>
						<a href="boardList.jsp" class="btn primary2">??????????????? ????????????</a>
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