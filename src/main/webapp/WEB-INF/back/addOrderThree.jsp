<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>添加订单</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="/../<%=this.getServletContext().getContextPath()%>/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="/../<%=this.getServletContext().getContextPath()%>/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="http://cdn.bootcss.com/echarts/3.3.2/echarts.min.js"></script>
    <link rel="stylesheet" href="/../<%=this.getServletContext().getContextPath()%>/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="/../<%=this.getServletContext().getContextPath()%>/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="/../<%=this.getServletContext().getContextPath()%>/assets/css/app.css">
    <script src="/../<%=this.getServletContext().getContextPath()%>/js/jquery.min.js"></script>

</head>

<body data-type="widgets">
<script src="assets/js/theme.js"></script>
<div class="am-g tpl-g">
    <!-- 头部 -->
    <header>
        <!-- logo -->
        <div class="am-fl tpl-header-logo">
            <a href="javascript:;"><img src="images/logo.png" alt=""></a>
        </div>
        <!-- 右侧内容 -->
        <div class="tpl-header-fluid">
            <!-- 侧边切换 -->
            <div class="am-fl tpl-header-switch-button am-icon-list">
                    <span>

                </span>
            </div>
        </div>

    </header>

    <!-- 侧边导航栏 -->
    <div class="left-sidebar">


        <!-- 菜单 -->
        <ul class="sidebar-nav">

            <li class="sidebar-nav-link">
                <a href="customerOrderInfo">
                    <i class="am-icon-home sidebar-nav-link-logo"></i> 订单列表
                </a>
            </li>
            <li class="sidebar-nav-link">
                <a href="addOrderIndex">
                    <i class="am-icon-table sidebar-nav-link-logo"></i> 添加订单
                </a>
            </li>
        </ul>
    </div>

    <!-- 风格切换 -->
    <div class="tpl-skiner">
        <div class="tpl-skiner-toggle am-icon-cog">
        </div>
        <div class="tpl-skiner-content">
            <div class="tpl-skiner-content-title">
                选择主题
            </div>
            <div class="tpl-skiner-content-bar">
                <span class="skiner-color skiner-white" data-color="theme-white"></span>
                <span class="skiner-color skiner-black" data-color="theme-black"></span>
            </div>
        </div>
    </div>

    <!-- 内容区域 -->
    <div class="tpl-content-wrapper">
        <div class="row-content am-cf">
            <div class="widget am-cf">
                <h1 style="text-align: center">客户信息</h1>
                <div class="row" style="margin-bottom: 100px;">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <form class="am-form-inline" role="form">
                            <label class="am-form-label" >客户名称 : </label>
                            <div class="am-form-group am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                <input type="text" id="customerName" class="am-form-field" placeholder="客户名称">
                            </div>
                            <label class="am-form-label" >客户电话 : </label>
                            <div class="am-form-group am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                <input type="text" id="customerPhone" class="am-form-field" placeholder="客户电话">
                            </div>
                            <div class="am-form-group tpl-table-list-select">
                                <label for="community_select" >小区: </label>
                                <div class="am-form-group am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                    <input type="text" id="community_select" class="am-form-field" placeholder="小区名称">
                                </div>
                            </div>
                            <label class="am-form-label" >门牌号 : </label>
                            <div class="am-form-group am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                <input type="text" id="hourseNumber" class="am-form-field" placeholder="门牌号">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                    <div class="widget am-cf">
                        <div class="widget-head am-cf">
                            <div class="widget-title  am-cf">新增订单</div>
                        </div>
                        <div class="widget-body  am-fr">
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
                                <div class="am-form-group">
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button type="button" class="am-btn am-btn-default am-btn-secondary" style="margin-left: 20px;" onclick="saveOrder()"><span class="am-icon-save"></span> 保存</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="am-u-sm-12">

                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black " id="example-r">
                                             <tr>
                                                 <td>
                                                     <textarea name="productInfo" id="productInfo" cols="120" rows="10"></textarea>
                                                 </td>
                                             </tr>

                                    </table>
                                    <form class="am-form-inline" role="form">
                                        <label class="am-form-label" >总金额 : </label>
                                        <div class="am-form-group am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                            <input type="text" id="allMoney" class="am-form-field" placeholder="总金额">
                                        </div>
                                        <label class="am-form-label" >已付金额 : </label>
                                        <div class="am-form-group am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                            <input type="text" id="payedMoney" class="am-form-field" placeholder="已付金额">
                                        </div>
                                        <div class="am-form-group tpl-table-list-select">
                                            <label for="community_select" >剩余金额: </label>
                                            <div class="am-form-group am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                                <input type="text" id="lastMoney" class="am-form-field" placeholder="剩余金额">
                                            </div>
                                        </div>
                                        <div class="am-form-group tpl-table-list-select">
                                            <label for="state_select" >安装状态: </label>
                                            <div class="am-form-group tpl-table-list-select">
                                                <select id="state_select" data-am-selected="{btnSize: 'sm'}">
                                                    <option value="0">未安装</option>
                                                    <option value="1">已安装</option>
                                                </select>
                                            </div>
                                        </div>
                                    </form>

                                        <!-- more data -->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="my-modal-loading">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">正在添加订单,请稍等</div>
        <div class="am-modal-bd">
            <span class="am-icon-spinner am-icon-spin"></span>
        </div>
    </div>
</div>

<script src="http://cdn.bootcss.com/amazeui/2.7.2/js/amazeui.min.js"></script>
<script src="/../<%=this.getServletContext().getContextPath()%>/assets/js/app.js"></script>
<script type="text/javascript">

    // 页面初始化加载
    $(function(){

    })

    // 产品下拉框改变时 需要改变型号下拉框
    function productChange(){
        var id = $("#productId option:selected").val();

        $.ajax({
            type:"POST",
            data:{id:id},
            url:"queryModelByProductId",
            success:function (data) {
                var txt1 = "<option value='0'>选择型号</option>";
                $.each(data,function (i,model) {
                    txt1 += "<option value='"+model.modelId+"'>"+model.modelName+"</option>";
                })
                $("#modelId").find("option").remove();
                $("#modelId").append(txt1);
            }
        });
    }


    //删除该行订单
    function deleteOrder(obj){
        obj.parent().parent().parent().remove();
    }

    //新增订单
    function addOrder(){
        $("#saveOrUpdate").val("save");
        $("#productId option:first").prop("selected","selected");
        $("#modelId option:first").prop("selected","selected");
        $("#productCount").val("");
        openModel();
    }

    //修改订单
    function updateOrder(v1,v2,v3,obj) {
        $("#saveOrUpdate").val("update");
        $("#rowNum").val(obj);
        openModel(obj);
        $("#productId").val(v1);
        $("#modelId").val(v2);
        $("#productCount").val(v3);
    }

    //打开选择产品,型号,数量 模态框
    function openModel(obj){
        var v1,v2,v3;
        $('#my-prompt').modal({
            relatedTarget: this,
            onConfirm: function(e) {
                var productText = $("#productId option:selected").text();
                var modelText = $("#modelId option:selected").text();
                var productCount = $("#productCount").val();
                var rowNum = $("tbody").find("tr").length;
                var txt1 = "<tr class='gradeX'  id= '"+rowNum+"' >";
                $.each(e.data,function (i,v) {
                    if(i == 0){
                        v1 = v;
                        txt1 +=  "<td><input style='border:0px;' class='am-form-field' readonly='true' data-value='"+v+"'  type='text' value='"+productText+"'/></td>";
                        $("#vone").attr("value",productText);
                        $("#vone").attr("data-value",v);
                    }else if(i == 1){
                        v2 = v;
                        txt1 +=  "<td><input style='border:0px;' class='am-form-field' readonly='true' data-value='"+v+"'  type='text' value='"+modelText+"'/></td>";
                        $("#vtwo").attr("value",modelText);
                        $("#vtwo").attr("data-value",v);
                    }else if(i == 2){
                        v3 = v;
                        txt1 +=  "<td><input style='border:0px;' class='am-form-field' readonly='true' data-value='"+v+"'  type='text' value='"+v+"'/></td>";
                        $("#vthree").attr("value",v);
                        $("#vthree").attr("data-value",v);
                    }
                });
                var saveOrUpdate = $("#saveOrUpdate").val();
                txt1 += "<td><div class='tpl-table-black-operation'><a href='javascript:;' onclick=updateOrder('"+v1+"','"+v2+"','"+v3+"','"+rowNum+"',)><i class='am-icon-pencil'></i>修改</a>&nbsp;<a href='javascript:;' class='tpl-table-black-operation-del' onclick='deleteOrder($(this))'><i class='am-icon-trash'></i> 删除 </a></div></td>";
                if(saveOrUpdate == 'save'){
                    $("tbody").append(txt1);
                }else{
                    var rowNum = $("#rowNum").val();
                    $("#"+rowNum).find("input:eq(0)").attr("value",$("#vone").attr("value"));
                    $("#"+rowNum).find("input:eq(1)").attr("value",$("#vtwo").attr("value"));
                    $("#"+rowNum).find("input:eq(2)").attr("value",$("#vthree").attr("value"));
                    $("#"+rowNum).find("input:eq(0)").attr("data-value",$("#vone").attr("data-value"));
                    $("#"+rowNum).find("input:eq(1)").attr("data-value",$("#vtwo").attr("data-value"));
                    $("#"+rowNum).find("input:eq(2)").attr("data-value",$("#vthree").attr("data-value"));
                }
            },
            onCancel: function(e) {
                $("#saveOrUpdate").val("save");
            }
        });
    }

    //新增订单
    function  saveOrder(){

        var customerName = $("#customerName").val();
        var customerPhone =$("#customerPhone").val();
        var communityId = $("#community_select").val();
        var hourseNumber = $("#hourseNumber").val();
        var productInfo =  $("#productInfo").val();

        if(customerName.length == 0){
            alert("客户姓名不能为空");
            return;
        }
        if(customerPhone.length == 0){
            alert("客户手机不能为空");
            return;
        }
        if(communityId.length == 0){
            alert("小区名称不能为空");
        }
        if(hourseNumber.length == 0 ){
            alert("门牌号不能为空");
        }
        if(productInfo.length == 0){
            alert("产品信息不能为空");
        }

        var orderAllInfo = {
            productInfo:productInfo,
            customerName:customerName,
            communityName:communityId,
            customerPhone:customerPhone,
            hourseNumber:hourseNumber
        }
        $.ajax({
            type:"POST",
            contentType : 'application/json; charset=UTF-8',
            url:"addOrderDetails",
            data : JSON.stringify(orderAllInfo),
            beforeSend :function(){
                var $modal = $('#my-modal-loading');
                $modal.modal();
            },
            success:function(data){
                if(data = 'success'){
                    var $modal = $('#my-modal-loading');
                    $modal.modal('close');
                    alert("添加订单成功");
                    $("#customerName").val("");
                    $("#customerPhone").val("");
                    $("#community_select").val("");
                    $("#hourseNumber").val("");
                    $("#productInfo").val("");
                }
            }
        })

    }



</script>
</body>

</html>