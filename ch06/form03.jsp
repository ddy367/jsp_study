<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="#" method="get">
		<label for="useId">아이디 : </label>
		<input type="text" id="userId" name="userId" placeholder="아이디를 입력해주세요">&nbsp;<button type="button" id="btn-idCheck">아이디 중복 검사</button><br>
		<label for="userPw">비밀번호</label>
		<input type="password" id="userPw" name="userPw" placeholder="비밀번호를 입력해주세요"><br>
		<label for="userName">이름 :</label>
		<input type="text" id="userName" name="userName" placeholder="이름을 입력해 주세요"><br>
		<label for="select phone1">연락처 :</label>
		<select name="select-phone1">
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="017">017</option>
		</select>
		<input type="text" id="phone2" name="phone2" size="4">
		<input type="text" id="phone3" name="phone3" size="4"><br>
		<label>성별 :</label>
		<input type="radio" id="userGenderM" name="userGender" value="남자">남자
		<input type="radio" id="userGenderW" name="userGender" value="여자">여자<br>
		<label>취미 :</label>
		<input type="checkbox" id="hobby1" name="hobby1" checked>독서
		<input type="checkbox" id="hobby2" name="hobby2">운동
		<input type="checkbox" id="hobby3" name="hobby3">영화<br>
		<textarea name="comment" cols="30" rows="3" placeholder="가입 인사를 입력해주세요"></textarea>
		<button type="submit">가입하기</button>
		<button type="reset">다시 쓰기</button>
	</form>
</body>
</html>