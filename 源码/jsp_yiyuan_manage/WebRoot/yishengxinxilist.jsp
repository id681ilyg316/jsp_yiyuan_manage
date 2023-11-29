<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>医生信息</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="qtimages/css/reset.css" rel="stylesheet" />
<link href="qtimages/css/main.css" rel="stylesheet"/>
<link href="qtimages/css/sub.css" rel="stylesheet"/>
<script src="qtimages/jquery.js"></script> 
<script src="js/jquery.SuperSlide.2.1.1.js"></script>

<script type="text/javascript" src="qtimages/inc.js"></script>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></head>
<body>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
<%

%>

<%@ include file="qttop.jsp"%>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">医生信息</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con">
			
			 <form name="form1" id="form1" action="" style="width:100%">
   搜索:  医生编号：<input name="yishengbianhao" type="text" id="yishengbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  医生姓名：<input name="yishengxingming" type="text" id="yishengxingming" style='border:solid 1px #000000; color:#666666' size="12" /> 性别：<select name='xingbie' id='xingbie' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>  科室：<%=Info.getselect("keshi","keshixinxi","keshi"," 1=1 ")%>  职称：<input name="zhicheng" type="text" id="zhicheng" style='border:solid 1px #000000; color:#666666' size="12" />  毕业院校：<input name="biyeyuanxiao" type="text" id="biyeyuanxiao" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yishengxinxilisttp.jsp';" />
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>医生编号</td>
    <td bgcolor='#CCFFFF'>医生姓名</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>照片</td>
    <td bgcolor='#CCFFFF'>科室</td>
    <td bgcolor='#CCFFFF'>职称</td>
    <td bgcolor='#CCFFFF'>毕业院校</td>
    <td bgcolor='#CCFFFF'>医龄</td>
    
    
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yishengxinxi"); 
    String url = "yishengxinxilist.jsp?2=2"; 
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
    <td><%=map.get("yishengbianhao") %></td><td><%=map.get("yishengxingming") %></td><td align='center'><%=map.get("xingbie") %></td><td width='90'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td><td><%=map.get("keshi") %></td><td><%=map.get("zhicheng") %></td><td><%=map.get("biyeyuanxiao") %></td><td><%=map.get("yiling") %></td>
    
    <td width="30" align="center"> <a href="yishengxinxidetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>

  
${page.info }						
						  
			</div>
			</div>	
		</div>
	</div>		
</div>
<%@ include file="qtdown.jsp"%>


</body>
</html>


