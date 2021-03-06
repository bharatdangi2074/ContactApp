<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page-Contact Application</title>
        <s:url var="url_css" value="/static/css/style.css"/>
        <link href="${url_css}" rel="stylesheet" type="text/css"/>
    </head>
    <s:url var="url_bh" value="/static/images/bh.jpg"/>
    <body background="${url_bh}">
        <table border="1" width="100%" align="center">
            <tr>
                <td height="80px">
                    <jsp:include page="include/header.jsp"/>
                </td>
            </tr>
            <tr>
                <td height="25px">
                    <jsp:include page="include/menu.jsp"/>
                </td>
            </tr>
            <tr>
                <td height="350px" valign="top">
                    <h3>User Login</h3>
                    <c:if test="${err!=null}">
                        <p class="error">${err}</p>

                    </c:if>

                    <c:if test="${param.act eq 'lo'}">
                        <p class="success">Logout Successfully! Thanks for using Contact Application</p>

                    </c:if>

                    <c:if test="${param.act eq 'reg'}">
                        <p class="success">New User Registered Successfully! Please Login</p>
                    </c:if>

                    <s:url var="url_login" value="/login/"/>
                    <f:form action="${url_login}" modelAttribute="command">
                        <table border="1">
                            <tr>
                                <td>Username</td>
                                <td><f:input path="loginName"/></td>
                            <tr/>
                            <tr>
                                <td>Password</td>
                                <td><f:password path="password"/></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    <button>Login</button>
                                    <br>
                                    <a href="#">New User Registration</a>
                                </td>
                            </tr>
                        </table>
                    </f:form>
                </td>
            </tr>
            <tr>
                <td height="25px">
                    <jsp:include page="include/footer.jsp"/>
                </td>
            </tr>
        </table>
    </body>
</html>
