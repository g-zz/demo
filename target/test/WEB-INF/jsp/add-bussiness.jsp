<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>增加业务</title>
    <link type="text/css" href="../css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link type="text/css" href="../css/bootstrap-table.min.css" rel="stylesheet">
    <link type="text/css" href="../css/bootstrap-dialog.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="col-md-5">
        <form class="form-horizontal">
            <div class="form-group">
                <label class="col-md-4 control-label" for="custNameAdd">客户名称</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="custNameAdd">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-4" for="prodNameAdd">产品名称</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="prodNameAdd">
                </div>
            </div>
            <div class="form-group">
                <label for="curCodeAdd" class="control-label col-md-4">币种</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="curCodeAdd">
                </div>
            </div>
            <div class="form-group">
                <label for="amtBusAdd" class="control-label col-md-4">业务金额</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="amtBusAdd">
                </div>
            </div>
            <div class="form-group">
                <label for="tmLmt" class="control-label col-md-4">期限</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="tmLmt">
                </div>
            </div>
            <div class="form-group">
                <label for="tmLmtUt" class="control-label col-md-4">期限单位</label>
                <div class="col-md-8">
                    <select class="form-control" name="tmLmtUt" id="tmLmtUt">
                        <option value="01">年</option>
                        <option value="02">月</option>
                        <option value="03">日</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="startDt" class="control-label col-md-4">起息日</label>
                <div class="col-md-8">
                    <div class="input-group date" id="startDtDiv">
                        <input type="text" class="form-control" id="startDt">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="endDt" class="control-label col-md-4">到期日</label>
                <div class="col-md-8">
                    <div class="input-group date" id="endDtDiv">
                        <input type="text" class="form-control" id="endDt">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="rateType" class="control-label col-md-4">利率类型</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="rateType">
                </div>
            </div>
            <div class="form-group">
                <label for="rpWay" class="control-label col-md-4">还款方式</label>
                <div class="col-md-8">
                    <select name="rpWay" id="rpWay" class="form-control">
                        <option value="01">一次还本</option>
                        <option value="02">等额本金</option>
                        <option value="03">等额本息</option>
                        <option value="04">其他</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="reFxpCyc" class="control-label col-md-4">重订价周期</label>
                <div class="col-md-8">
                    <select name="reFxpCyc" id="reFxpCyc" class="form-control">
                        <option value="01">按日浮动</option>
                        <option value="01">按月浮动</option>
                        <option value="01">按年浮动</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="rateBs" class="control-label col-md-4">基准利率</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="ratebs">
                </div>
            </div>
            <div class="form-group">
                <label for="rateChgWay" class="control-label col-md-4">利率浮动方式</label>
                <div class="col-md-8">
                    <select name="ratechgway" id="ratechgway" class="form-control">
                        <option value="01">加减点(BP)</option>
                        <option value="02">不浮动</option>
                        <option value="03">浮动幅度(%)</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="rateChg" class="control-label col-md-4">利率浮动</label>
                <div class="col-md-8">
                    <div class="input-group">
                        <input type="text" class="form-control" id="rateChg">
                        <span class="input-group-addon">%</span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="rateExec" class="control-label col-md-4">执行利率</label>
                <div class="col-md-8">
                    <input type="text" class="form-control" id="rateexec">
                </div>
            </div>
        </form>
    </div>
    <div class="col-md-7">
        <div class="row">
            <div class="col-md-12">
                <div id="toolbar">
                    <button class="btn btn-info">新增</button>
                    <button class="btn btn-danger">删除</button>
                </div>
                <table id="addRisk"
                       data-classes="table table-hover table-striped"
                       data-toolbar="#toolbar"
                       data-field-id="true">
                    <thead>
                    <tr>
                        <th data-checkbox="true"></th>
                        <th data-field="id">风险缓释工具</th>
                        <th data-field="id1">金额</th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="../js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-dialog.min.js"></script>
<script type="text/javascript">
    $(function () {
        //日期控件
        var option = {
            language: "zh-CN",
            format: 'yyyy-mm-dd',
            autoclose: true,
            minView: 2
        }
        $('#crtTmStartDiv').datetimepicker(option);
        $('#crtTmEndDiv').datetimepicker(option);
        $('#uptTmDiv').datetimepicker(option);

        //加载界面时查询
        $('#testTable').bootstrapTable({
            queryParams: function (params) {
                params.testType = $('#testType').val();
                params.custCode = $('#custCode').val();
                params.custName = $('#custName').val();
                params.custOrg = $('#custOrg').val();
                params.testOrg = $('#testOrg').val();
                params.testOr = $('#testOr').val();
                params.crtTmStart = $('#crtTmStart').val();
                params.crtTmEnd = $('#crtTmEnd').val();
                params.uptTm = $('#uptTm').val();
                params.sta = $('#sta').val();
                return params;
            }
        });
        //查询按钮
        $('#testQuery').on('click', function (e) {
            e.preventDefault();
            $('#testTable').bootstrapTable('refresh', {query: {pageNumber: 1}});
        });

        // 删除按钮
        $('#testDelete').on('click', function () {
            var selectRows = $('#testTable').bootstrapTable('getSelections');
            if (selectRows.length == 0) {
//                BootstrapDialog.alert("请选择要删除的数据");
                BootstrapDialog.alert({
                    title: '信息',
                    message: '请选择要删除的数据'
                });
                return;
            }
            ;
            BootstrapDialog.confirm('是否删除数据', function (result) {
                if (result) {
                    var ids = '';
                    for (var i = 0; i < selectRows.length; i++) {
                        ids = ids + '&ids=' + selectRows[i].id;
                    }
                    ids.sub(1);
                    $.post('testDelete', ids, function (data) {
                        if (data.result) {
                            if (data.success) {
                                BootstrapDialog.alert("成功删除数据");
                                $('#testTable').bootstrapTable('refresh', {query: {pageNumber: 1}});
                            }
                            BootstrapDialog.alert("删除数据失败");
                        }
                        BootstrapDialog.alert("已申请的数据不能删除");
                    })
                }
            });

        });
    })
    function numberFormatter(value, row, index) {
        return index + 1;
    }

</script>
</body>
</html>
