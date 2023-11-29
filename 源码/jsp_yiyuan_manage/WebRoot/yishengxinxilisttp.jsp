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
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yishengxinxilist.jsp';" />
</form>
						<table width="100%" height="12%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                           <% 
  	


  	 new CommDAO().delete(request,"yishengxinxi"); 
    String url = "yishengxinxilisttp.jsp?1=1"; 
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
                            <td align="center"><table width="150" height="153" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="126" align="center"><a href="yishengxinxidetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("zhaopian")%>" width="109" height="126" border="0" /></a></td>
                                </tr>
                                <tr>
                                  <td height="26" align="center"><%=map.get("yishengxingming")%></td>
                                </tr>
                            </table></td>
                            <%
								if (i==4)
								{
									i=0;
									out.print("</tr><tr>");
								}
				  	}
					
				  %>
                          </tr>
                        </table>
						
${page.info }
						  
			</div>
			</div>	
		</div>
	</div>		
</div>
<%@ include file="qtdown.jsp"%>


</body>
</html>


