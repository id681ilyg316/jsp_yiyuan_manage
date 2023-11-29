<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>用户登录</title>
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

<%@ include file="qttop.jsp"%>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">用户登陆</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con">
			
			<%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
                          <form action="yiyuan_manage?ac=login&amp;a=a" name="f11" id="f11" style="display: inline">
                            <table width="100%" height="52%" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="93" height="50">&nbsp;</td>
                                <td width="99" height="28">用户名:</td>
                                <td height="28" colspan="2"><input name="username" type="text" id="username"  placeholder="请输入用户名" style="width:160px; height:40px; border:solid 1px #000000; color:#666666;" /></td>
                              </tr>
                              <tr>
                                <td height="50">&nbsp;</td>
                                <td height="28">密码:</td>
                                <td height="28" colspan="2"><input name="pwd1" type="password" id="pwd1"  placeholder="请输入密码" style="width:160px; height:40px; border:solid 1px #000000; color:#666666" /></td>
                              </tr>
                              <tr>
                                <td height="50">&nbsp;</td>
                                <td height="28">权限:</td>
                                <td height="28" colspan="2"><select name="cx" id="cx" style="width:160px; height:40px; border:solid 1px #000000; color:#666666"  >
                                    <option value="用户注册">用户注册</option>
                                </select></td>
                              </tr>
                              <tr >
                                <td height="50">&nbsp;</td>
                                <td height="28">验证码</td>
                                <td width="80" height="28"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" /></td>
                                <td width="868"><a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /></a></td>
                              </tr>
                              <script type="text/javascript">
          
           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("请输入完整");
		return false;
	}
}
           
                                  </script>
                              <tr>
                                <td height="50" align="center">&nbsp;</td>
                                <td height="38" colspan="3" align="left"><input type="submit" name="Submit" value="登陆" class="hsgbutton" onClick="return checklog();" />
                                <input type="reset" name="Submit2" value="重置" class="hsgbutton" /></td>
                              </tr>
                            </table>
                          </form>
                          <%}else{ %>
                          <table width="90%" height="82%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="31%" height="30">用户名</td>
                              <td width="69%" height="30"><%=request.getSession().getAttribute("username")%> </td>
                            </tr>
                            <tr>
                              <td height="30">权限</td>
                              <td height="30"><%=request.getSession().getAttribute("cx")%> </td>
                            </tr>
                            <tr>
                              <td height="30" colspan="2" align="center"><input type="button" name="Submit3" value="退出" onClick="javascript:location.href='logout.jsp';" />
                                  <input type="button" name="Submit32" value="个人后台" onClick="javascript:location.href='main.jsp';" />
                              </td>
                            </tr>
                          </table>
                        <%} %>
						
			</div>
			</div>	
		</div>
	</div>		
</div>
<%@ include file="qtdown.jsp"%>


</body>
</html>

