<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String nome = request.getParameter("nome");
	String faixaE = request.getParameter("idade");
	String sexo = request.getParameter("sexo");
	
	if(sexo != null) {
		if(sexo.toUpperCase().equals("M")) {
			sexo = "Homem";
		}else if(sexo.toUpperCase().equals("F")) {
			sexo = "Mulher";
		}else {
			sexo = "Trans";
		}
	}
	
	int idade = 0;
	if(faixaE != null) {
		idade = Integer.parseInt(faixaE);
		if(idade < 12) {
			faixaE = "Criança";
		}else if(idade < 18) {
			faixaE = "Adolescente";
		}else if(idade < 24) {
			faixaE = "Jovem";
		}else if(idade < 60) {
			faixaE = "Adulto";
		}else {
			faixaE = "Idoso";
		}
	}

	out.print("Eae "+nome+", você tem "+idade+" anos, é "+sexo+" e é um(a) "+faixaE);
%>
</body>
</html>