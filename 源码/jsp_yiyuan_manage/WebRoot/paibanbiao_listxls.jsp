<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=paibanbiao.xls");
%>
<html>
  <head>
    <title>排班表</title>
  </head>

  <body >
  <p>已有排班表列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td>    <td bgcolor='#CCFFFF'>医生编号</td>    <td bgcolor='#CCFFFF'>医生姓名</td>    <td bgcolor='#CCFFFF' width='65' align='center'>日期</td>    <td bgcolor='#CCFFFF'>星期</td>    <td bgcolor='#CCFFFF'>时段</td>    <td bgcolor='#CCFFFF'>剩余号</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "paibanbiao_list.jsp?1=1"; 
    String sql =  "select * from paibanbiao where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("yishengbianhao") %></td>    <td><%=map.get("yishengxingming") %></td>    <td><%=map.get("riqi") %></td>    <td><%=map.get("xingqi") %></td>    <td><%=map.get("shiduan") %></td>    <td><%=map.get("shengyuhao") %></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

