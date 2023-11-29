<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>排班表</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"yishengxinxi");
 String yishengbianhao="";  	String yishengxingming="";  	
 yishengbianhao=(String)mlbdq.get("yishengbianhao");  	yishengxingming=(String)mlbdq.get("yishengxingming");  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="paibanbiao_add.jsp?id=<%=id%>";
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







new CommDAO().insert(request,response,"paibanbiao",ext,true,false,""); 

}

%>

  <body >
 <form  action="paibanbiao_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加排班表:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">医生编号：</td><td><input name='yishengbianhao' type='text' id='yishengbianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.yishengbianhao.value='<%=yishengbianhao%>';document.form1.yishengbianhao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.yishengxingming.value='<%=yishengxingming%>';document.form1.yishengxingming.setAttribute("readOnly",'true');</script>		<tr><td width="200">日期：</td><td><input name='riqi' type='text' id='riqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td  width="200">星期：</td><td><input name='xingqi' type='text' id='xingqi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td>时段：</td><td><select name='shiduan' id='shiduan'><option value="上午">上午</option><option value="下午">下午</option></select></td></tr>		<tr><td  width="200">剩余号：</td><td><input name='shengyuhao' type='text' id='shengyuhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelshengyuhao' />必需数字型</td></tr>		
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
 
	var shengyuhaoobj = document.getElementById("shengyuhao"); if(shengyuhaoobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(shengyuhaoobj.value)){document.getElementById("clabelshengyuhao").innerHTML=""; }else{document.getElementById("clabelshengyuhao").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


