<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<%@ taglib uri="WEB-INF/tag/date.tld" prefix="dateTag"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<c:import url="header.jsp"/>
<body>
<h1><c:out value="TAG-LIBS"/></h1>
<h2><c:out value="TagLib Date"/></h2>
<div class="dateTag">
		<form method="GET">
			<input type="text" name="date" placeholder="Format de Date" />
			<input type="submit" value="Soumettre" />
		</form>
		<br>
		<p>Résultat après application TagLib Date : 
		<br>
		</p>
		<dateTag:Date format='<%= request.getParameter("date") %>' date="<%= new Date() %>"/></div>
</body>
<c:import url="footer.jsp"/>
</html>