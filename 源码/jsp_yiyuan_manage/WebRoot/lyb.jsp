<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>医院管理系统</title>
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
  <% 
  
  if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}

HashMap ext = new HashMap(); 
//ext.put("tglparentid",tglparentid); 
ext.put("huifuneirong",""); 
new CommDAO().insert(request,response,"liuyanban",ext,true,false,"lyblist.jsp"); 
%>
<%@ include file="qttop.jsp"%>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">在线留言</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con">
			
			<form  action="lyb.jsp?f=f"  name="f1"  onsubmit="return checkform();">
						<table width="98%" height="350" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#6FA9C1" style="border-collapse:collapse">
						 
                            <tr>
                              <td width="12%">昵称：</td>
                              <td width="88%"><input name='cheng' type='text' id='cheng' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /> <label id='clabelcheng' />
                                *</td>
                            </tr>
                            <tr>
                              <td>内容：</td>
                              <td><textarea name="neirong" cols="50" rows="10" id="neirong" onblur='checkform()'></textarea>
                                * <label id='clabelneirong' /> </td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td><input type="submit" name="Submit42" value="提交" onClick="return checklyb();"/>
                                  <input type="reset" name="Submit22" value="重置" /></td>
                            </tr>
              </table>
			  </form>
						  
			</div>
			</div>	
		</div>
	</div>		
</div>
<%@ include file="qtdown.jsp"%>


</body>
</html>


<script language=javascript >  
 
 function checkform(){  
var chengobj = document.getElementById("cheng");  
if(chengobj.value==""){  
document.getElementById("clabelcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入昵称</font>";  
return false;  
}else{
document.getElementById("clabelcheng").innerHTML="  ";  
}  
  
var neirongobj = document.getElementById("neirong");  
if(neirongobj.value==""){  
document.getElementById("clabelneirong").innerHTML="&nbsp;&nbsp;<font color=red>请输入留言内容</font>";  
return false;  
}else{
document.getElementById("clabelneirong").innerHTML="  ";  
}  


return true;   
}   
</script>  
