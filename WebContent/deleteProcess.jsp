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
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	try{
		String sql="select id,name from person1110 where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			String rId = rs.getString("id");
			String rName = rs.getString("name");    //폼에서 넘어오는거랑 비교하기 위해 r을 붙인 것
			if(name.equals(rName)){
				sql="delete from person1110 where id=? and name=?";  //위에 String sql있으므로 그냥 sql로!
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, name);
				pstmt.executeUpdate();
				System.out.println("삭제되었습니다.");
			}else{
				System.out.println("이름이 일치하지 않습니다.");
			}
		}else{
			System.out.println("일치하는 사번이 없습니다.");
		}
	}catch(SQLException e){
		System.out.println("없는 데이터입니다.");
	}
%>
</body>
</html>