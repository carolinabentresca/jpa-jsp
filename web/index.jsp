<%-- 
    Document   : index
    Created on : 18/05/2021, 19:49:21
    Author     : EXO
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Usuario"%>
<%@page import="Controller.UsuarioJpaController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD</title>
    </head>
    <%
        UsuarioJpaController Jpa = new UsuarioJpaController();
        Usuario us = new Usuario();
        List<Usuario> lista = Jpa.findUsuarioEntities();

        if (request.getParameter("btnAdd") != null) {
            us.setId(Integer.parseInt(request.getParameter("id")));
            us.setNombre(request.getParameter("nombre"));
            us.setEmail(request.getParameter("email"));
            Jpa.create(us);
            lista = Jpa.findUsuarioEntities();
        }

        if (request.getParameter("btnUpdate") != null) {
            us.setId(Integer.parseInt(request.getParameter("id")));
            us.setNombre(request.getParameter("nombre"));
            us.setEmail(request.getParameter("email"));
            Jpa.edit(us);
            lista = Jpa.findUsuarioEntities();
        }

        if (request.getParameter("btnDelete") != null) {
            int id = Integer.parseInt(request.getParameter("id"));
            us.setId(id);
            Jpa.destroy(id);
            lista = Jpa.findUsuarioEntities();
        }

    %>
    <body style="background: #000000;color: #ff0099;font-family: cursive;font-size: 150%">
        <h2 style="background: #ffffff;color: #ff0099">Datos del Usuario...</h2>   
    <center>
        <form method="POST">
            <label>ID...</label><br/> 
            <input type="text" name="id"  placeholder="id" required="required" style="font-size: 100%" /><br/>
            <label>NOMBRE...</label><br/> 
            <input type="text" name="nombre"  placeholder="nombre"  required="required" style="font-size: 100%"/><br/> 
            <label>EMAIL...</label><br/>
            <input type="email" name="email"  placeholder="email" required="required" style="font-size: 100%" /><br/>
            <br/>
            <hr/>
            <input type="submit" value="Add" name="btnAdd" style="background: #ffffff;color: #ff0099;font-family: cursive;font-size: 100% "/>
            <input type="submit" value="Update" name="btnUpdate" style="background: #ffffff;color: #cc00cc;font-family: cursive;font-size: 100%"/>
            <input type="submit" value="Delete" name="btnDelete" style="background: #ffffff;color: #00ff00;font-family: cursive;font-size: 100%"/>
            <hr/>
        </form>
        <br/>
        <table border="1" style="background: #ffffff;color: #ff0099">
            <thead>
                <tr>
                    <th>ID:</th>
                    <th style="color: #cc00cc">NOMBRE:</th>
                    <th style="color: #00ff00">EMAIL:</th>
                </tr>
            </thead>
            <%                for (Usuario u : lista) {
            %>
            <tbody>
                <tr>  
                    <td> <%= u.getId()%></td>
                    <td> <%= u.getNombre()%></td>
                    <td> <%= u.getEmail()%></td>   
                </tr>
            </tbody>
            <%
                }
            %>
        </table> 
    </center>
</body>
</html>
