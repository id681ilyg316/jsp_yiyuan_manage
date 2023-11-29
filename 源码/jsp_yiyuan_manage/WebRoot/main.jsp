<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='login.jsp';</script>");
	return;
}
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>医院管理系统</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/productlist.js"></script>
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/plugins/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body class="withvernav">
<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo"><span>医院管理系统</span></h1>
            <span class="slogan"></span>
            
            <!--<div class="search">
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="Enter keyword(s)" />
                    <button class="submitbutton"></button>
                </form>
            </div>-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<div class="notification">
			<font color="white">当前用户：<%=request.getSession().getAttribute("username")%>&nbsp;&nbsp;权限：<%=request.getSession().getAttribute("cx")%> </font>
                
        	</div>
            <div class="userinfo">
            	<img src="images/thumbs/avatar.png" alt="" />
                <span>更换皮肤</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">            	<div class="avatar">
                	<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
                    <div class="changetheme">
                    	Change theme: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                       
                    </div>
                </div><!--avatar-->
<div class="userdata">
                	<h4>更换肤色</h4>
                    <span class="email">请选择左侧彩色小方按钮</span>
                   
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li><a href="sy.jsp" target="main"><span class="icon icon-flatscreen"></span>显示桌面</a></li>
         <li><a href="logout.jsp" onClick="return confirm('确定要退出?');"><span class="icon icon-message"></span>退出登陆</a></li>
             <!--  <li><a href="reports.html"><span class="icon icon-chart"></span>Reports</a></li>-->
        </ul>
        
        <div class="headerwidget">
        	<div class="earnings">
            
                	<h4>当前时间</h4>
                    <h2>
					
					<script>
function tick() {
var ye,mo,da
var hours, minutes, seconds, xfile;
var intHours, intMinutes, intSeconds;
var today;
today = new Date();
ye = today.getFullYear();
mo = today.getMonth()+1;
if (mo < 10) {
mo = "0"+mo;
}
da = today.getDate();
if (da < 10) {
da = "0"+da;
}
intHours = today.getHours();
intMinutes = today.getMinutes();
intSeconds = today.getSeconds();
if (intHours == 0) {
hours = "12:";
xfile = "PM";//午夜
} else if (intHours < 12) {
hours = intHours+":";
xfile = "AM";//上午
} else if (intHours == 12) {
hours = "12:";
xfile = "PM";//正午

} else {
intHours = intHours - 12
hours = intHours + ":";
xfile = "PM";//下午
}
if (intHours < 10) {
hours = "0"+intHours+":";
}
if (intMinutes < 10) {
minutes = "0"+intMinutes+":";
} else {
minutes = intMinutes+":";
}
if (intSeconds < 10) {
seconds = "0"+intSeconds+" ";
} else {
seconds = intSeconds+" ";
}
var color, size, face, out;
	var text = "black";
	var font_size = 1;
    var font_face = "Arial";
	color = (text)? text : "black";
	size = (font_size)? font_size : 1;
	face = (font_face)? font_face : "Arial";
timeString = "<font style='font-size:14px;'>";
timeString += ye+"-"+mo+"-"+da+"  ";
timeString += hours+minutes+seconds+" "+xfile+"&nbsp;&nbsp;&nbsp;";

Clock.innerHTML = timeString;
window.setTimeout("tick();", 100);
}
window.onload = tick;
</script>
<font id="Clock"
      
      align=center>
	  
	  </font></h2>
              
                
            </div><!--earnings-->
        </div><!--headerwidget-->
        
    </div><!--header-->
    
    <%
	
	if (request.getSession().getAttribute("cx").equals("超级管理员") || request.getSession().getAttribute("cx").equals("普通管理员"))
	{
		%>
		<%@ include file="left.jsp"%>
		<%
	}
	if(request.getSession().getAttribute("cx").equals("用户注册")  )
	{
		%>
		<%@ include file="left2.jsp"%>
		<%
	}
	
	if(request.getSession().getAttribute("cx").equals("医生信息")  )
	{
		%>
		<%@ include file="left3.jsp"%>
		<%
	}
	
	%><!--leftmenu-->
        
    <div class="centercontent">
    <iframe name="main"  src="sy.jsp" runat="server" id="contents"  style="height:100%; vertical-align: middle; text-align: center;" width="100%" marginheight="5" marginwidth="5"></iframe>
                
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>

