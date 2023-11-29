<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<div class="header">
	<div class="wrap">
		<div class="head_top">
			<div class="logo fl"><a href="#"><img src="qtimages/logo.gif" width="79" height="78"/></a></div>
			<div style="position:absolute; top:30px; margin-left:130px;">
				<div style="font-family:宋体; color:#cccc; WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    <div align="left">医院管理系统</div>
                </div>
			</div>
			<div style="float:right"> 
			<%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
               <a href="userlog.jsp">用户登陆</a> | <a href="userreg.jsp">用户注册</a>
				    <%}else{ %>
				当前用户:<%=request.getSession().getAttribute("username")%>,权限:<%=request.getSession().getAttribute("cx")%>; <a href="logout.jsp">退出</a>|<a href="main.jsp">个人后台</a>
				 <%} %>
				  
			
			
			</div>
			<div class="phone fr"></div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="nav_bar">
		<div class="wrap">
			<div class="nav">
				<ul>
					<li id="m1" class="m"><h3><a href="index.jsp">首页</a></h3></li>
					
					<li id="m4" class="m"><h3><a href="news.jsp?lb=就医指南">就医指南</a></h3></li>
					<li id="m4" class="m"><h3><a href="paibanbiaolist.jsp">医生排班</a></h3></li>
					<li id="m4" class="m"><h3><a href="yishengxinxilisttp.jsp">医生信息</a></h3></li> 
					<li id="m4" class="m"><h3><a href="dx_detail.jsp?lb=关于我们">关于我们</a></h3></li>
					<li id="m2" class="m">
						<h3><a >在线留言</a></h3>
						<ul class="sub">
						  <li><a href="lyb.jsp">我要留言</a></li>
						  <li><a href="lyblist.jsp">查看留言</a></li>

						</ul>
					</li>
					<li id="m4" class="m"><h3><a href="login.jsp">后台管理</a></h3></li>
				</ul>
			</div>
			
			<div class="clear"></div>
		</div>
	</div>
</div>

<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;
 </script>
