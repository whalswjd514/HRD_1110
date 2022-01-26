<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<%@ include file="DBConn.jsp" %>
<%
	String send_id=request.getParameter("send_id");
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	String id="",name="",dept="",position="",duty="",phone="";
	try{
		String sql="select * from person1110 where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, send_id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			id=rs.getString("id");
			name=rs.getString("name");
			position=rs.getString("position");
			duty=rs.getString("duty");
			dept=rs.getString("dept");
			phone=rs.getString("phone");
		}
	}catch(SQLException e){
		System.out.println("없는 데이터입니다.");
	}
%>
<h1>인사관리 사원 변경 화면</h1>
<form name="form" method="post" action="updateProcess.jsp">
<table border=1>
<tr><th width="30%">사원번호</th>
	<td><input type="text" name="id" value="<%=send_id %>"></td>
</tr>
<tr><th width="30%">성명</th>
	<td><input type="text" name="name" value="<%=name %>"></td>
</tr>
<tr><th width="30%">소속부서</th>
	<td><select name="dept">
		<option value="인사부" <%if(dept.equals("인사부")){%>selected<%} %>>인사부</option>
		<option value="기획부" <%if(dept.equals("기획부")){%>selected<%} %>>기획부</option>
		<option value="영업부" <%if(dept.equals("영업부")){%>selected<%} %>>영업부</option>
		<option value="홍보부" <%if(dept.equals("홍보부")){%>selected<%} %>>홍보부</option>
		<option value="경리부" <%if(dept.equals("경리부")){%>selected<%} %>>경리부</option>
	</select>
	</td>
</tr>
<tr><th width="30%">직급</th>
	<td><select name="position">
		<option value="1" <%if(position.equals("1")){%>selected<%}%>>1급</option>
		<option value="2" <%if(position.equals("2")){%>selected<%}%>>2급</option>
		<option value="3" <%if(position.equals("3")){%>selected<%}%>>3급</option>
		<option value="4" <%if(position.equals("4")){%>selected<%}%>>4급</option>
	</select>
	</td>
</tr>
<tr><th width="30%">직책</th>
	<td><input type="text" name="duty" value="<%=duty %>"></td>
</tr>
<tr><th width="30%">연락처</th>
	<td><input type="text" name="phone" value="<%=phone %>"></td>
</tr>
<tr><td colspan=2 align=center>
	<input type="submit" value="변경">
	<input type="reset" value="취소">
	</td>
</tr>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>

</body>
</body>
</html>