<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>药品信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yaopinxinxi");
     %>
  药品信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>药品编号：</td><td width='39%'><%=m.get("yaopinbianhao")%></td>
<td width='11%'>药品名称：</td><td width='39%'><%=m.get("yaopinmingcheng")%></td></tr><tr>
<td width='11%'>类别：</td><td width='39%'><%=m.get("leibie")%></td>
<td width='11%'>供应商：</td><td width='39%'><%=m.get("gongyingshang")%></td></tr><tr>
<td width='11%'>生产日期：</td><td width='39%'><%=m.get("shengchanriqi")%></td>
<td width='11%'>有效期：</td><td width='39%'><%=m.get("youxiaoqi")%></td></tr><tr>
<td width='11%'>主要成分：</td><td width='39%'><%=m.get("zhuyaochengfen")%></td>
<td width='11%'>规格：</td><td width='39%'><%=m.get("guige")%></td></tr><tr>
<td width='11%'>单位：</td><td width='39%'><%=m.get("danwei")%></td>
<td width='11%'>价格：</td><td width='39%'><%=m.get("jiage")%></td></tr><tr>
  <td>库存：</td>
  <td><%=m.get("kucun")%></td>
<td width='11%'>&nbsp;</td>
<td width='39%'>&nbsp;</td>
</tr><tr>
<td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td>
<td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
  </table>

  </body>
</html>


