<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<textarea style="width:95%;height:200px">
DWZ富客户端框架

在线演示地址	http://j-ui.com/
下载地址	http://code.google.com/p/dwz/

官方微博： http://weibo.com/dwzui

DWZ创始人：
	[北京]杜权(UI设计)		d@j-ui.com
	[杭州]吴平(Ajax开发)	w@j-ui.com
	[北京]张慧华(Ajax开发)	z@j-ui.com

新加入成员：
	[北京]张涛	QQ:122794105
	[北京]冀刚	QQ:63502308	jiweigang2008@tom.com
	[北京]郑应海	QQ:55691650
	[成都]COCO	QQ:80095667
	
有问题尽量发邮件或微博	
</textarea>
<script type="text/javascript">
function   appendit() 
  { 
  var   nodes   =   document.getElementsByTagName("INPUT"); 
  for   (var   i=0;   i<nodes.length;   i++) 
  { 
  var   ctype   =   nodes[i].getAttribute("type"); 
  if   (ctype   ==   'text') 
  { 
  nodes[i].onfocus   =   function   ()   {   this.style.backgroundColor='#33FF00';   } 
  nodes[i].onblur   =   function   ()   {   this.style.backgroundColor='#3366FF';   } 
  } 
  } 
  } 
</script>
测试：

<input type="text" size="36" name="title" />

<input type="text" size="36" name="title" />
<br>
