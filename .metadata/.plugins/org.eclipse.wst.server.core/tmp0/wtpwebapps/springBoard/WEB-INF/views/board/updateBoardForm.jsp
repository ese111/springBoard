<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2> 게시글 쓰기 </h2>
		<form action="/board/updateBoardPro" method="post">
			<table border="1">
				<tr height="40">
					<td align="center" width="150"> 작성자 </td>
					<td width="450"> <input type="text" name="writer" size="60" value="${ bean.writer }"></td>
				</tr>
				<tr height="40">
					<td align="center" width="150"> 제목 </td>
					<td width="450"> <input type="text" name="subject" size="60" value="${ bean.subject }"></td>
				</tr>
				<tr height\="40">
					<td align="center" width="150"> 이메일 </td>
					<td width="450"> <input type="email" name="email" size="60" value="${ bean.email }"></td>
				</tr>
				<tr height="40">
					<td align="center" width="150"> 비밀번호 </td>
					<td width="450"> <input type="text" name="password" size="60" value="${ bean.password }"></td>
				</tr>
				<tr height="40">
					<td align="center" width="150"> 글내용 </td>
					<td width="450"> <textarea rows="10" cols="50" name="content">${ bean.content }</textarea> </td>
				</tr>
				<tr height="40">
					<td align="center" colspan="2">
						<input type="hidden" name="num" value="${bean.num}">
						<input type="submit" value="수정" > &nbsp;&nbsp;
						<input type="reset" value="다시작성" > &nbsp;&nbsp;
					</td>				
				</tr>
			</table>
		</form>
		<br><br>
		<button onclick="location.href='/board/boardList'"> 전체 게시글 보기</button>
	</div>
</body>
</html>