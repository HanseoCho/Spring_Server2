<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<!-- <script type="text/javascript" src="webjars/jquery/3.3.1/dist/jquery.min.js"></script>
<script>
	$(function(){
		console.log("abc");
		$("form").on("submit",function(event){
			event.preventDefault();			 
			$.ajax({type:"post",
				url:"http://server2/FileUpload/file",
				data:new FormData($(this)[0]),
				cache: false,
				contentType: false,
				processData: false})
			.done(function(data){
				var json = JSON.parse(data);
				var list = json.upload;
				for(var i=0;i<list.length;i++){
					console.log(list[i]);
					var html = "<img src='"+list[i].fileUrl+"' width='100px'>";
					$("#view").append(html);
				}
			});     
		});
	});
</script> -->
<body>
<h1>
	Hello File Server!  
</h1>
        <!--  <form action="/FileUpload/file" enctype="multipart/form-data" method="post"> -->
        <form action="http://gudi.iptime.org:10122/FileUpload/file" enctype="multipart/form-data" method="post">
        	<input type="text" name="boardNo" placeholder="boardNo" >
        	<input type="text" name="userNo" placeholder="userNo">
            <input type="file" name="file">
            <input type="submit" value="파일업로드">
        </form>  
        <div id="view">
        </div>
</body>
</html>
