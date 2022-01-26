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

<h1>인사관리 사원 등록 화면</h1>
<form name="form" method="post" action="insertProcess.jsp">
<table border=1>
<tr><th width="30%">사원번호</th>
	<td><input type="text" name="id"></td>
</tr>
<tr><th width="30%">성명</th>
	<td><input type="text" name="name"></td>
</tr>
<tr><th width="30%">소속부서</th>
	<td><select name="dept">
		<option value="인사부" selected>인사부</option>
		<option value="기획부">기획부</option>
		<option value="영업부">영업부</option>
		<option value="경리부">경리부</option>
	</select>
	</td>
</tr>
<tr><th width="30%">직급</th>
	<td><select name="position">
		<option value="1" selected>1급</option>
		<option value="2">2급</option>
		<option value="3">3급</option>
		<option value="4">4급</option>
	</select>
	</td>
</tr>
<tr><th width="30%">직책</th>
	<td><input type="text" name="duty"></td>
</tr>
<tr><th width="30%">연락처</th>
	<td><input type="text" name="phone"></td>
</tr>
<tr><td colspan=2 align=center>
	<input type="submit" value="등록">
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