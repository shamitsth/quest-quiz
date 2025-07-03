<%
if(session.getAttribute("user")==null)
{
    out.print("you need to login!");
    return;
}

int totalQuest=3; //Total number of questions

String[] questions=new String[3];
questions[0]="What is the capital of Japan?";
questions[1]="Who is the current President of Nepal?";
questions[2]="In which continent Turkey lies?";



String[] correctAns=new String[3];
correctAns[0]="Tokyo";
correctAns[1]="Ram Chandra Poudel";
correctAns[2]="Europe";

String[][] Answers=new String[3][4];
Answers[0][0]="Kathmandu";
Answers[0][1]="Tokyo";
Answers[0][2]="Beijing";
Answers[0][3]="Seol";

Answers[1][0]="K.P. Oli";
Answers[1][1]="Bidhya Devi Bhandari";
Answers[1][2]="Ram Chandra Poudel";
Answers[1][3]="Prachanda";

Answers[2][0]="Europe";
Answers[2][1]="Asia";
Answers[2][2]="North America";
Answers[2][3]="Africa";

String num=request.getParameter("num");
String ans=request.getParameter("ans");
int numb=0;
int score;
score=Integer.parseInt(session.getAttribute("score").toString());


if(num==null)
    numb=0;
else
    numb=Integer.parseInt(num);


//Check if questions are finished
if(numb==totalQuest)
{
    response.sendRedirect("result.jsp");
    return;
}



if(ans!=null)
{

    if(ans.equals(correctAns[numb-1]))
    {
        score++;
        session.setAttribute("score",score);
        
    }

    
}
%>
<html>
    <head><title>Quiz App</title>
    <style>


*{
    font-family:Verdana;
    font-color:rgb(67, 67, 67);
}


#wrapper{

    background-color:rgb(151, 214, 241);
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

h2{
    font-size:20px;
    color:rgb(14, 126, 66);
}

h3{
    font-size:18px;
    color:rgb(137, 111, 6);
}
    </style>
    
    
    
    </head>
    <body>
    <div id="wrapper">
        <h1>My Quiz App</h1>
        <h2>You got <%=score %> out of 3</h2>
        <table border="0">
            <tr><th><h3><%= questions[numb] %></h3></th></tr>
            <form>
                <tr><td><input type="radio" name="ans" value="<%=Answers[numb][0] %>" /><%=Answers[numb][0] %></td></tr>
                <tr><td><input type="radio" name="ans" value="<%=Answers[numb][1] %>" /><%=Answers[numb][1] %></td></tr>
                <tr><td><input type="radio" name="ans" value="<%=Answers[numb][2] %>" /><%=Answers[numb][2] %></td></tr>
                <tr><td><input type="radio" name="ans" value="<%=Answers[numb][3] %>" /><%=Answers[numb][3] %></td></tr>
                <input type="hidden" name="num" value=<%= ++numb %> />
                <tr><td><button>NEXT</button></td></tr>
            </form>
        </table>
    </div>
    </body>
</html>