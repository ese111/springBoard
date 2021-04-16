<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<table>
<tr>
<td><button onclick="location.href='${cp}/board/boardList'">전체 게시글 보기</button></td>
</tr>
</table>
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
