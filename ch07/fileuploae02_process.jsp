<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>

<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
	<%
	MultipartRequest multi = new MultipartRequest(request, "C:\\JspStudy\\java404\\upload", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
	
	String name1 = multi.getParameter("name1");
	String subject1 = multi.getParameter("subject1");
	
	String name2 = multi.getParameter("name2");
	String subject2 = multi.getParameter("subject2"); 
	
	String name3 = multi.getParameter("name3");
	String subject3 = multi.getParameter("subject3");
	
	Enumeration files = multi.getFileNames();
	
	String file3 = (String)files.nextElement();
	String filename3 = multi.getFilesystemName(file3);
	
	String file2 = (String)files.nextElement();
	String filename2 = multi.getFilesystemName(file2);
	
	String file1 = (String)files.nextElement();
	String filename1 = multi.getFilesystemName(file1);
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th width="100">이름</th>
				<th width="100">제목</th>
				<th width="100">파일</th>
				</tr>
		</thead>
		<body>
			<%
			String str = "";
			
			str += "<tr>";
			str += "<td>" + name1 + "</td>";
			str += "<td>" + subject1 + "</td>";
			str += "<td>" + filename1 + "</td>";
			str += "</tr>";
			
			str += "<tr>";
			str += "<td>" + name2 + "</td>";
			str += "<td>" + subject2 + "</td>";
			str += "<td>" + filename2 + "</td>";
			str += "</tr>";
			
			str += "<tr>";
			str += "<td>" + name3 + "</td>";
			str += "<td>" + subject3 + "</td>";
			str += "<td>" + filename3 + "</td>";
			str += "</tr>";
			
			out.println(str);
			%>
		</body>
	</table>
</body>
</html>