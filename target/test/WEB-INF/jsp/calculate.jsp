<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>测算界面</title>
    <link type="text/css" href="../css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link type="text/css" href="../css/bootstrap-table.min.css" rel="stylesheet">
    <link type="text/css" href="../css/bootstrap-dialog.min.css" rel="stylesheet">
    <style>
        .panel-title-btn {
            color: #fff;
            text-decoration: underline;
        }
        .panel-title-btn:hover {
            color: #fff;
        }
    </style>
</head>
<body>
<form id="calculateForm">
    <div class="container-fluid">
        <div class="form-group">
            <button class="btn btn-success" id="toLaunch">发起定价申请</button>
            <button class="btn btn-info" id="saveTest">保存业务信息</button>
        </div>
        <div class="row text-center">
            <div class="col-md-3">
                <label>测算单号：${fxpTestDh}</label>
            </div>
            <div class="col-md-3">
                <label>测算日期：${crtTm}</label>
            </div>
            <div class="col-md-3">
                <label>测算人员：${testOr}</label>
            </div>
            <div class="col-md-3">
                <label>更新日期：${uptTm}</label>
            </div>
        </div>

        <div class="panel panel-primary">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <span class="glyphicon glyphicon-chevron-down"></span>
                    <a href="javascript:void(0)">客户基本信息</a>
                </h4>
            </div>
            <div class="panel-body">
                <div class="col-md-4 text-center">

                    <label for="credType">证件类型</label>
                    <select class="form-control text-center" name="credType" id="credType">
                        <option value="01">身份证</option>
                        <option value="02">其他</option>
                    </select>
                </div>
                <div class="col-md-4 text-center">
                    <label for="custCode">证件号码</label>
                    <input type="text" class="form-control text-center" id="custCode" name="custCode">
                </div>
                <div class="col-md-4 text-center">
                    <label for="custName">客户名称</label>
                    <input type="text" class="form-control text-center" id="custName" name="custName">
                </div>
            </div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading clearfix">
                <h4 class="panel-title pull-left">
                    <a href="javascript:void(0)" class="no-print"></a> 业务信息
                </h4>
                <div class="pull-right">
                    <a href="javascript:" class="panel-title-btn">增加资产业务</a>
                </div>
            </div>
            <div class="panel-body"></div>
        </div>
        <div class="row">
            <div class="col-md-5 col-md-offset-10">
                <div class="col-md-2 ">
                    <button class="btn btn-info" id="addBusiness">增加业务</button>
                </div>
                <div class="col-md-2 ">
                    <button class="btn btn-info">定价测算</button>
                </div>
            </div>

        </div>
        <div style="padding-top:30px">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title">测算结果</h4>
                </div>
                <div class="panel-body">
                    <table class="table table-bordered text-center">
                        <thead>
                        <tr>
                            <th></th>
                            <th class="text-center" colspan="5">全业务周期</th>
                            <th class="text-center" colspan="5">当年</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>类别</td>
                            <td>营业净收入</td>
                            <td>EVA</td>
                            <td>RAROC</td>
                            <td>ROA</td>
                            <td>利润率</td>
                            <td>营业净收入</td>
                            <td>EVA</td>
                            <td>RAROC</td>
                            <td>ROA</td>
                            <td>利润率</td>
                        </tr>

                        <tr>
                            <td>新增</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td>存量</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</form>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="../js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-dialog.min.js"></script>
<script type="text/javascript">
    $('#addBusiness').on('click', function (e) {
        e.preventDefault();
        BootstrapDialog.show({
            title: '增加业务',
            size: BootstrapDialog.SIZE_NORMAL,
            message: $('<div></div>').load('addBussinessList')
        });
    });
</script>
</body>

</html>
