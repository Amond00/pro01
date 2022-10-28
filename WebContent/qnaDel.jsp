<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	int parno = Integer.parseInt(request.getParameter("parno"));
	int cnt = 0;
	
%>
<%@ include file="connectionPool2.conf" %>
<%
		sql = "delete from qna where parno=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, parno);
		cnt = pstmt.executeUpdate();
		
		if(cnt>0){
			response.sendRedirect("qna.jsp");
		} else {
			response.sendRedirect("qnaDetail.jsp?parno="+parno);
		}
%>
<%@ include file="connectionClose2.conf" %>