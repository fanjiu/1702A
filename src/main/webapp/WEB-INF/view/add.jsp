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
	$.post(
		"getBlogType",
		function(json){
			for ( var i in json) {
				$("[name='tid']").append("<option value='"+json[i].tid+"'>"+json[i].tname+"</option>")
			}
		},
		"json"
	)
})
function add(){
	
}
</script>
</head>
<body>
<div class="container">
  <form class="">
    <div class="form-group">
      <label for="title">名称</label>
      <input type="text" class="form-control" id="title" name="title" placeholder="请输入名称">
    </div>
    <input type="file" name="file">
   	分类<select name="tid">
	   	<option>---请选择---</option>
	   </select><hr>
    <button type="button" class="btn btn-primary" onclick="add()">保存</button>
  </form>
</div>
</body>
</html>