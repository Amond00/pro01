<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int cnt = 0;
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = request.getParameter("author");
%>
<%@ include file="connectionPool2.conf" %>
<%
	sql = "insert into board values (bno_seq.nextval, ?, ?, ?, sysdate)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, author);
	cnt = pstmt.executeUpdate();
	
	if(cnt>=1){
		response.sendRedirect("boardList.jsp");
	} else {
		response.sendRedirect("boardWrite2.jsp");
	}
%>
<%@ include file="connectionClose2.conf" %>
	
