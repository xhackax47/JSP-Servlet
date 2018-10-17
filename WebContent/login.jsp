<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:import url="header.jsp"/>
<body>
<h1><c:out value="JSP-SERVLET"/></h1>
<h2><c:out value="Login"/></h2>
<div class="container-fluid">
<form action="login" method="GET">

  <div class="container">
  <br>
    <label for="username"><b>Utilisateur</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="password"><b>Mot de passe</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit" class="btn-success">Connexion</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Souvenez-vous de moi
    </label>
    <button type="button" class="cancelbtn btn-danger">Annuler</button>
    <a href="#">Oubli de mot de passe</a>
  </div>
</form>
</div>
</body>
<c:import url="footer.jsp"/>
</html>