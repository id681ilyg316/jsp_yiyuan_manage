<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<div class="banner">
	<div class="focusBox">
		<ul class="pic">
			  <%
				int bhti=0;		
				int xxbbt=0;				
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi  order by id desc ")){
	bhti++;
	xxbbt++;
     %>
			<li style="background:url(<%=map.get("shouyetupian")%>) center top no-repeat;"><a href="gg_detail.jsp?id=<%=map.get("id")%>"></a></li>
		<%
	  }
	  %>
			
		</ul>
		<a class="prev" href="javascript:void(0)"></a>
		<a class="next" href="javascript:void(0)"></a>
		<ul class="hd">
		<%
		for(int ttti=0;ttti<xxbbt;ttti++)
		{
		%>
			<li></li>
			<%
	  }
	  %>
			
		</ul>
	</div>
</div>


