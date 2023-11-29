<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yuyueyisheng.xls");
%>
<html>
  <head>
    <title>预约医生</title>
  </head>

  <body >
  <p>已有预约医生列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>预约号</td>    <td bgcolor='#CCFFFF'>编号</td>    <td bgcolor='#CCFFFF'>医生编号</td>    <td bgcolor='#CCFFFF'>医生姓名</td>    <td bgcolor='#CCFFFF'>日期</td>    <td bgcolor='#CCFFFF'>星期</td>    <td bgcolor='#CCFFFF'>时段</td>    <td bgcolor='#CCFFFF'>预约时间</td>    <td bgcolor='#CCFFFF'>用户名</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF'>身份证</td>    <td bgcolor='#CCFFFF'>手机</td>    <td bgcolor='#CCFFFF'>状态</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "yuyueyisheng_list.jsp?1=1"; 
    String sql =  "select * from yuyueyisheng where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuyuehao") %></td>    <td><%=map.get("bianhao") %></td>    <td><%=map.get("yishengbianhao") %></td>    <td><%=map.get("yishengxingming") %></td>    <td><%=map.get("riqi") %></td>    <td><%=map.get("xingqi") %></td>    <td><%=map.get("shiduan") %></td>    <td><%=map.get("yuyueshijian") %></td>    <td><%=map.get("yonghuming") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("zhuangtai") %></td>    
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

