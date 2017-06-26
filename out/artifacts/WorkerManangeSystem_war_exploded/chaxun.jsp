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
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ifr").hide();
            $("select").hide();
        });
        function insert(){
        /*    $("#insert").hide();
            $("#ifr").hide();
            $("select").hide();*/
alert("敬请期待！待开发")
        }
        function chaxun(){
            $("#insert").hide();
            $("#cha").hide();
            $("select").show();
            $("#ifr").show();
        }
    </script>
</head>
<body>
<div id="head" align="center" style="font-size: 40px">欢&nbsp;迎&nbsp;使&nbsp;用&nbsp;本&nbsp;系&nbsp;统</div>
<div id="content" align="center">
    <br>
<select onchange="javascript:window.open('Student.action?username='+this.value,'posthere')">
    <option value=" ">
        --请选择部门--
    </option>
    <s:iterator value="comList" var="com" >
        <option  value=${com.cno}>
                ${com.cname}
        </option>
    </s:iterator>
</select>

    <button onclick=" insert()" value="" id="insert" style="height:40px;width:200px;">插入员工</button>
    <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>
    <br>
    <br>
    <button onclick=" chaxun()" value="" id="cha"style="height:40px;width:200px;" >查询员工</button><br/>
<iframe src="" width="450px" height="350px" frameborder="0" name="posthere" id="ifr"></iframe>
</div>


<div id="foot" align="center"><br><br>CopyRight @gh<br> @635宿舍</div>
</body>
</html>
