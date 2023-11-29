<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>医生信息</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"yishengxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yishengxinxi"); 

%>
  <form  action="yishengxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改医生信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>医生编号：</td><td><input name='yishengbianhao' type='text' id='yishengbianhao' value='<%= mmm.get("yishengbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='<%= mmm.get("yishengxingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>
     <tr><td>照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= mmm.get("zhaopian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>科室：</td><td><%=Info.getselect("keshi","keshixinxi","keshi")%></td></tr><script language="javascript">document.form1.keshi.value='<%=mmm.get("keshi")%>';</script>
     <tr><td>职称：</td><td><input name='zhicheng' type='text' id='zhicheng' value='<%= mmm.get("zhicheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>毕业院校：</td><td><input name='biyeyuanxiao' type='text' id='biyeyuanxiao' value='<%= mmm.get("biyeyuanxiao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>医龄：</td><td><input name='yiling' type='text' id='yiling' value='<%= mmm.get("yiling")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>医生简介：</td><td><textarea name='yishengjianjie' cols='50' rows='5' id='yishengjianjie' style='border:solid 1px #000000; color:#666666'><%=mmm.get("yishengjianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


