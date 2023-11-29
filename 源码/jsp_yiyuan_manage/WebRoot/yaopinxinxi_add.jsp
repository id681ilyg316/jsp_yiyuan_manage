<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>药品信息</title>
	
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
	document.location.href="yaopinxinxi_add.jsp?id=<%=id%>";
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







new CommDAO().insert(request,response,"yaopinxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="yaopinxinxi_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加药品信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">药品编号：</td><td><input name='yaopinbianhao' type='text' id='yaopinbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelyaopinbianhao' /></td></tr>
		<tr><td  width="200">药品名称：</td><td><input name='yaopinmingcheng' type='text' id='yaopinmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelyaopinmingcheng' /></td></tr>
		<tr><td>类别：</td><td><%=Info.getselect("leibie","yaopinleibie","leibie")%></td></tr>
		<tr><td width="200">生产日期：</td><td><input name='shengchanriqi' type='text' id='shengchanriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">有效期：</td><td><input name='youxiaoqi' type='text' id='youxiaoqi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">主要成分：</td><td><input name='zhuyaochengfen' type='text' id='zhuyaochengfen' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">规格：</td><td><input name='guige' type='text' id='guige' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">单位：</td><td><input name='danwei' type='text' id='danwei' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr>
		  <td>图片：</td>
		  <td><input name='tupian' type='text' id='tupian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />
		    &nbsp;
		    <input type='button' value='上传' onClick="up('tupian')" style='border:solid 1px #000000; color:#666666'/></td>
     </tr>
		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='' style='border:solid 1px #000000; color:#666666' /><label id='clabeljiage' />&nbsp;必需数字型</td></tr>
		<tr><td  width="200">库存：</td><td><input name='kucun' type='text' id='kucun' value='0' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelkucun' />必需数字型</td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
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
 
	var yaopinbianhaoobj = document.getElementById("yaopinbianhao"); if(yaopinbianhaoobj.value==""){document.getElementById("clabelyaopinbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入药品编号</font>";return false;}else{document.getElementById("clabelyaopinbianhao").innerHTML="  "; } 
	var yaopinmingchengobj = document.getElementById("yaopinmingcheng"); if(yaopinmingchengobj.value==""){document.getElementById("clabelyaopinmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入药品名称</font>";return false;}else{document.getElementById("clabelyaopinmingcheng").innerHTML="  "; } 
	var kucunobj = document.getElementById("kucun"); if(kucunobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(kucunobj.value)){document.getElementById("clabelkucun").innerHTML=""; }else{document.getElementById("clabelkucun").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


