<%-- 
    Document   : admin_login
    Created on : Jul 19, 2017, 11:25:55 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/main.js" charset="UTF-8"></script>
        <link rel="stylesheet" href="css/style.build.css">

        <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
    </head>
    <body>
       <form class="sidenav" action="login_verify" method="post">
            <div class="wrap">
                <div class="avatar">
                    <img src="images/Lock.png">
                </div>
                <input type="text" name="username" placeholder="Username" required>
                <div class="bar">
                    <i></i>
                </div>
                <input type="password" name="password" placeholder="Password" required>
                <a href="javascript:void(0)" class="forgot_link">forgot ?</a>

                <button>Sign in</button>
            </div>
        </form>
        <%
            if (null != request.getAttribute("error_message")) {

        %>

        <div id="snackbar" onload="ackn()">
            <%                     out.println(request.getAttribute("error_message"));
            %>
        </div>
        <%
            }
        %>
         <script>
            var open = false;
            var speed = 200;

            $("#snackbar").ready(function(){
                var x = document.getElementById("snackbar");
                x.className = "show";
                setTimeout(function () {
                    x.className = x.className.replace("show", "");
                }, 3000);
            });
            </script>
    </body>
</html>
