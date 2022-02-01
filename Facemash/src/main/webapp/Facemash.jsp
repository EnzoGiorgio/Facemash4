<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Esercizio Facemash</title>
<style>
header{
background-color:darkred;
color:white;
}

table {
margin: 0 auto;
}
</style>
</head>
<body>
<%
Random rand=new Random();
String[] cal= new String[]{"img/barella.jpeg","img/lautaro.jpeg","img/Ronaldo.jpeg","img/Maradona.jpeg"};
int posizionec1=0;
int posizionec2=0;
posizionec1=rand.nextInt(cal.length);
posizionec2=rand.nextInt(cal.length);
while(posizionec1==posizionec2){
posizionec2=rand.nextInt(cal.length);
}
String nome1=cal[posizionec1];

switch(nome1){
case "img/barella.jpeg":
nome1="Nicolo Barella";
break;
case "img/lautaro.jpeg":
nome1="Lautaro Martinez";
break;
case "img/Ronaldo.jpeg":
nome1="Ronaldo il fenomeno";
break;
case "img/Maradona.jpeg":
nome1="Maradona";
break;
}

String nome2=cal[posizionec2]; 

switch(nome2){
case "img/barella.jpeg":
nome2="Nicolo Barella";
break;
case "img/lautaro.jpeg":
nome2="Lautaro Martinez";
break;
case "img/Ronaldo.jpeg":
nome2="Ronaldo il fenomeno";
break;
case "img/Maradona.jpeg":
nome2="Maradona";
break;
}
%>
<header>FACEMASH</header>
<p>Who is better? Click to choose</p>
<table>
<tr>
<td><a href="2pagina.jsp?nome=<%=nome1%>&img=<%=cal[posizionec1] %>"><img src="<%=cal[posizionec1] %>" height="200px" width="300px"></a></td>
     <td>Or</td>
    <td><a href="2pagina.jsp?nome=<%=nome2%>&img=<%=cal[posizionec2] %>"><img src="<%=cal[posizionec2] %>" height="200px" width="300px"></a></td>
</tr>
</table>
</body>
</html>
