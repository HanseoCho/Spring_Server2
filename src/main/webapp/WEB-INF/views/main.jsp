<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello File Server!  
</h1>
        <form action="/FileUpload/file" enctype="multipart/form-data" method="post">
            <input type="file" name="file">
            <input type="submit" value="파일업로드">
        </form>  
</body>
</html>
