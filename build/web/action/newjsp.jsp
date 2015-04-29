<%-- 
    Document   : newjsp
    Created on : 16 Nov, 2013, 3:15:52 PM
    Author     : prasanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="receive_report.jsp" method="post">
          patient id:   <input type="text" name="pat_id"/><br>
         
          doctor id:  <input type="text" name="doc_id"/><br>
         
           Report: <input type="text" name="report"/><br>
            <input type="submit" value="save"/>
        </form>
    </body>
</html>
