<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#tab1{
	width:70%;
	height:40%;
}
#in1{
	height:30px;
	width:20%;
}
#in2{
	height:30px;
	width:70%;
	text-align:left;
}
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<h1>인사관리 사원 삭제 화면</h1>
<form name="form" method="post" action="deleteProcess.jsp">
<table border=1 id="tab1">
<tr>
	<th>성명</th>
	<td id="in2"><input id="in2" type="text" name="name"></td>
</tr>
<tr>
	<th>사원번호</th>
	<td id="in2"><input id="in2" type="text" name="id"></td>
</tr>
<tr>
	<td colspan=2>
		<input id="in1" type="submit" value="삭제">
		<input id="in1" type="reset" value="취소">
	</td>
</tr>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>