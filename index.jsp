<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
</head>
<body>
<!-- 액션 태그 사용하여 boardList.jsp 로딩 -->
<jsp:forward page="./boardList.jsp" />

	<h1>게시판 만들기</h1>

	<!-- 
	목록 페이지 : boardList.jsp
	상세 페이지 : selectedBoard.jsp
	글등록 페이지 : insertBoard.jsp
	글등록 내부 프로세스 : insertBoard_process.jsp
	글수정 페이지 : updatedBoard.jsp
	글수정 내부 프로세스 : updateBoard_process.jsp
	글삭제 페이지 :  deleteBoard.jsp
	글삭제 내부 프로세스 : deletedBoard_process.jsp
	 -->
	 
<!-- 문제 1) 중복코딩 된 footer, header를 가각 다른 파일로 작성하고 해당 부분을 로딩하여 화면에 출력하는 방식으로 변경하세요 -->
<!--  include 사용 -->
<!-- footer.jsp, header.jsp -->

<!-- 문제 2) DB를 사용하기 위한 기본 정보를 하나의 파일로 작성하여 필요한 부분에 로딩하여 사용하는 방식으로 변경하세요 -->
<!-- dbConn.jsp 생성 후 include 사용 -->

<!-- 문제 3) SQL문을 사용하기 위한 클래스인 Statement 클래스를 PrepareStatement 클래스로 변경하여 sql문을 질의하는 방식으로 변경하세요 -->

<!-- 문제 4) 친구들의 연락처를 저장하고 확인, 수정, 삭제할 수 있는 데이터 베이스를 생성하고, 연락처를 관리하는 사이트를 작성하세요 -->
<!--ps.데이터 베이스 : testdb   테이블:phonebook   컬럼:  -->

</body>
</html>