<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
  <head>
    
    <title>医院管理系统</title>
<LINK href="images/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style></head>
 <BODY leftMargin=5 topMargin=5 rightMargin=5>
<table width="100%" height="165" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF" style="border-collapse:collapse">  
  <TBODY>
    <TR 
  align=middle bgColor=#ffffff>
      <td colspan="4" bgColor=#CADCEA><strong>系统基本信息</strong></td>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD width="14%" height="50" align="left" valign="bottom" >当前用户：</TD>
      <TD width="37%"  align="left" valign="bottom" ><font class="t4"><%=request.getSession().getAttribute("username")%></font></TD>
      <TD width="9%"  align="left" valign="bottom" >您的权限：</TD>
      <TD width="40%"  align="left" valign="bottom" ><font class="t4"><%=request.getSession().getAttribute("cx")%></font></TD>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD height="38" align="left" valign="bottom"  >当前日期：</TD>
      <TD  align="left" valign="bottom" ><%java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);%></TD>
      <TD align="left" valign="bottom" >&nbsp;</TD>
      <TD  align="left" valign="bottom" >&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
<p>&nbsp;</p>
<p>&nbsp;</p>
<P align=right>&nbsp;</P>
</BODY>
</html>


