<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>排班表</title>
	
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

new CommDAO().update(request,response,"paibanbiao",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"paibanbiao"); 

%>
  <form  action="paibanbiao_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改排班表:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>医生编号：</td><td><input name='yishengbianhao' type='text' id='yishengbianhao' value='<%= mmm.get("yishengbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='<%= mmm.get("yishengxingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>日期：</td><td><input name='riqi' type='text' id='riqi' value='<%= mmm.get("riqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>
     <tr><td>星期：</td><td><input name='xingqi' type='text' id='xingqi' value='<%= mmm.get("xingqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>时段：</td><td><select name='shiduan' id='shiduan'><option value="上午">上午</option><option value="下午">下午</option></select></td></tr><script language="javascript">document.form1.shiduan.value='<%=mmm.get("shiduan")%>';</script>
     <tr><td>剩余号：</td><td><input name='shengyuhao' type='text' id='shengyuhao' value='<%= mmm.get("shengyuhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


