<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
<head>
<title>医院管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	
	background-repeat: repeat-x;
	background-color: #0092E5;
}

.STYLE7 {color: #000000; font-size:9pt;}
.STYLE8 {color: #0092E5}
-->
</style>
</head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;

function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.pagerandom.value=="")
	{
		alert('请输入完整');
		return false;
	}
}

           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 

           
           </script>   
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1441" height="743" border="0" align="center" cellpadding="0" cellspacing="0" background="images/login.jpg" id="__01">
  <tr>
    <td height="366" colspan="3" ><table width="95%" height="304" border="0" cellpadding="0" cellspacing="0">
      
      <tr>
        <td height="304" valign="bottom"><div style="font-family:宋体; color:#ffffff; WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 26px; margin-top:5pt">
      <div align="center" class="STYLE8" >医院管理系统</div>
    </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="314" rowspan="2">&nbsp;</td>
    <td width="352" height="176">
	
	<form action="yiyuan_manage?ac=adminlogin&a=a" name="form1" style="display: inline"><table width="205" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="44" height="30"><span class="STYLE7">用户:</span></td>
        <td height="30" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
      </tr>
      <tr>
        <td height="30"><span class="STYLE7">密码:</span></td>
        <td height="30" colspan="2"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
      </tr>
      <tr>
        <td height="30"><span class="STYLE7">权限:</span></td>
        <td height="30" colspan="2"><select name="cx" id="cx">
            <option value="管理员">管理员</option>
			<option value="医生信息">医生登陆</option>
		<!--quxanxiaxndexnglxu-->
          </select>
        </td>
      </tr>
      <tr>
        <td height="30"><span class="STYLE7">验证码:</span></td>
        <td width="59" height="30"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" />
        <td width="102"><a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"> </a></td>
      </tr>
      <tr>
        <td height="30" colspan="3"><input type="submit" name="Submit" value="登陆" onClick="return check();" >
            <input type="reset" name="Submit2" value="重置" ></td>
      </tr>
    </table>
	</form>
	
	</td>
    <td width="336" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>


