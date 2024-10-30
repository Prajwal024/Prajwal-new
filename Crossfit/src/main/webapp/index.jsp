<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Welcome to CrossFit Club</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            padding: 20px;
        }
        h1 {
            color: #c0392b;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            background: #fff;
            margin: 5px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>Welcome to the CrossFit Club!</h1>
    <h2>Here are some exercises you can try:</h2>

    <%
        List<String> exercises = Arrays.asList("Push-ups", "Squats", "Burpees", "Lunges", "Plank", "Deadlifts", "Bench Press", "Overhead Press");

        out.println("<ul>");
        for (String exercise : exercises) {
            out.println("<li>" + exercise + "</li>");
        }
        out.println("</ul>");
    %>

    <h2>Random Exercise of the Day:</h2>
    <%
        Random random = new Random();
        String randomExercise = exercises.get(random.nextInt(exercises.size()));
    %>
    <p><strong>Today's Random Exercise: </strong><%= randomExercise %></p>

    <footer>
        <p>&copy; 2024 CrossFit Club</p>
    </footer>
</body>
</html>
