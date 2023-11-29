<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>医生信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="yishengxinxi_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){







new CommDAO().insert(request,response,"yishengxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="yishengxinxi_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加医生信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">医生编号：</td><td><input name='yishengbianhao' type='text' id='yishengbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelyishengbianhao' /></td></tr>
		<tr><td  width="200">密码：</td><td><input name='mima' type='text' id='mima' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelyishengxingming' /></td></tr>
		<tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr>
		<tr><td  width="200">照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td>科室：</td><td><%=Info.getselect("keshi","keshixinxi","keshi")%></td></tr>
		<tr><td  width="200">职称：</td><td><input name='zhicheng' type='text' id='zhicheng' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">毕业院校：</td><td><input name='biyeyuanxiao' type='text' id='biyeyuanxiao' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">医龄：</td><td><input name='yiling' type='text' id='yiling' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">医生简介：</td><td><textarea name='yishengjianjie' cols='50' rows='5' id='yishengjianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var yishengbianhaoobj = document.getElementById("yishengbianhao"); if(yishengbianhaoobj.value==""){document.getElementById("clabelyishengbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入医生编号</font>";return false;}else{document.getElementById("clabelyishengbianhao").innerHTML="  "; } 
	var yishengbianhaoobj = document.getElementById("yishengbianhao");  
if(yishengbianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yishengxinxi&col=yishengbianhao&value="+yishengbianhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyishengbianhao").innerHTML="&nbsp;&nbsp;<font color=red>医生编号已存在</font>";  
return false;
}else{document.getElementById("clabelyishengbianhao").innerHTML="  ";  
}  
} 
	var yishengxingmingobj = document.getElementById("yishengxingming"); if(yishengxingmingobj.value==""){document.getElementById("clabelyishengxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入医生姓名</font>";return false;}else{document.getElementById("clabelyishengxingming").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


