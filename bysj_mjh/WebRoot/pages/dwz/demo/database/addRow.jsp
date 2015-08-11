<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>修改对象原型</title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        function add() {
            var table = document.getElementById("table");
            var tr = table.insertRow(-1);
            var td = tr.insertCell(-1);
            td.innerHTML = "B";
        }
</script>
 </head>
 <body>
 <input type="button" value="add" onclick="add()"/>
 <table id="table" border="1" style="width:200px;height:30px;">
<tr>
<td>a</td><td>b</td><td>c</td><td>d</td>
</tr>
</table>
 </body>
</html>