<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>预约医生详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yuyueyisheng");
     %>
  预约医生详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>预约号：</td><td width='39%'><%=m.get("yuyuehao")%></td><td width='11%'>编号：</td><td width='39%'><%=m.get("bianhao")%></td></tr><tr><td width='11%'>医生编号：</td><td width='39%'><%=m.get("yishengbianhao")%></td><td width='11%'>医生姓名：</td><td width='39%'><%=m.get("yishengxingming")%></td></tr><tr><td width='11%'>日期：</td><td width='39%'><%=m.get("riqi")%></td><td width='11%'>星期：</td><td width='39%'><%=m.get("xingqi")%></td></tr><tr><td width='11%'>时段：</td><td width='39%'><%=m.get("shiduan")%></td><td width='11%'>预约时间：</td><td width='39%'><%=m.get("yuyueshijian")%></td></tr><tr><td width='11%'>用户名：</td><td width='39%'><%=m.get("yonghuming")%></td><td width='11%'>姓名：</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%'>身份证：</td><td width='39%'><%=m.get("shenfenzheng")%></td><td width='11%'>手机：</td><td width='39%'><%=m.get("shouji")%></td></tr><tr><td width='11%'>状态：</td><td width='39%'><%=m.get("zhuangtai")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


