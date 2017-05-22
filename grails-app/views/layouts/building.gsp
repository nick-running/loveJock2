<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/17 0017
  Time: 23:07
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>

<body>
<g:layoutBody/>
<asset:javascript src="application.js"/>
<g:applyLayout name="footerLayout">
    <g:pageProperty name="page.footer"/>
</g:applyLayout>
</body>
</html>