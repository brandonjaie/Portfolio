<%-- 
    Document   : navbarFrag
    Created on : May 10, 2016, 3:46:53 PM
    Author     : Brandon
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<div class="container">
    <div class="content">
        <img src="${pageContext.request.contextPath}/img/trees.png" 
             alt="tree_logo" 
             class="trees"
             align="left">
        <h2>Kobold Camp</h2>
    </div>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand">Equipment Rental</div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">                   
                    <!--render navbar links based on roles-->
                    <li class="${pageContext.request.requestURI eq 
                                 pageContext.request.contextPath.concat('/') ? 'active' : 'none'}">
                        <a href="${pageContext.request.contextPath}/home">Home</a></li>
                    <li class="${pageContext.request.requestURI eq pageContext.request.contextPath.concat('/rentals.jsp') ? 'active' : 'none'}"><a href="${pageContext.request.contextPath}/rentals">Rentals</a></li>
                        <sec:authorize access="hasRole('ROLE_EMPLOYEE')">
                        <li class="${pageContext.request.requestURI eq pageContext.request.contextPath.concat('/assets.jsp') ? 'active' : 'none'}"><a href="${pageContext.request.contextPath}/assets">Assets</a></li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_EMPLOYEE')">
                        <li class="${pageContext.request.requestURI eq pageContext.request.contextPath.concat('/members.jsp') ? 'active' : 'none'}"><a href="${pageContext.request.contextPath}/members">Members</a></li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <li class="${pageContext.request.requestURI eq pageContext.request.contextPath.concat('/admin.jsp') ? 'active' : 'none'}"><a href="${pageContext.request.contextPath}/admin">Admin</a></li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_USER')">
                        <li class="${pageContext.request.requestURI eq pageContext.request.contextPath.concat('/profile.jsp') ? 'active' : 'none'}"><a href="${pageContext.request.contextPath}/profile">Profile</a></li>
                        </sec:authorize>
                </ul>
                <sec:authorize access="isAnonymous()">
                    <form id="logInForm" class="signin navbar-form navbar-right" 
                          method="post" 
                          action="j_spring_security_check">
                        <div class="form-group">
                            <input type="text" 
                                   id="username_or_email" 
                                   name="j_username" 
                                   class="form-control" 
                                   placeholder="username">
                        </div>
                        <div class="form-group">
                            <input type="password" 
                                   id="password" 
                                   name="j_password" 
                                   class="form-control" 
                                   placeholder="password">
                        </div>
                        <button  id="logIn" name="commit" type="submit" class="btn btn-success">Login</button>
                    </form>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <div class="signout navbar-form navbar-right">
                        <button class="btn principal">
                            <sec:authentication property="principal.username"/>
                        </button>
                        <a href="${pageContext.request.contextPath}/j_spring_security_logout"> 
                            <button type="submit" id="logOut" class="btn btn-danger navbar-btn gradient">Log Out</button>
                        </a>
                    </div>
                </sec:authorize>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>