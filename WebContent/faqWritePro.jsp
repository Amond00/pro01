<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	String title = request.getParameter("title");
	String title2 = request.getParameter("title2");
	String content = request.getParameter("content");
	String content2 = request.getParameter("content2");
	
	int cnt1 = 0;
	int cnt2 = 0;
	int parno = 0;
	int prevno = 0;
%>
<%@ include file="connectionPool.conf" %>
<%
	sql = "insert into faq values(faq_seq.nextval, ?, ?, 'admin', sysdate, 0, faq_seq.currval)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);

	cnt1 = pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
	con = null; 
	pstmt = null;
	
	con = DriverManager.getConnection(url, dbid, dbpw);	
	sql = "select no from(select * from faq order by rownum desc) where rownum=1";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
	if(rs.next()){
			prevno = rs.getInt("no");
			System.out.println(prevno);
	}
	con.close();
	
	con = null; 
	pstmt = null;
	
	con = DriverManager.getConnection(url, dbid, dbpw);		
	sql = "insert into faq values(faq_seq.nextval, ?, ?, 'admin', sysdate, 1, ?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title2);
	pstmt.setString(2, content2);
	pstmt.setInt(3, prevno);
	cnt2 = pstmt.executeUpdate();
	
	if(cnt1>=1 && cnt2>=1){
		response.sendRedirect("faq.jsp");
	} else {
		response.sendRedirect("faqWrite.jsp");
	}
%>
<%@ include file="connectionClose2.conf" %>