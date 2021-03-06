<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    function test1() {
        var test = prompt("비밀번호를 입력하세요.${bean.password}");
        
  		if(test==${bean.password}){
  			location.href='/board/updateBoardForm?num=${bean.num}';
  		}else{
  			alert("${bean.password}");
  		}
    };
    
    function test2() {
        var test = prompt("비밀번호를 입력하세요.${bean.password}");
        
  		if(test==${bean.password}){
  			location.href='/board/deleteBoard?num=${bean.num}';
  		}else{
  			alert("${bean.password}");
  		}
  	};
</script>
</head>
<body>
	
<div align="center">
	<h2> 게시글 보기 </h2>
	<table border="1">
		<tr height="40">
			<td align="center" width="120"> 글번호 </td>
			<td align="center" width="180"> ${bean.num} </td>
			<td align="center" width="120"> 조회수 </td>
			<td align="center" width="180"> ${bean.readcount}</td>
		</tr>
		<tr height="40">
			<td align="center" width="120"> 작성자 </td>
			<td align="center" width="180">  ${bean.writer} </td>
			<td align="center" width="120"> 작성일 </td>
			<td align="center" width="180"> ${bean.reg_date}</td>
		</tr>
		<tr height="40">
			<td align="center" width="120"> 이메일 </td>
			<td align="center" colspan="3">  ${bean.email}</td>
		</tr>
		<tr height="40">
			<td align="center" width="120"> 제목 </td>
			<td align="center" colspan="3">  ${bean.subject} </td>
		</tr>
		<tr height="80">
			<td align="center" width="120"> 글 내용 </td>
			<td align="center" colspan="3">  ${bean.content}</td>
		</tr>
		<tr height="40">
			<td align="center" colspan="4">
				
				<input type="button" value="답글쓰기" onclick="location.href='/board/reWriteForm?num=${bean.num}'">
				<input type="button" value="수정하기" onclick="test1()">
				<input type="button" value="삭제하기" onclick="test2()">
				<input type="button" value="목록보기" onclick="location.href='/board/boardList'" >
			</td>
		</tr>
	</table>
</div>


</body>
</html>