<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>取号就诊</title>
  </head>
  <body>
 <%
 
  String sql="update yuyueyisheng set zhuangtai='已取号'  where yuyuehao='"+request.getParameter("yuyuehao")+"'";
new CommDAO().commOper(sql); 
 
 
 
out.print("<script>alert('取号成功!!');location.href='"+request.getHeader("Referer")+"';</script>");

%>
  </body>
</html>


