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
	
	PreparedStatement pstmt=null;
	
	try{
		String sql="update person1110 set name=?,dept=?,position=?,duty=?,phone=? where id=?"; //기본키라서 id는 바꿀 수 없음
		pstmt=conn.prepareStatement(sql);   //위에 sql 여기에 sql 변수라서 어떤 것이 와도 상관없지만, 두개 일치시켜야함
		pstmt.setString(1, name);           //위에 ? 순서대로 입력
		pstmt.setString(2, dept);
		pstmt.setString(3, position);
		pstmt.setString(4, duty);
		pstmt.setString(5, phone);
		pstmt.setString(6, id);
		pstmt.executeUpdate();
		System.out.println("저장완료");
	}catch(SQLException e){
		System.out.println("테이블 수정 실패");
	}
%>
</body>
</html>