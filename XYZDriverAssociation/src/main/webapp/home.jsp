<%@page import="filter.ClientFilter"%>
<%@page import="filter.AdminFilter"%>
<%@page import="servlet.auth.Logout"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./css/style.css">
        <title>Home</title>
    </head>
    <body>
        <h1>Welcome to XYZ Driver Association</h1>
        <form action ='Login' method='get'>
            <input name='loginButton' type='submit' value='Login'/>
        </form>
        <form action ='Registration' method='get'>
            <input name='registrationButton' type='submit' value='New user'/>
        </form>
    </body>

    <p class="success">
        <%
            if (request.getAttribute(Logout.LOGOUT_MESSAGE) != null) {
                out.println("<br>");
                out.println(request.getAttribute(Logout.LOGOUT_MESSAGE));
            }
        %>
    <p/>

    <p class="failure">
        <%
            if (request.getAttribute(ClientFilter.CLIENT_FILTER_ERROR) != null) {
                out.println("<br>");
                out.println(request.getAttribute(ClientFilter.CLIENT_FILTER_ERROR));
            }
        %>
        <%
            if (request.getAttribute(AdminFilter.ADMIN_FILTER_ERROR) != null) {
                out.println("<br>");
                out.println(request.getAttribute(AdminFilter.ADMIN_FILTER_ERROR));
            }
        %>
    <p/>
</html>
