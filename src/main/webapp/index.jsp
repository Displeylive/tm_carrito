<%@page import="java.util.ArrayList"%>
<%
    // verifica si existe la coneccion dl abjeto session
    if(session.getAttribute("lista")== null){
    //inicialisar la lista auxiliar
    ArrayList<String> lis= new ArrayList<String>();
    //creando con una coleccio vacia
    session.setAttribute("lista", lis);

    }
    // se obtiene la coleccion lista que esta como atributo de session
   ArrayList<String> lista = (ArrayList<String>)session.getAttribute("lista");
   
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>GRAN CARRITO DE COMPRAS!! MT</h1>
        <p>inserte los productos que desea</p>
        <form action="ProcesaServlet" method="POST">
          PRODUCTO :  <input required type="text" name="producto" value=""/>
          <input type="submit" value="ENVIAR" />
        </form>
        <br>
        <a><a href="ProcesaServlet">VACIAR EL CARRITO</a>
        <h3>CONTENIDO DEL CARRITO</h3>
        <h3>listado de productos insertados</h3>
    <u1>
        <%
            if (lista != null){
            for (String item : lista){
            out.print("<li>"+ item +"</li>");
            }
            }
            %>
    </u1>
    
            
    </body>
</html>
