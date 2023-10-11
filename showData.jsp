<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Recuperando os cookies
    Cookie[] cookies = request.getCookies();
    String favoriteColor = "#000000";  // default color
    String name = "", age = "", course = "", university = "", company = "", position = "";

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            switch (cookie.getName()) {
                case "favoriteColor": favoriteColor = cookie.getValue(); break;
                case "name": name = cookie.getValue(); break;
                case "age": age = cookie.getValue(); break;
                case "course": course = cookie.getValue(); break;
                case "university": university = cookie.getValue(); break;
                case "company": company = cookie.getValue(); break;
                case "position": position = cookie.getValue(); break;
            }
        }
    }
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show User Data</title>
</head>
<body>
    <h2 style="color: <%= favoriteColor %>">Informações Pessoais</h2>
    Nome: <%= name %><br>
    Idade: <%= age %><br>

    <h2 style="color: <%= favoriteColor %>">Informações Acadêmicas</h2>
    Curso: <%= course %><br>
    Universidade: <%= university %><br>

    <h2 style="color: <%= favoriteColor %>">Informações Profissionais</h2>
    Empresa: <%= company %><br>
    Cargo: <%= position %><br>

    <h2 style="color: <%= favoriteColor %>">Cor Favorita</h2>
    Cor: <%= favoriteColor %>
</body>
</html>
