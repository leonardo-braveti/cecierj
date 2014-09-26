<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Testando aplicativo</title>
    </head>
    <body>
        <g:form controller="teste1" action="save">
            <label>First Name: </label>
            <g:textField name="firstName"/><br/>

            <label>Last Name: </label>
            <g:textField name="lastName"/><br/>

            <label>Age: </label>
            <g:textField name="age"/><br/>

            <g:actionSubmit value="Save"/>
        </g:form>
        
        
    </body>
</html>
