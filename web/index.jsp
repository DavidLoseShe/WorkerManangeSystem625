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
  

  <title>test</title>
  <style type="text/css">
  table{
	border-collapse: collapse;
	border:none;
	text-align: center;
}
td{
	border: solid #000 1px;
}
a{
 text-decoration:none;
}
  </style>
</head>
<body>
<div id="head"></div>
<div id="content" align="center">
    <div>当前部门编号${username}</div>
<table width="400" border="0" cellspacing="1" cellpadding="0" >
    <tr ><td>工人编号</td><td>工人姓名</td><!-- <td>直属部门</td> --></tr>
       <s:iterator value="list" id="workers">
         <tr >
             <td><s:property value="wno" /></td>
             <td><s:a href="Worker.action?Wno=%{wno}"><s:property value="wname"  /></s:a></td>
           <%--   <td><s:a href="Student.action?username=%{cno}"><s:property value="cno"/> </s:a></td> --%>
        </tr>
      </s:iterator>
</table>
    <a href="first.jsp" target="_parent" >返回首页</a>
</div>
<div id="foot"></div>
</body>
</html>