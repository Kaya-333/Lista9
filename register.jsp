<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register User</title>
</head>
<body>
    <!-- Note the action is now set to "Cadastro" -->
    <form action="Cadastro" method="post">
        
        <!-- Informações Pessoais -->
        <h2>Informações Pessoais</h2>
        Nome: <input type="text" name="name"><br>
        Idade: <input type="text" name="age"><br>

        <!-- Informações Acadêmicas -->
        <h2>Informações Acadêmicas</h2>
        Curso: <input type="text" name="course"><br>
        Universidade: <input type="text" name="university"><br>

        <!-- Informações Profissionais -->
        <h2>Informações Profissionais</h2>
        Empresa: <input type="text" name="company"><br>
        Cargo: <input type="text" name="position"><br>

        <!-- Cor Favorita -->
        <h2>Cor Favorita</h2>
        Cor: <input type="color" name="favoriteColor"><br><br>

        <input type="submit" value="Register">
    </form>
</body>
</html>
