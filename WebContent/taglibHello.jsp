<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="WEB-INF/tag/hello.tld" prefix="helloTag"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<c:import url="header.jsp" />
<body>
	<h1>
		<c:out value="TAG-LIBS" />
	</h1>
	<h2>
		<c:out value="TagLib Hello" />
	</h2>
	<div class="helloTag">
		<p>
			Résultat après application TagLib Hello : <br>
		</p>
		<helloTag:Hello />
	</div>
</body>
<c:import url="footer.jsp" />
</html>