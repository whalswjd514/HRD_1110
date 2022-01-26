<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBConn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String dept=request.getParameter("dept");
	String position=request.getParameter("position");
	String duty=request.getParameter("duty");
	String phone=request.getParameter("phone");
	
	System.out.println("id : "+id);
	System.out.println("name : "+name);
	System.out.println("dept : "+dept);
	System.out.println("position : "+position);
	System.out.println("duty : "+duty);
	System.out.println("phone : "+phone);  //console창에 띄우기 위함
	
	PreparedStatement pstmt=null;
	try{
		String sql="insert into person1110 values(?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, dept);
		pstmt.setString(4, position);
		pstmt.setString(5, duty);
		pstmt.setString(6, phone);
		pstmt.executeUpdate();
		System.out.println("저장 성공");
	}catch(SQLException e){
		System.out.println("테이블에 저장 실패");
	}
%>
</body>
</html>