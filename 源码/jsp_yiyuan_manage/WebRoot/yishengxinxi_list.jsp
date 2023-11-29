<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>医生信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有医生信息列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  医生编号：<input name="yishengbianhao" type="text" id="yishengbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  医生姓名：<input name="yishengxingming" type="text" id="yishengxingming" style='border:solid 1px #000000; color:#666666' size="12" /> 性别：<select name='xingbie' id='xingbie' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>  科室：<%=Info.getselect("keshi","keshixinxi","keshi"," 1=1 ")%>  职称：<input name="zhicheng" type="text" id="zhicheng" style='border:solid 1px #000000; color:#666666' size="12" />  毕业院校：<input name="biyeyuanxiao" type="text" id="biyeyuanxiao" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yishengxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>医生编号</td>
    <td bgcolor='#CCFFFF'>密码</td>
    <td bgcolor='#CCFFFF'>医生姓名</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>照片</td>
    <td bgcolor='#CCFFFF'>科室</td>
    <td bgcolor='#CCFFFF'>职称</td>
    <td bgcolor='#CCFFFF'>毕业院校</td>
    <td bgcolor='#CCFFFF'>医龄</td>
    
    
	<td width="90" align="center" bgcolor="#CCFFFF">评论管理</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yishengxinxi"); 
    String url = "yishengxinxi_list.jsp?1=1"; 
    String sql =  "select * from yishengxinxi where 1=1";
	
if(request.getParameter("yishengbianhao")=="" ||request.getParameter("yishengbianhao")==null ){}else{sql=sql+" and yishengbianhao like '%"+request.getParameter("yishengbianhao")+"%'";}
if(request.getParameter("yishengxingming")=="" ||request.getParameter("yishengxingming")==null ){}else{sql=sql+" and yishengxingming like '%"+request.getParameter("yishengxingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if(request.getParameter("keshi")=="" ||request.getParameter("keshi")==null ){}else{sql=sql+" and keshi like '%"+request.getParameter("keshi")+"%'";}
if(request.getParameter("zhicheng")=="" ||request.getParameter("zhicheng")==null ){}else{sql=sql+" and zhicheng like '%"+request.getParameter("zhicheng")+"%'";}
if(request.getParameter("biyeyuanxiao")=="" ||request.getParameter("biyeyuanxiao")==null ){}else{sql=sql+" and biyeyuanxiao like '%"+request.getParameter("biyeyuanxiao")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yishengbianhao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("yishengxingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td width='90' align='center'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("keshi") %></td>
    <td><%=map.get("zhicheng") %></td>
    <td><%=map.get("biyeyuanxiao") %></td>
    <td><%=map.get("yiling") %></td>
    
    
	<td width="90" align="center"><a href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=yishengxinxi">评论管理</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="yishengxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="yishengxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="yishengxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

