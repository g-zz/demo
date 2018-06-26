<%--
  Created by IntelliJ IDEA.
  User: gao
  Date: 2017/7/10
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>历史测算管理</title>
    <link type="text/css" href="../css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap-datetimepicker.min.js"></script>
    <%--<script src="http://code.jquery.com/jquery-latest.js"></script>--%>
    <%--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"--%>
    <%--integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>
    <%--<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"--%>
    <%--integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"--%>
    <%--crossorigin="anonymous"></script>--%>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class='col-sm-6'>
            <div class="form-group">
                <label>选择日期：</label>
                <!--指定 date标记-->
                <div class='input-group date' id='datetimepicker1'>
                    <input type='text' class="form-control"/>
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
                </div>
            </div>
        </div>
        <div class='col-sm-6'>
            <div class="form-group">
                <label>选择日期+时间：</label>
                <!--指定 date标记-->
                <div class='input-group date' id='datetimepicker2'>
                    <input type='text' class="form-control"/>
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
                </div>
            </div>
        </div>
    </div>


</div>

</body>

<script type="text/javascript">
    //    $(function () {
    //        $('#crtTmStart').datetimepicker({
    //            language: 'zh-CN',
    //            format: 'yyyy-mm-dd',
    //            autoclose: true
    //
    //        });
    //    });

    $(function () {
        $('#datetimepicker1').datetimepicker({
            format: 'YYYY-MM-DD'
        });
        $('#datetimepicker2').datetimepicker({
            format: 'YYYY-MM-DD hh:mm'
        });

        $('#crtTmStart').datetimepicker({
            format: 'yyyy-mm-dd'

        });
    });


</script>

</html>
