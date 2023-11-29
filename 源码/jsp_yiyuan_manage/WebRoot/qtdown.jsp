
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<div class="footer">
	<div class="wrap">
		<div class="pad15">
			<div class="fl"><a href="#"></a></div>
			<div class="fr tr mr15">Copyright 2020 All rights reserved 医院管理系统 </div>
		</div>
	</div>
</div>
<script type="text/javascript">
jQuery(".focusBox").hover(function(){ jQuery(this).find(".prev,.next").stop(true,true).fadeTo("show",0.2) },function(){ jQuery(this).find(".prev,.next").fadeOut() });
jQuery(".focusBox").slide({ mainCell:".pic",effect:"fold", autoPlay:true, delayTime:600, trigger:"click"});//banner图
jQuery(".nav").slide({ type:"menu",  titCell:".m", targetCell:".sub", effect:"slideDown", delayTime:300, triggerTime:100,returnDefault:true  });//导航

jQuery(".slideGroup .slideBox").slide({ mainCell:"ul",vis:5,prevCell:".sPrev",nextCell:".sNext",effect:"leftLoop"});
/* 外层tab切换 */
jQuery(".slideGroup").slide({titCell:".parHd li",mainCell:".parBd"});

jQuery(".adsBox").slide({mainCell:".bd ul",effect:"fold",autoPlay:true});/*广告按钮*/
</script>
