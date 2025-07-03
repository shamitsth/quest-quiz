<html>
    <head><title>Quiz App</title></head>
    <body>
    <% 

    String myuser=request.getParameter("user");
    String mypass=request.getParameter("pass");

    if(myuser!=null && mypass!=null)
    {
        if(myuser.equals("admin") && mypass.equals("Nepal123"))
            {
                response.sendRedirect("quiz.jsp");
                session.setAttribute("user","admin");
                session.setAttribute("score","0");
            }
        else
            out.print("Login Failure!!!");
    }
    
    %>

        <form action="login.jsp">
            <table border="0">
                <tr><th colspan="2"><h1>My Quiz App</h1></th></tr>
                <tr><td>User:</td><td><input type="text" name="user"/></td></tr>
                <tr><td>Pass:</td><td><input type="password" name="pass"/></td></tr>
                <tr><td></td><td><input type="submit" text="Login"/></td></tr>
            </table>
        </form>
        

    </body>
</html>