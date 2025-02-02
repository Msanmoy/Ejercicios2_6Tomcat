<%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 7</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<form method="post" action="../Respuestas/respuesta7.jsp" onsubmit="validar()">
  <h3>Calendario</h3>

  <div>
    <label for="mes">Introduce el nombre del mes: </label>
    <input id="mes" type="text" name="mes">
  </div>

  <div>
    <label for="año">Introduce el año: </label>
    <input id="año" type="text" name="año">
  </div>

  <input type="submit" value="Crear">
</form>

<script>
  function validar() {
    let mes = document.getElementById("mes").value.trim().toLowerCase();
    let año = document.getElementById("año").value;

    if (mes === "" || año.length !== 4 || isNaN(año)) {
      alert("Introduce un mes válido y un año con 4 dígitos");
      return false;
    }

    let mesesValidos = ["enero", "febrero", "marzo", "abril", "mayo", "junio",
      "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"];
    if (!mesesValidos.includes(mes)) {
      alert("Introduce un mes válido (enero - diciembre)");
      return false;
    }

    return true;
  }
</script>

<a href="../index.jsp">Inicio</a>
</body>
</html>
