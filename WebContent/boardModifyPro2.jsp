<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	int cnt = 0;
%>
<%@ include file="connectionPool2.conf" %>
<%
		sql = "update board set title=?, content=? where no=?";
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setInt(3, no);
		
		cnt = pstmt.executeUpdate();
		
		if(cnt>0){
			response.sendRedirect("boardList.jsp");
		} else {
			response.sendRedirect("boardDetail.jsp?no="+no);
		}
%>
<%@ include file="connectionClose2.conf" %>