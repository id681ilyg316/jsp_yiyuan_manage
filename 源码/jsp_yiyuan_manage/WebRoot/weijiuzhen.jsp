<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>未就诊</title>
  </head>
  <body>
 <%
 
  String sql="update yuyueyisheng set zhuangtai='未就诊'  where yuyuehao='"+request.getParameter("yuyuehao")+"'";
new CommDAO().commOper(sql); 
 
 
 
out.print("<script>alert('操作成功!!');location.href='"+request.getHeader("Referer")+"';</script>");

%>
  </body>
</html>


