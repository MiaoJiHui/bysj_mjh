<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>导出Excel</title>

<script type="text/javascript">

    function test(){

       document.getElementById("tableInfo").value=document.getElementById("table").innerHTML;

    }

</script>

<style>

    body{font-family:宋体;font-size:11pt}

</style>

</head>

<body>

<form action="<%=request.getContextPath()%>/testSave" method="post">

    <span id="table">

    <table bgcolor="#EEECF2" bordercolor="#A3B2CC" border="1" cellspacing="0">

       <tr><th>学号</th><th>姓名</th><th>科目</th><th>分数</th></tr>

       <tr><td>10001</td><td>赵二</td><td>高数</td><td>82</td></tr>

       <tr><td>10002</td><td>张三</td><td>高数</td><td>94</td></tr>

       <tr><td>10001</td><td>赵二</td><td>线数</td><td>77</td></tr>

       <tr><td>10002</td><td>张三</td><td>线数</td><td>61</td></tr>

    </table>

    </span><br/>

    <input type="submit" name="Excel" value="导出表格" onclick="test()"/>

    <input type="hidden" id="tableInfo" name="tableInfo" value=""/>

</form>

</body>

</html>