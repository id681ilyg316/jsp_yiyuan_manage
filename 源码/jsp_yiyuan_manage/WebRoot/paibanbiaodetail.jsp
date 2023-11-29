<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>排班表</title>

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
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"paibanbiao");
	
     %>
<%@ include file="qttop.jsp"%>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">排班表</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con">
			
			
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%'>编号：</td><td width='39%'><%=mqt.get("bianhao")%></td>
		 <td width='11%'>医生编号：</td><td width='39%'><%=mqt.get("yishengbianhao")%></td>
		 </tr><tr><td width='11%'>医生姓名：</td><td width='39%'><%=mqt.get("yishengxingming")%></td>
		 <td width='11%'>日期：</td><td width='39%'><%=mqt.get("riqi")%></td>
		 </tr><tr><td width='11%'>星期：</td><td width='39%'><%=mqt.get("xingqi")%></td>
		 <td width='11%'>时段：</td><td width='39%'><%=mqt.get("shiduan")%></td>
		 </tr><tr><td width='11%'>剩余号：</td><td width='39%'><%=mqt.get("shengyuhao")%></td>
		 <td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
<input type=button name=Submit52 value=打印 onClick="javascript:window.print()"  /> <input type="button" name="paibanbiaoyuyueyisheng" value="预约医生" onClick="javascript:location.href='yuyueyishengadd.jsp?id=<%=id%>&bianhao=<%=mqt.get("bianhao")%>';"> <!--jixaaxnnxiu-->
</td></tr>
    
  </table>
						  
			</div>
			</div>	
		</div>
	</div>		
</div>
<%@ include file="qtdown.jsp"%>


</body>
</html>



