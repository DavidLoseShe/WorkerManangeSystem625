<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: d
  Date: 2017/6/11
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <script src="jquery/jquery-3.2.1.min.js"> </script>
  <link rel="stylesheet" href="csss/gg.css"/>
  <title>test</title>
</head>
<body>
<div id="head"></div>
<div id="content" align="center">
<form action="Student.action" method="post">
  部门编号:<input type="text" name="username" value="${username}" />
  <input type="submit">
  <p id="message"  ></p><br/>

</form>
<table>

       <s:iterator value="list" id="user">
         <tr >
             <td><s:property value="wno" /></td>
             <td><s:a href="Worker.action?Wno=%{wno}" ><s:property value="wname" /></s:a></td>
             <td>所在部门<s:a href="Student.action?username=%{cno}"><s:property value="cno"/> </s:a></td>
        </tr>
      </s:iterator>
</table>
<s:property value="worker.wno"/>
<s:property value="worker.wname"/>
<s:property value="worker.wsex"/>
<s:property value="worker.wold"/>
<s:property value="worker.waddress"/>
<s:property value="worker.wschool"/>
</div>
<div id="foot"></div>
</body>
</html>