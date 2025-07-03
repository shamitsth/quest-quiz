<html>
    <head><title>Quiz App</title>
    
    <style>
*{

    font-family:Verdana;
    color:rgb(50,50,50);
}
form{
    margin-top:30px;
    border:2px;
    border-radius:12px;
    box-shadow:0 0 12px rgb(0,0,0);
    width:400px;
    height:300px;
    background-color: rgb(191, 209, 231);
}

h1{
    margin-top:10px;
    color:rgb(14, 126, 66);
}

button{
    margin-top:15px;
    height:40px;
    width:100px;
    border:0;
    border-radius:8px;
    background-color:rgb(0, 179, 105);
    box-shadow:0 0 5px rgb(0,0,0);
    font-face:Verdana;
    font-size:15px;
}

form input{
    height:40px;
    border:2px;
    border-color:rgb(68, 68, 68);
    border-radius:8px;
}
    </style>

    
    </head>
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

<center>
        <form action="login.jsp">
            <table border="0">
                <tr><th colspan="2"><h1>My Quiz App</h1></th></tr>
                <tr><td>User:</td><td><input type="text" name="user" placeholder="Enter UserName" /></td></tr>
                <tr><td>Pass:</td><td><input type="password" name="pass" placeholder="Enter Password" /></td></tr>
                <tr><td></td><td><button>Login</button></td></tr>
            </table>
        </form>
</center>        

    </body>
</html>