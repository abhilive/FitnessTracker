<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<th>ID</th><th>Minutes</th>
		</tr>
		
		<c:foreach items="${goals}" var="goal">
			<tr>
				<td>${goal.id}</td><td>${goal.minutes}</td>
				
				<td>
					<table>
					
						<tr>
							<th>Exercise ID</th><th>Exercise Minutes</th><th>Exercise Activity</th>
						</tr>
						<c:foreach items="${goal.exercises}" var="exercise">
								<tr>
									<td>${exercise.id}</td><td>${exercise.minutes}</td><td>${exercise.activity}</td>
								</tr>
						</c:foreach>
						
					</table>
				</td>
			</tr>
		</c:foreach>
	</table>
</body>
</html>