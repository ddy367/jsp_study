<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
	<form action="fileuploae02_process.jsp" method="post" enctype="multipart/form-data">
		<label>이름 1 :</label>
		<input type="text" id="name1" name="name1"><br>
		<label>제목 1 :</label>
		<input type="text" id="subject1" name="subject1"><br>
		<label>파일 1 :</label>
		<input type="file" id="filename1" name="filename1"><br><br>
				
		<label>이름 2 :</label>
		<input type="text" id="name2" name="name2"><br>
		<label>제목 2 :</label>
		<input type="text" id="subject2" name="subject2"><br>
		<label>파일 2 :</label>
		<input type="file" id="filename2" name="filename2"><br><br>
		
		<label>이름 3 :</label>
		<input type="text" id="name3" name="name3"><br>
		<label>제목 3 :</label>
		<input type="text" id="subject3" name="subject3"><br>
		<label>파일 3 :</label>
		<input type="file" id="filename3" name="filename3"><br><br>
		
		<button type="submit">파일 올리기</button>
	</form>
</body>
</html>