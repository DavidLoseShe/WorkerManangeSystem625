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
    <script >
       $(document).ready(function (){
    	   var coms= new Array();
    	    
    	  
       });
    </script>

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
    <table width="400">
        <tr><td>编号</td><td>姓名</td><td>年龄</td><td>sex</td><td>地址</td><td>学校</td></tr>
        <tr>
            <td>
    <s:property value="worker.wno"/></td>
            <td>
    <s:property value="worker.wname"/></td>
            <td>
    <s:property value="worker.wsex"/></td>
            <td>
    <s:property value="worker.wold"/></td>
            <td>
    <s:property value="worker.waddress"/></td>
            <td>
    <s:property value="worker.wschool"/></td>
        </tr>
    </table>
        <a href="#" onClick="javascript :history.back(-1);">返回上一页</a>
</div>
<div id="foot"></div>
</body>
</html>