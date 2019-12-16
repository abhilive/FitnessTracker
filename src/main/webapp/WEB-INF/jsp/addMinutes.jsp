<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Minutes Page</title>
<script type="text/javascript" src="jquery-3.4.1.js"></script>

<script>
	$(document).ready(function() {
		$.getJSON('<spring:url value="activities.json" />', {
			ajax: 'true'
		}, function(data) {
			var html = '<option value="">--Please Select One--</option>';
			for(i=0; i<data.length; i++) {
				html += '<option value="' + data[i].desc+ '">'
						+ data[i].desc + '</option>';
			}
			$('#activities').html(html);
		});
	});
</script>
</head>
<body>
<h1>Add Minutes Exercised !!</h1>

Language : <a href="?language=en">English</a> | <a href="?language=es">Spanish </a>

<form:form modelAttribute="exercise">
	<table>
		<tr>
			<td><spring:message code="goal.text" /></td>
			<td><form:input path="minutes"/></td>
			<td>
				<form:select id="activities" path="activity"></form:select>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="Enter Exercise" />
			</td>
		</tr>
	</table>
</form:form>
<h1>Our goal for today is: ${goal.minutes}</h1>
</body>
</html>