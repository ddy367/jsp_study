<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String path = request.getServletPath();
int k = path.lastIndexOf('/');
path = path.substring(k + 1, path.length());

String pageName= "";

if (path.equals("phoneList.jsp")) {
	pageName = "전화번호 목록";
}
else if (path.equals("pSelect.jsp")){
	pageName = "전화번호 상세";
}
else if (path.equals("pInsert.jsp")){
	pageName = "전화번호 등록";
}
else if (path.equals("pUpdate.jsp")){
	pageName = "전화번호 수정";
}
else if (path.equals("pDelete.jsp")){
	pageName = "전화번호 목록 삭제";
}

%>

<header class="container">
	<div class="mt-4 p-5 rounded jumbotron">
		<h1><%= pageName %></h1>
	</div>
</header>


