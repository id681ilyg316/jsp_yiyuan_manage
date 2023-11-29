<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yishengxinxi.xls");
%>
<html>
  <head>
    <title>医生信息</title>
  </head>

  <body >
  <p>已有医生信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>医生编号</td>    <td bgcolor='#CCFFFF'>密码</td>    <td bgcolor='#CCFFFF'>医生姓名</td>    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>    <td bgcolor='#CCFFFF' width='90' align='center'>照片</td>    <td bgcolor='#CCFFFF'>科室</td>    <td bgcolor='#CCFFFF'>职称</td>    <td bgcolor='#CCFFFF'>毕业院校</td>    <td bgcolor='#CCFFFF'>医龄</td>        
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "yishengxinxi_list.jsp?1=1"; 
    String sql =  "select * from yishengxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yishengbianhao") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("yishengxingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td width='90' align='center'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("keshi") %></td>    <td><%=map.get("zhicheng") %></td>    <td><%=map.get("biyeyuanxiao") %></td>    <td><%=map.get("yiling") %></td>        
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

