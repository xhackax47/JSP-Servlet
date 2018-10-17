<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:import url="header.jsp"/>
<body>
<h1><c:out value="JSP-SERVLET"/></h1>
<h2><c:out value="Accueil"/></h2>
<div class="container-fluid">
<p>Parametre test = <c:out value='<%=request.getParameter("testPar")%>'/>
<br>Date test = <c:out value='<%=new Date()%>'/>
<% session.setAttribute("testAttribute", "TestSession1"); %>
<br>Affichage Attribut testAttribute = <%= session.getAttribute("testAttribute") %>
<% Object ObjetTest =  session.getAttribute("testAttribute"); %>
<br>Affichage  ObjetTest = <c:out value='<%= ObjetTest %>'/></p>
</div>
</body>
<c:import url="footer.jsp"/>
</html>