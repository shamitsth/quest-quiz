<html>
<head><title>My Quizz App</title>
<style>

*{
    background-color:rgb(132, 213, 248);
    font-family:Verdana;
    font-size:30px;
    font-color:rgb(0, 132, 55);
}

h1{
    margin-top:30px;
    font-size:40px;
    color:rgb(14, 126, 66);
    text-align:center;
}
</style>

</head>

<body>

<h1>
Your score is <%= session.getAttribute("score") %> out of 3
</h1>
</body>
</html>
