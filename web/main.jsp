<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: d
  Date: 2017/6/26
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="jquery/jquery-3.2.1.min.js"> </script>
    <link rel="stylesheet" href="csss/gg.css"/>
    <title>Title</title>
    <script type="text/javascript" src="jquery/main.js"></script>
</head>
<body>
<div id="head" align="center" style="font-size: 40px">欢&nbsp;迎&nbsp;使&nbsp;用&nbsp;本&nbsp;系&nbsp;统
    <div id="menu">
        <ul class="nav">
            <li><a href="#"  onclick="chaxun()">查询</a></li>
            <li><a href="#"  onclick="insert()">职员录入</a></li>
            <li><a href="#" onclick="insert()">大二</a></li>
            <li><a href="#" onclick="insert()">大三</a></li>
            <li><a href="#" onclick="insert()">大四</a></li>
            <li><a href="#" onclick="insert()">大五</a></li>
        </ul>
    </div>
</div>
<div id="content" >
    <div id ="Left">
        <button onclick='fanhui()' value='' id="back">返回</button><br>
        <select onchange="xuanze(this) " style="height: 30px;width: 180px">
            <option value=" ">
                --请选择部门--
            </option>
            <s:iterator value="comList" var="com" >
                <option value=${com.cno} >
                        ${com.cname}
                </option>
            </s:iterator>
        </select>
    </div>

<div id="message">

 <%--   <button onclick=" insert()" value="" id="insert" style="height:40px;width:200px;">插入员工</button>--%>

<%--    <button onclick=" chaxun()" value="" id="cha"style="height:40px;width:200px;" >查询员工</button><br/>--%>

    <iframe src="" width="450px" height="350px" frameborder="0" name="posthere" id="ifr"></iframe>
</div>
    <div id="right">     <a href="index.jsp" target="_parent" >返回首页</a> </div>
</div>


<div id="foot" >CopyRight  @王者荣耀</div>
</body>
</html>
