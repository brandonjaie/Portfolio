<%-- 
    Document   : home
    Created on : Nov 5, 2016, 7:22:51 PM
    Author     : Brandon
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DVD Library</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/dvdlogo1.png">
    </head>
    <body>
        <div class="container-fluid">
            <div class="content">
                <img src="${pageContext.request.contextPath}/img/dvdlogo1.png" 
                     alt="dvd_logo" 
                     style="padding-right: 5px" 
                     height="30" 
                     width="35" 
                     align="left">
                <h2>DVD Library</h2>
            </div>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="navbar-brand" 
                             style="pointer-events: none; ">DVD Library</div>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav"> 
                            <li role="presentation" class="active">
                                <a href="${pageContext.request.contextPath}/home">Home</a>
                            </li>
                            <li role="presentation">
                                <a href="${pageContext.request.contextPath}/rest">REST</a>
                            </li>
                            <li role="presentation">
                                <a href="${pageContext.request.contextPath}/restmodal">REST (Modal)</a>
                            </li>
                            <li role="presentation">
                                <a href="${pageContext.request.contextPath}/displayDVDsNoAjax">No Ajax</a>
                            </li>
                            <li role="presentation">
                                <a href="${pageContext.request.contextPath}/search">Search</a>
                            </li>
                            <li role="presentation">
                                <a href="${pageContext.request.contextPath}/stats">Stats</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container-fluid" style="margin: 0px 10px;">
            <div class="row">
                <div class="col-md-6" style="padding: 20px">

                    <h4 class="hidden-xs">About DVD Library</h4>
                    <p class="hidden-xs">DVD Library allows a user to manage a personal "DVD Library" by adding, editing, deleting, and searching DVDs. </p>
                    <div class="row">
                        <div class="col-sm-12">
                            <h5>DVD Library Info</h5>
                            <p>DVD Library is a Java Web Application developed using Agile Software Development techniques, and built utilizing Spring MVC, Spring JDBC, Prepared SQL Statements, REST, J-Unit Testing, JSPs, JSTL, JSP Expression Language, HTML, CSS, Bootstrap, Responsive Design, Javascript, JQuery, AJAX, and JSON</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6" style="padding-top: 50px">
                    <img class="img img-responsive center-block" src="${pageContext.request.contextPath}/img/dvdlogo.png" height="300" width="300">
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div> 
        <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    </body>
</html>


