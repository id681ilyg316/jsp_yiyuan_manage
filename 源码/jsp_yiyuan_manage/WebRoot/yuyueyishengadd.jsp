<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>预约医生</title>

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
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id="";
  
  
   int yuyuehao=0;	
   					
    for(HashMap map2:new CommDAO().select("select * from yuyueyisheng where bianhao='"+request.getParameter("bianhao")+"'  ")){
	yuyuehao++;
	
  }
  

 

  String sql4="select * from paibanbiao  where shengyuhao=0 and  bianhao='"+request.getParameter("bianhao")+"' ";
CommDAO dao2 = new CommDAO();
  List<HashMap> userlist2 = dao2.select(sql4);

  if(userlist2.size()>=1)
{
	out.print("<script>alert('对不起,该医生该时段已无号 请预约其他时段!');location.href='index.jsp';</script>");
	return;
}


String sql3="select * from yuyueyisheng  where yonghuming='"+request.getSession().getAttribute("username")+"' and bianhao='"+request.getParameter("bianhao")+"'";

CommDAO dao4 = new CommDAO();
  List<HashMap> userlist5 = dao4.select(sql3);

  if(userlist5.size()>=1)
{
	out.print("<script>alert('对不起,您已预约该时段 无法再次预约!');location.href='index.jsp';</script>");
	return;
}








 
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"paibanbiao");
 String bianhao="";
  	String yishengbianhao="";
  	String yishengxingming="";
  	String riqi="";
  	String xingqi="";
  	String shiduan="";
  	
 bianhao=(String)mlbdq.get("bianhao");
  	yishengbianhao=(String)mlbdq.get("yishengbianhao");
  	yishengxingming=(String)mlbdq.get("yishengxingming");
  	riqi=(String)mlbdq.get("riqi");
  	xingqi=(String)mlbdq.get("xingqi");
  	shiduan=(String)mlbdq.get("shiduan");
  	 
 

 HashMap mssdq = new CommDAO().getmaps("yonghuming",(String)request.getSession().getAttribute("username"),"yonghuzhuce");
 String xingming="";
  	String shenfenzheng="";
  	String shouji="";
  	
 xingming=(String)mssdq.get("xingming");
  	shenfenzheng=(String)mssdq.get("shenfenzheng");
  	shouji=(String)mssdq.get("dianhua");
  	

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	
}
function gow()
{
	document.location.href="yuyueyishengadd.jsp?id=<%=id%>";
}
</script>


<%@ include file="qttop.jsp"%>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">预约医生</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con">
			
			
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



 String sql="update paibanbiao set shengyuhao= shengyuhao-1 where  bianhao='"+request.getParameter("bianhao")+"'";


new CommDAO().commOper(sql); 




new CommDAO().insert(request,response,"yuyueyisheng",ext,true,false,"index.jsp"); 

 }
%>
   <form  action="yuyueyishengadd.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">预约号：</td><td><input name='yuyuehao' type='text' id='yuyuehao' value='<%=(yuyuehao+1)%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.bianhao.value='<%=bianhao%>';document.form1.bianhao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">医生编号：</td><td><input name='yishengbianhao' type='text' id='yishengbianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.yishengbianhao.value='<%=yishengbianhao%>';document.form1.yishengbianhao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.yishengxingming.value='<%=yishengxingming%>';document.form1.yishengxingming.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">日期：</td><td><input name='riqi' type='text' id='riqi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.riqi.value='<%=riqi%>';document.form1.riqi.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">星期：</td><td><input name='xingqi' type='text' id='xingqi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingqi.value='<%=xingqi%>';document.form1.xingqi.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">时段：</td><td><input name='shiduan' type='text' id='shiduan' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shiduan.value='<%=shiduan%>';document.form1.shiduan.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.shenfenzheng.value='<%=shenfenzheng%>';document.form1.shenfenzheng.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">手机：</td><td><input name='shouji' type='text' id='shouji' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.shouji.value='<%=shouji%>';document.form1.shouji.setAttribute("readOnly",'true');</script>
		<tr style='display:none'><td>状态：</td><td><select name='zhuangtai' id='zhuangtai'><option value="已预约">已预约</option></select></td></tr>
		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>
						  
			</div>
			</div>	
		</div>
	</div>		
</div>
<%@ include file="qtdown.jsp"%>


</body>
</html>


