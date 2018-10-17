<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="WEB-INF/tag/text.tld" prefix="t"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<c:import url="header.jsp" />
<body>
	<h1>
		<c:out value="TAG-LIBS" />
	</h1>
	<h2>
		<c:out value="TagLib text" />
	</h2>
	<div class="textTag">
	<h3><c:out value="TagLib Text"/></h3>
		<form method="GET">
			<input type="text" name="text" placeholder="Remplir le texte" /> <input
				type="submit" value="Soumettre" />
		</form>
		<br>
		<p>
			Résultat après application TagLib Text : <br>
		</p>
		<t:Text text='<%=request.getParameter("text")%>'>
		</t:Text>

		<h3><c:out value="Dossier Tag"/></h3>
		<form method="GET">
			<input type="text" name="text2" placeholder="Remplir le texte" /> <input
				type="submit" value="Soumettre" />
		</form>
		<br>
		<p>
			Résultat après application Dossier Tags avec attribut : <br>
		</p>
		<tag:textTag text2='<%=request.getParameter("text2")%>'>
		</tag:textTag>

		<br>
		<h3><c:out value="jsp:doBody Tag"/></h3>
		<p>Resultat après application jsp:DoBody : <br>
		<tag:textTag> test3
		</tag:textTag>
		</p>
	</div>
</body>
<c:import url="footer.jsp" />
</html>