<%@ page import="java.util.List" %>
<%@ page import="sn.edu.diamniadio.gestion_bibliotheque.Livre" %><%--
  Created by IntelliJ IDEA.
  User: gorgui
  Date: 2024-07-18
  Time: 4:07 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblio</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/FRONT-END/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/FRONT-END/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/FRONT-END/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/FRONT-END/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>

<header id="nav-bar">
    <nav class="nav-bar">
        <div class="logo">
            <img src="../../FRONT-END/images/logo.svg" alt="Notre logo">
            <h2>Biblio</h2>
        </div>
        <div>
            <ul class="nav-right">
                <li><a href="list_livre?action=acceuil">Accueil</a></li>
                <li><a href="list_livre?action=list">Etudiants</a></li>
            </ul>
        </div>
    </nav>
</header>

<main class="container">
    <section class="user-management">
        <h2>Ajouter un Nouvel Livre</h2>
        <form id="add-user-form" action="list_livre?action=ajouter" method="POST">
            <label for="titre">Titre</label>
            <input type="text" id="titre" name="titre" required>

            <label for="auteur">Auteur</label>
            <input type="text" id="auteur" name="auteur" required>

            <label for="anne">Annee de publication</label>
            <input type="date" id="anne" name="anneePublicite" required>

            <input type="submit" name="submit" class="btn" value="Ajouter">
        </form>
    </section>

    <section class="user-list">
        <h2>Liste des Livres</h2>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Auteur</th>
                <th>Titre</th>
                <th>Annee de publication</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <%
                List<Livre> livreList = (List<Livre>) request.getAttribute("livres");

                if (livreList != null) {
                    for (Livre livre : livreList) {
            %>

            <tr>
                <td><%=livre.getId()%>
                </td>

                <td><%=livre.getTitre()%>
                </td>

                <td><%=livre.getAuteur()%>
                </td>

                <td><%=livre.getAnneePublication()%>
                </td>
                <td>
                    <a href="list_livre?action=supprimer&id=<%=livre.getId()%>" >Supprimer</a>
                </td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan='4'>Aucun Livre trouvé</td>
            </tr>
            <%
                }%>
            </tbody>
        </table>
    </section>
</main>
</body>
</html>