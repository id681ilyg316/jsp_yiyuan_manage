<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>预约医生</title>
	
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

new CommDAO().update(request,response,"yuyueyisheng",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yuyueyisheng"); 

%>
  <form  action="yuyueyisheng_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改预约医生:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>预约号：</td><td><input name='yuyuehao' type='text' id='yuyuehao' value='<%= mmm.get("yuyuehao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>医生编号：</td><td><input name='yishengbianhao' type='text' id='yishengbianhao' value='<%= mmm.get("yishengbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='<%= mmm.get("yishengxingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>日期：</td><td><input name='riqi' type='text' id='riqi' value='<%= mmm.get("riqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>星期：</td><td><input name='xingqi' type='text' id='xingqi' value='<%= mmm.get("xingqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>时段：</td><td><input name='shiduan' type='text' id='shiduan' value='<%= mmm.get("shiduan")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>预约时间：</td><td><input name='yuyueshijian' type='text' id='yuyueshijian' value='<%= mmm.get("yuyueshijian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='<%= mmm.get("shenfenzheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>手机：</td><td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>状态：</td><td><select name='zhuangtai' id='zhuangtai'><option value="已预约">已预约</option><option value="已取号">已取号</option><option value="未就诊">未就诊</option></select></td></tr><script language="javascript">document.form1.zhuangtai.value='<%=mmm.get("zhuangtai")%>';</script>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


