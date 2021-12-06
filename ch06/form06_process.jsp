<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 태그</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>요청 파라미터 이름</th>
				<th>요청 파라미터 값</th>
			</tr>
		</thead>
		<tbody>
			<%
			request.setCharacterEncoding("UTF-8");
			
			Enumeration<String> paramNames = request.getParameterNames();
			
			while (paramNames.hasMoreElements()) {
				String name = paramNames.nextElement();
				String paramValue = "";
				
// 				if (request.getParameter(name).getClass().isArray()) {
				if (name.equals("hobby")) {
					String arrStr[] = request.getParameterValues(name);
					
					for (int i = 0; i < arrStr.length; i++) {
						paramValue += arrStr[i] + " ";
					}
				}
				else {
					paramValue = request.getParameter(name);
				}
				
				String strTag = "<tr>";
				strTag += "<td>" + name + "</td>";
				strTag += "<td>" + paramValue + "</td>";
				strTag += "</tr>";
				
				out.println(strTag);
			}
			%>
		</tbody>
	</table>
</body>
</html>







 