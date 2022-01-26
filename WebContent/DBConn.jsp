<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn=null;
  	try {
    	String url= "jdbc:oracle:thin:@//localhost:1521/xe";
    	String user= "system";
    	String pass= "1234";
   		String dri="oracle.jdbc.OracleDriver";
    	Class.forName(dri);
    	conn=DriverManager.getConnection(url,user,pass);
    System.out.println("오라클 db 연결 완료");
   }catch (Exception e){
    out.println("SQLException:"+e.getMessage());
   }    
    
%>
