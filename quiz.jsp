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
        out.print("Correct!!");
        score++;
        session.setAttribute("score",score);
        
    }

    out.print(" You got " + score + " out of 3");
}
%>
<html>
    <head><title>Quiz App</title></head>
    <body>
        <h1>My Quiz App</h1>
        <table border="0">
            <tr><th><h2><%= questions[numb] %></h2></th></tr>
            <form>
                <tr><td><input type="radio" name="ans" value="<%=Answers[numb][0] %>" /><%=Answers[numb][0] %></td></tr>
                <tr><td><input type="radio" name="ans" value="<%=Answers[numb][1] %>" /><%=Answers[numb][1] %></td></tr>
                <tr><td><input type="radio" name="ans" value="<%=Answers[numb][2] %>" /><%=Answers[numb][2] %></td></tr>
                <tr><td><input type="radio" name="ans" value="<%=Answers[numb][3] %>" /><%=Answers[numb][3] %></td></tr>
                <input type="hidden" name="num" value=<%= ++numb %> />
                <tr><td><input type="submit" name="Next" /></td></tr>
            </form>
        </table>

    </body>
</html>