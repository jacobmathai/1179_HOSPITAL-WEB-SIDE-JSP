<%-- 
    Document   : view_report
    Created on : 16 Nov, 2013, 4:18:26 PM
    Author     : prasanth
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="request.jsp" method="post">
           Patient Id: <input type="text" name="pat_id"/><br>
    
           Doctor Id: <input type="text" name="doc_id"/><br>
            location: <input type="text" name="locname"/><br>
            <input type="submit" value="save"/>
        </form>
    </body>
</html>
