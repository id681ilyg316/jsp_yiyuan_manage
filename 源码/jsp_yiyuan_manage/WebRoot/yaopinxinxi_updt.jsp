<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>药品信息</title>
	
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

new CommDAO().update(request,response,"yaopinxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yaopinxinxi"); 

%>
  <form  action="yaopinxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改药品信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>药品编号：</td><td><input name='yaopinbianhao' type='text' id='yaopinbianhao' value='<%= mmm.get("yaopinbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>药品名称：</td><td><input name='yaopinmingcheng' type='text' id='yaopinmingcheng' value='<%= mmm.get("yaopinmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>类别：</td><td><%=Info.getselect("leibie","yaopinleibie","leibie")%></td></tr><script language="javascript">document.form1.leibie.value='<%=mmm.get("leibie")%>';</script><script language="javascript">document.form1.gongyingshang.value='<%=mmm.get("gongyingshang")%>';</script>
     <tr><td>生产日期：</td><td><input name='shengchanriqi' type='text' id='shengchanriqi' value='<%= mmm.get("shengchanriqi")%>' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>
     <tr><td>有效期：</td><td><input name='youxiaoqi' type='text' id='youxiaoqi' value='<%= mmm.get("youxiaoqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>主要成分：</td><td><input name='zhuyaochengfen' type='text' id='zhuyaochengfen' size='50' value='<%=mmm.get("zhuyaochengfen")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>规格：</td><td><input name='guige' type='text' id='guige' value='<%= mmm.get("guige")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>单位：</td><td><input name='danwei' type='text' id='danwei' value='<%= mmm.get("danwei")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr>
       <td>图片：</td>
       <td><input name='tupian' type='text' id='tupian' size='50' value='<%= mmm.get("tupian")%>' style='border:solid 1px #000000; color:#666666' />
         &nbsp;
         <input type='button' value='上传' onClick="up('tupian')" style='border:solid 1px #000000; color:#666666'/></td>
     </tr>
     <tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>库存：</td><td><input name='kucun' type='text' id='kucun' value='<%= mmm.get("kucun")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
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


