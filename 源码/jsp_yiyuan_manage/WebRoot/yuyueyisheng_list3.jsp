<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>预约医生</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有预约医生列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  预约号：<input name="yuyuehao" type="text" id="yuyuehao" style='border:solid 1px #000000; color:#666666' size="12" />  编号：<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  医生编号：<input name="yishengbianhao" type="text" id="yishengbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  医生姓名：<input name="yishengxingming" type="text" id="yishengxingming" style='border:solid 1px #000000; color:#666666' size="12" />  日期：<input name="riqi" type="text" id="riqi" style='border:solid 1px #000000; color:#666666' size="12" />  星期：<input name="xingqi" type="text" id="xingqi" style='border:solid 1px #000000; color:#666666' size="12" />  用户名：<input name="yonghuming" type="text" id="yonghuming" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  身份证：<input name="shenfenzheng" type="text" id="shenfenzheng" style='border:solid 1px #000000; color:#666666' size="12" />  手机：<input name="shouji" type="text" id="shouji" style='border:solid 1px #000000; color:#666666' size="12" /> 状态：<select name='zhuangtai' id='zhuangtai' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="已预约">已预约</option><option value="已取号">已取号</option><option value="未就诊">未就诊</option></select>
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="74" bgcolor='#CCFFFF'>预约号</td>
    <td width="52" bgcolor='#CCFFFF'>编号</td>
    <td width="96" bgcolor='#CCFFFF'>医生编号</td>
    <td width="96" bgcolor='#CCFFFF'>医生姓名</td>
    <td width="52" bgcolor='#CCFFFF'>日期</td>
    <td width="52" bgcolor='#CCFFFF'>星期</td>
    <td width="52" bgcolor='#CCFFFF'>时段</td>
    <td width="74" bgcolor='#CCFFFF'>用户名</td>
    <td width="52" bgcolor='#CCFFFF'>姓名</td>
    <td width="74" bgcolor='#CCFFFF'>身份证</td>
    <td width="52" bgcolor='#CCFFFF'>手机</td>
    <td width="59" bgcolor='#CCFFFF'>状态</td>
    
    <td width="130" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="68" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"yuyueyisheng"); 
    String url = "yuyueyisheng_list3.jsp?1=1"; 
    String sql =  "select * from yuyueyisheng where yishengbianhao='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("yuyuehao")=="" ||request.getParameter("yuyuehao")==null ){}else{sql=sql+" and yuyuehao like '%"+request.getParameter("yuyuehao")+"%'";}
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}
if(request.getParameter("yishengbianhao")=="" ||request.getParameter("yishengbianhao")==null ){}else{sql=sql+" and yishengbianhao like '%"+request.getParameter("yishengbianhao")+"%'";}
if(request.getParameter("yishengxingming")=="" ||request.getParameter("yishengxingming")==null ){}else{sql=sql+" and yishengxingming like '%"+request.getParameter("yishengxingming")+"%'";}
if(request.getParameter("riqi")=="" ||request.getParameter("riqi")==null ){}else{sql=sql+" and riqi like '%"+request.getParameter("riqi")+"%'";}
if(request.getParameter("xingqi")=="" ||request.getParameter("xingqi")==null ){}else{sql=sql+" and xingqi like '%"+request.getParameter("xingqi")+"%'";}
if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng")+"%'";}
if(request.getParameter("shouji")=="" ||request.getParameter("shouji")==null ){}else{sql=sql+" and shouji like '%"+request.getParameter("shouji")+"%'";}
if(request.getParameter("zhuangtai")=="" ||request.getParameter("zhuangtai")==null ){}else{sql=sql+" and zhuangtai like '%"+request.getParameter("zhuangtai")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuyuehao") %></td>
 <td><%=map.get("bianhao") %></td>
 <td><%=map.get("yishengbianhao") %></td>
 <td><%=map.get("yishengxingming") %></td>
 <td><%=map.get("riqi") %></td>
 <td><%=map.get("xingqi") %></td>
 <td><%=map.get("shiduan") %></td>
 <td><%=map.get("yonghuming") %></td>
 <td><%=map.get("xingming") %></td>
 <td><%=map.get("shenfenzheng") %></td>
 <td><%=map.get("shouji") %></td>
 <td><%=map.get("zhuangtai") %></td>
 
    <td width="130" align="center"><%=map.get("addtime") %></td>
    <td width="68" align="center">  <a href="yuyueyisheng_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

