<%-- 
    Document   : newContactFormNoAjax
    Created on : Mar 29, 2016, 10:24:09 AM
    Author     : apprentice
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Address Book</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/addressbook.png">
    </head>
    <body>
        <div class="container-fluid">
            <div class="content">
                <img src="${pageContext.request.contextPath}/img/addressbook.png" 
                     alt="addressbook_logo" 
                     style="padding-right: 5px" 
                     height="30" 
                     width="35" 
                     align="left">
                <h2>Address Book</h2>
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
                             style="pointer-events: none; ">Address Book</div>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav"> 
                            <li role="presentation">
                                <a href="${pageContext.request.contextPath}/home">Home</a>
                            </li>
                            <li role="presentation">
                                <a href="${pageContext.request.contextPath}/rest">REST</a>
                            </li>
                            <li role="presentation">
                                <a href="${pageContext.request.contextPath}/restmodal">REST (Modal)</a>
                            </li>
                            <li role="presentation"class="active">
                                <a href="${pageContext.request.contextPath}/displayAddressesNoAjax">No Ajax</a>
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
            <h3>Edit Address
                <a href="displayAddressesNoAjax">
                    <button class="btn btn-primary btn-sm">Display Addresses</button>
                </a>
            </h3>
            <hr/>
            <sf:form class="form-horizontal" modelAttribute="addresses" role="form" action="editAddressNoAjax" method="POST">
                <div class="form-group">
                    <label for="add-first-name" class="col-md-4 control-label">First Name:</label>
                    <div class="col-md-8">
                        <sf:input type="text" class="form-control" id="add-first-name" path="firstName" placeholder="First Name"/>
                        <sf:errors path="firstName" cssClass="text-danger"></sf:errors>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-last-name" class="col-md-4 control-label">Last Name:</label>
                        <div class="col-md-8">
                        <sf:input type="text" class="form-control" id="add-last-name" path="lastName" placeholder="Last Name"/>
                        <sf:errors path="lastName" cssClass="text-danger"></sf:errors>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-street" class="col-md-4 control-label">Street:</label>
                        <div class="col-md-8">
                        <sf:input type="text" class="form-control" id="add-street" path="street" placeholder="Street"/>
                        <sf:errors path="street" cssClass="text-danger"></sf:errors>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="add-city" class="col-md-4 control-label">City:</label>
                        <div class="col-md-8">
                        <sf:input type="text" class="form-control" id="add-city" path="city" placeholder="City"/>
                        <sf:errors path="city" cssClass="text-danger"></sf:errors>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="add-state" class="col-md-4 control-label">State:</label>
                        <div class="col-md-8">
                        <sf:input type="text" class="form-control" id="add-state" path="state" placeholder="State"/>
                        <sf:errors path="state" cssClass="text-danger"></sf:errors>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="add-zip" class="col-md-4 control-label">Zip:</label>
                        <div class="col-md-8">
                        <sf:input type="text" class="form-control" id="add-zip" path="zip" placeholder="zip"/>
                        <sf:errors path="zip" cssClass="text-danger"></sf:errors>
                        <sf:hidden path="addressId"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-offset-4 col-md-8">
                        <button type="submit" id="edit-button" class="btn btn-primary">Edit Address</button>
                    </div>
                </div>
            </div>
        </sf:form>
        <jsp:include page="footer.jsp"/>
        <!-- #5: Placed at the end of the document so the pages load faster -->
        <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
