<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>医生信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yishengxinxi");
     %>
  医生信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>医生编号：</td><td width='39%'><%=m.get("yishengbianhao")%></td><td  rowspan=8 align=center><a href=<%=m.get("zhaopian")%> target=_blank><img src=<%=m.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>密码：</td><td width='39%'><%=m.get("mima")%></td></tr><tr><td width='11%' height=44>医生姓名：</td><td width='39%'><%=m.get("yishengxingming")%></td></tr><tr><td width='11%' height=44>性别：</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr><td width='11%' height=44>科室：</td><td width='39%'><%=m.get("keshi")%></td></tr><tr><td width='11%' height=44>职称：</td><td width='39%'><%=m.get("zhicheng")%></td></tr><tr><td width='11%' height=44>毕业院校：</td><td width='39%'><%=m.get("biyeyuanxiao")%></td></tr><tr><td width='11%' height=44>医龄：</td><td width='39%'><%=m.get("yiling")%></td></tr><tr><td width='11%' height=100  >医生简介：</td><td width='39%' colspan=2 height=100 ><%=m.get("yishengjianjie")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


