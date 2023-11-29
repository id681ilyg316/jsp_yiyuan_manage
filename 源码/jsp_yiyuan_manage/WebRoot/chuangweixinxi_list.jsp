<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>病床信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有病床信息列表：</p>
  <form name="form1" id="form1" action="">
   搜索:名称：
     <input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
    科室：<%=Info.getselect("keshi","keshixinxi","keshi"," 1=1 ")%>
  状态：
   <select name='zhuangtai' id='zhuangtai' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="未住">未住</option><option value="已住">已住</option></select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
  </form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>名称</td>
    <td bgcolor='#CCFFFF'>科室</td>
    <td bgcolor='#CCFFFF'>房号</td>
    <td bgcolor='#CCFFFF'>床号</td>
    <td bgcolor='#CCFFFF'>状态</td>
    <td bgcolor='#CCFFFF'>备注</td>
    
    
	<td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"chuangweixinxi"); 
    String url = "chuangweixinxi_list.jsp?1=1"; 
    String sql =  "select * from chuangweixinxi where 1=1";
	if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+request.getParameter("mingcheng")+"%'";}

if(request.getParameter("zhuangtai")=="" ||request.getParameter("zhuangtai")==null ){}else{sql=sql+" and zhuangtai like '%"+request.getParameter("zhuangtai")+"%'";}
if(request.getParameter("keshi")=="" ||request.getParameter("keshi")==null ){}else{sql=sql+" and keshi like '%"+request.getParameter("keshi")+"%'";}

    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("mingcheng") %></td>
    <td><%=map.get("keshi") %></td>
    <td><%=map.get("fanghao") %></td>
    <td><%=map.get("chuanghao") %></td>
    <td><%=map.get("zhuangtai") %></td>
    <td><%=map.get("beizhu") %></td>
    
	<td width="60" align="center"><a href="chuangweixinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="chuangweixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="chuangweixinxidetail.jsp?id=<%=map.get("id")%>" target="_blank"></a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

