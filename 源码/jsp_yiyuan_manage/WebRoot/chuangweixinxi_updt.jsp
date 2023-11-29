<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>病床信息</title>
	
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

new CommDAO().update(request,response,"chuangweixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"chuangweixinxi"); 

%>
  <form  action="chuangweixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改病床信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>名称：</td><td><input name='mingcheng' type='text' id='mingcheng' value='<%= mmm.get("mingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr>
       <td>科室：</td>
       <td><%=Info.getselect("keshi","keshixinxi","keshi")%></td>
     </tr>
     <tr><td>房号：</td><td><input name='fanghao' type='text' id='fanghao' value='<%= mmm.get("fanghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>床号：</td><td><input name='chuanghao' type='text' id='mingcheng4' value='<%= mmm.get("chuanghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>状态：</td><td><select name='zhuangtai' id='zhuangtai'><option value="未住">未住</option><option value="已住">已住</option></select></td></tr><script language="javascript">document.form1.zhuangtai.value='<%=mmm.get("zhuangtai")%>';</script>
     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


