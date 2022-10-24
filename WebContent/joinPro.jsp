<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	
	Connection con = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	int cnt = 0;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "insert into member values (?, ?, ?, ?, ?, sysdate)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, email);
		pstmt.setString(5, tel);
		//select된 데이터가 없으면, rs=null이 됨
		cnt = pstmt.executeUpdate();
		//int cnt = pstmt.executeUpdate();
		
		if(cnt>=1){
			application.setAttribute("msg", "회원 가입 성공");
			response.sendRedirect("login.jsp");
		} else {
			application.setAttribute("msg", "기입한 정보에 틀린 부분이 있습니다.");
			response.sendRedirect("join.jsp");
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		pstmt.close();
		con.close();
	}
%>