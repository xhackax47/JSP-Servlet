<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ tag import="tags.TextTag" body-content= "scriptless" dynamic-attributes="dynamics"%>
<%@ attribute name="text2" required="false" type="java.lang.String"%>


<% 		if (text2 != null) {
			out.print(text2.toString().toUpperCase());
		}
		
%>
<jsp:doBody var="text3" scope="request"></jsp:doBody>
<c:out value="${fn:toUpperCase(text3)}" />