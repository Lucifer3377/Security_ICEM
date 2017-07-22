<%-- 
    Document   : admin_page
    Created on : Jul 19, 2017, 11:20:20 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Navimate</title>
        <link id="favicon" rel="shortcut icon" href="images/appicon.png" type="image/png">
        <script type="text/javascript" src="js/main.js" charset="UTF-8"></script>

        <link rel="stylesheet" href="css/style.build.css">
        <style>
            #top{
                margin-left: 150px;
            }
        </style>

        <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
     </head>
    <body class="page page--index" id="top">
        <%
            HttpSession ses = request.getSession(false);
            if (ses.getAttribute("name") == null || ses.getAttribute("name").equals("")) {
                request.setAttribute("error_message", "Login First");
                request.getRequestDispatcher("Navimate_home.jsp").include(request, response);
            } else {
        %>
        <div id="mySidenav" class="sidenav-navi">
            <br>
            <br><br>
            <br>
            <a class="tablinks" onclick="openCity(event, 'Report')" id="defaultOpen">Report</a>
            <br>
            <br>
            <a class="tablinks" onclick="openCity(event, 'Profile')">Profile</a>
            <br>
            <br>

            <a href="logout_verify">Logout</a>
        </div>


        <div id="Report" class="tabcontent">
          <form class="sidenav" method="post">
            <div class="wrap">
                <div class="avatar">
                    <img src="images/Lock.png">
                </div>
                <input type="text" name="username" placeholder="Security ID" required>
                <div class="bar">
                    <i></i>
                </div>
                From:<input type="date" name="df" placeholder="Date" required>
                To:<input type="date" name="dt" placeholder="Date" required>
                <br>

                <button>Submit</button>
            </div>
        </form>

        </div>

        <div id="Profile" class="tabcontent">

            <h3>Paris</h3>
            <p>Paris is the capital of France.</p> 
        </div>






        <div class="header page-header--index">
            <header class="page-header page-header--index">
                <div class="page-header__inner">


                    <div class="page-header__title">
                        <a href="#">Security System</a>
                    </div>





                    <nav class="page-header__nav">
                        <ul class="sitenav">

                            <li class="sitenav-item">

                            </li> <li class="sitenav-item">

                            </li>  <li class="sitenav-item">

                            </li>  <li class="sitenav-item">

                            </li>
                            <li class="sitenav-item">
                                <h1> Security System</h1>
                            </li>



                            <li class="sitenav-item">

                            </li>
                            <li class="sitenav-item" style="position: fixed;right: 20px">
                                Name</li>
                        </ul>
                    </nav>
                </div>
            </header>
        </div>


        <script>
            function openCity(evt, tabName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(tabName).style.display = "block";
                evt.currentTarget.className += " active";
            }

// Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();

            var open = false;
            var speed = 200;
            function toggle_lng_menu() {
                if (open) {
                    $('#lng_open').slideUp(speed);
                    $('.header').removeClass('is-expanded');
                } else {
                    $('#lng_open').slideDown(speed);
                    $('.header').addClass('is-expanded');
                }
                open = !open;
            }

            function toggle_menu() {
                $('.page-header__drawer').toggleClass('is-visible');
            }

            function toggle_search() {
                $('.page-subheader--search').slideToggle();
            }
         




        </script>
        <%
            }
        %>
    </body>
</html>
