<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resource/css/bootstrap.min.css">
<script type="text/javascript">
$(function(){
	$(".page-link").click(function(){
		var url=$(this).attr("data");
		location.href=url
	})
})

function toAdd(){
	location.href="toAdd";
	
}
function query(){
	location.href="/list?title="+$("[name='title']").val()
}
</script>
</head>
<body>
标题：<input type="text" name="title" value="${title }">
<button type="button" onclick="query()">查询</button>
<button type="button" onclick="toAdd()">增加</button>
<table class="table table-hover">
	<thead>
    <tr>
      <c:forEach items="${list}" var="l">
			<th>
				<img alt="未找到图片" src="/pic/${l.pic}">
				<br>
				${l.title}
			</th>
		</c:forEach>
    </tr>
  </thead>
  <thead>
    <tr>
    	 <th scope="col">${pageInfo}</th>    
    </tr>
  </thead>
</table>
</body>
</html>