<%-- 
    Document   : calcularetencion
    Created on : 18-ene-2021, 20:20:20
    Author     : Juanjo Cortés
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="ret" class="clases.Retencion"/>
         <%
            double salario = Double.parseDouble(request.getParameter("salario"));
            //Retencion retencion = new Retencion(salario);
        %>
        
        <jsp:setProperty name="ret" property="salario" value="<%=salario%>" />
        <%
            //double salario = request.getParameter("salario");
            //Retencion retencion = new Retencion(salario);
        %>
        <p><b>Salario bruto: </b><jsp:getProperty name="ret" property="salario"/> €</p>
        <p><b>Retencion: </b><jsp:getProperty name="ret" property="retencion"/> %</p>
        <p><b>Salario neto: </b><jsp:getProperty name="ret" property="salarioneto"/>€</p>
    </body>
</html>
