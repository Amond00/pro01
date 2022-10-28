<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = request.getParameter("author");
	int parno = Integer.parseInt(request.getParameter("parno"));
	String sec = request.getParameter("sec");
	int cnt = 0;
%>
<%@ include file="connectionPool2.conf" %>
<%
	sql = "insert into qna values (qna_seq.nextval, ?, ?, ?, sysdate, 1, ?, ?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, author);
	pstmt.setInt(4, parno);
	pstmt.setString(5, sec);
	cnt = pstmt.executeUpdate();
	
	if(cnt>=1){
		response.sendRedirect("qna.jsp");
	} else {
		response.sendRedirect("qnaWrite.jsp");
	}
%>
<%@ include file="connectionClose2.conf" %>