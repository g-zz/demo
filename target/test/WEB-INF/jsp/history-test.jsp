<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>历史申请管理</title>
    <link type="text/css" href="../css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link type="text/css" href="../css/bootstrap-table.min.css" rel="stylesheet">
    <link type="text/css" href="../css/bootstrap-dialog.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">测算管理</h4>
        </div>
        <div class="panel-body">
            <form class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-4">
                        <label class="col-md-4 control-label" for="testType">客户类型</label>
                        <div class="col-md-8">
                            <select class="form-control" name="testType" id="testType">
                                <option value="">全部</option>
                                <option value="01">对公客户</option>
                                <option value="02">个人客户</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label class="col-md-4 control-label" for="custCode">客户号</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="custCode" name="custCode">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label class="col-md-4 control-label" for="custName">客户名称</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="custName" name="custName">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-4">
                        <label class="col-md-4 control-label" for="custOrg">组织机构代码</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="custOrg" name="custOrg">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label class="col-md-4 control-label" for="testOrg">客户所属网点</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="testOrg" name="testOrg">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label class="col-md-4 control-label" for="testOr">测算人员</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="testOr" name="testOr">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-4">
                        <label class="col-md-4 control-label" for="crtTmStart">测算开始日期</label>
                        <div class="col-md-8">
                            <div class="input-group date" id="crtTmStartDiv">
                                <input type="text" class="form-control" id="crtTmStart">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label class="col-md-4 control-label" for="crtTmEnd">测算结束日期</label>
                        <div class="col-md-8">
                            <div class="input-group date" id="crtTmEndDiv">
                                <input type="text" class="form-control" id="crtTmEnd">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label class="col-md-4 control-label" for="uptTm">更新日期</label>
                        <div class="col-md-8">
                            <div class="input-group date" id="uptTmDiv">
                                <input type="text" class="form-control" id="uptTm">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-4">
                        <label class="col-md-4 control-label" for="sta">状态</label>
                        <div class="col-md-8">
                            <select class="form-control" name="sta" id="sta">
                                <option value="">全部</option>
                                <option value="01">未申请</option>
                                <option value="02">已申请</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-4"></div>
                </div>
                <div class="form-group">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="col-md-6">
                            <button class="btn btn-info btn-block" id="testQuery">查询</button>
                        </div>
                        <div class="col-md-6">
                            <button type="reset" class="btn btn-default btn-block" id="testReset">重置</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div id="toolbar">
        <button class="btn btn-info" id="addPublicTest">新增对公测算</button>
        <button class="btn btn-info" id="addSelfTest">新增个人测算</button>
        <button class="btn btn-info" id="testView">查看测算明细</button>
        <button class="btn btn-default" id="testDelete">删除</button>
    </div>
    <table id="testTable"
           data-classes="table table-hover table-striped table-bordered nowrap pointer"  <%--在 <tbody> 内的任一行启用鼠标悬停状态，隔行变色（在 <tbody> 内添加斑马线形式的条纹），为所有表格的单元格添加边框--%>
           data-side-pagination="server"<%--设置在哪里进行分页，可选值为 'client' 或者 'server'。设置 'server'时，必须设置 服务器数据地址（url）或者重写ajax方法--%>
           data-url="queryTest"
           data-toolbar="#toolbar"
           data-click-to-select="true"<%--设置true 将在点击行时，自动选择rediobox 和 checkbox--%>
           data-search="true"
           data-show-refresh="true"
           data-show-columns="true"
           data-show-export="true"
    <%--date-page-number="1"--%>
    <%--date-page-size="3"--%>
           data-query-params-type="not-limit"  <%--limit和offset转变为pagenumber和pagesize--%>
           data-page-list="[5,10,20,50]"
           data-pagination="true"<%--设置为 true 会在表格底部显示分页条--%>>
        <thead>

        <tr>
            <th data-checkbox="true"></th>
            <%--th加粗--%>
            <th data-field="testNumber" data-formatter="numberFormatter">序号</th>
            <th data-field="id">ID</th>
            <th data-field="fxpTestDh">测算流水号</th>
            <th data-field="crtTm">测算日期</th>
            <th data-field="uptTm">更新日期</th>
            <th data-field="testOr">测算人</th>
            <th data-field="testType">客户类型</th>
            <th data-field="testOrg">所属网点</th>
            <th data-field="custCode">客户号</th>
            <th data-field="custName">客户名称</th>
            <th data-field="custOrg">组织结构代码</th>
            <th data-field="mergeProdName">产品</th>
            <th data-field="oneTEva">EVA(万元)</th>
            <th data-field="oneTRaroc">RAROC(%)</th>
            <th data-field="sta">状态</th>
        </tr>
        </thead>
    </table>
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
