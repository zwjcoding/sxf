<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>客户订单数据信息</title>
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
                <div class="row">



                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title  am-cf">客户信息列表</div>
                            </div>
                            <div class="widget-body  am-fr">
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
                                        <select id="community_select" data-am-selected="{btnSize: 'sm'}">
                                        </select>
                                    </div>
                                    <label class="am-form-label" >起始日期 : </label>
                                    <div class="am-form-group am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                        <input type="text" id="my-start" name="my-start" class="am-form-field" data-am-datepicker placeholder="订单日期">
                                        <input type="hidden" id="my-starttext" />
                                    </div>
                                    <label class="am-form-label" >终止日期 : </label>
                                    <div class="am-form-group am-input-group am-input-group-sm tpl-form-border-form cl-p" >
                                        <input type="text" id="my-end" name="my-end" class="am-form-field" data-am-datepicker placeholder="订单日期">
                                        <input type="hidden" id="my-endtext"/>
                                    </div>
                                    <div class="am-btn-group am-btn-group-xs" >
                                        <button type="button" class="am-btn am-btn-default am-btn-success" onclick="queryInfo()"><span class="am-icon-search"></span> 查询</button>
                                    </div>
                                </form>
                                <div class="am-u-sm-12" style="margin-top: 20px;">
                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black " id="example-r">
                                        <thead>
                                            <tr>
                                                <th>客户姓名</th>
                                                <th>客户电话</th>
                                                <th>所属小区</th>
                                                <th>门牌号</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody id="customers">

                                            <!-- more data -->
                                        </tbody>
                                    </table>
                                </div>
                                <div class="am-u-lg-12 am-cf">


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

    <!-- 查询日期 起始时间和截止时间弹出框提示信息 -->
    <div class="am-alert am-modal">
        <p></p>
    </div>

    <div class="am-modal am-modal-no-btn" tabindex="-1" id="orderInfoModel">
        <div class="am-modal-dialog"   style="overflow: scroll;width: 80%;height: 80%">
            <div class="am-modal-hd">订单详情
                <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
            </div>
            <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black " id="example-r">
                <thead>
                <tr>
                    <th style="text-align: center">产品名称</th>
                    <th style="text-align: center">产品型号</th>
                    <th style="text-align: center">订购数量</th>
                    <th style="text-align: center">下单时间</th>
                    <th style="text-align: center">安装状态</th>
                    <th style="text-align: center">缴费状态</th>
                    <th style="text-align: center">操作</th>
                </tr>
                </thead>
                <tbody id="ps">



                <!-- more data -->
                </tbody>
            </table>
        </div>
    </div>
    <script src="http://cdn.bootcss.com/amazeui/2.7.2/js/amazeui.min.js"></script>
    <script src="/../<%=this.getServletContext().getContextPath()%>/assets/js/amazeui.datatables.min.js"></script>
    <script src="/../<%=this.getServletContext().getContextPath()%>/assets/js/dataTables.responsive.min.js"></script>
    <script src="/../<%=this.getServletContext().getContextPath()%>/assets/js/app.js"></script>
</body>
    <script type="text/javascript">

        $(function(){
            var pageSize = 5;
            var pageNow  = 1;
            $.ajax({
                type:"POST",
                url:"queryAllCommunity",
                success:function (data) {
                    var txt1 = "<option value='0'>选择小区</option>";
                    $.each(data,function (i,product) {
                        txt1 += "<option value='"+product.communityId+"'>"+product.communityName+"</option>";
                    })
                    $("#community_select").append(txt1);
                }
            });
            queryInfo(pageNow,pageSize);


            var startDate = new Date(2014, 11, 20);
            var endDate = new Date(2014, 11, 25);
            var $alert = $('.my-alert');
            $('#my-start').datepicker().
            on('changeDate.datepicker.amui', function(event) {
                console.log(event);
                if (event.date.valueOf() > endDate.valueOf()) {
                    $alert.find('p').text('开始日期应小于结束日期！').alert();
                    $alert.alert();
                } else {
                    $alert.alert('close');
                    startDate = new Date(event.date);
                    $('#my-startDate').text($('#my-start').data('date'));
                }
                $(this).datepicker('close');
            });

            $('#my-end').datepicker().
            on('changeDate.datepicker.amui', function(event) {
                console.log(event);
                if (event.date.valueOf() < startDate.valueOf()) {
                    $alert.find('p').text('结束日期应大于开始日期！').end().show();

                    $alert.alert();
                } else {
                    $alert.hide();
                    endDate = new Date(event.date);
                    $('#my-endDate').text($('#my-end').data('date'));
                }
                $(this).datepicker('close');
            });

        });





        function  openModel(customerId,beginDate,endDate){
            var customerVO = {
                customerId:customerId,
                beginDate:beginDate,
                endDate:endDate
            }
            $.ajax({
                type:"POST",
                contentType : 'application/json; charset=UTF-8',
                url:"queryOrderDetails",
                data : JSON.stringify(customerVO),
                success:function(data){
                    var innerTxt = "";
                    $("#ps").html("");
                    if(data != null){
                        $.each(data,function (i,v) {
                            innerTxt += "<tr class='gradeX' id='"+v.orderDetailId+"'>";
                            innerTxt += "<td>"+v.productId+"</td>";
                            innerTxt += "<td>"+v.modelId+"</td>";
                            innerTxt += "<td>"+v.count+"</td>";
                            innerTxt += "<td>"+v.createOrderTime.substring(0,10)+"</td>";
                            innerTxt += "<td>待安装</td>";
                            innerTxt += "<td>总:2000押200待1800</td>";
                            innerTxt += "<td><div class='tpl-table-black-operation'><a href='javascript:;' class='js-modal-open'  onclick=deleteOrder('"+v.orderDetailId+"')><i class='am-icon-pencil' ></i>删除</a><a href='javascript:;' style='margin-left: 8px;' class='js-modal-open'  onclick=deleteOrder('\"+v.orderDetailId+\"')><i class='am-icon-pencil' ></i>已安装</a><div></td>";
                            innerTxt += "</tr>";
                        })
                    }else{
                        innerTxt +="<h1 style='text-align:center'></h1>"
                    }

                    $("#ps").append(innerTxt);
            }})
            var $modal = $('#orderInfoModel');
            $modal.modal({
                dimmer:true
            });
        }
        function jsonDateFormat(jsonDate) {//json日期格式转换为正常格式
            try {
                var date = new Date(parseInt(jsonDate.replace("/Date(", "").replace(")/", ""), 10));
                var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
                var day = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
                return date.getFullYear() + "-" + month + "-" + day;
            } catch (ex) {
                return "";
            }
        }

        function queryInfo(pageNow,pageSize){

            var customerName = $("#customerName").val();
            var customerPhone =$("#customerPhone").val();
            var communityId = $("#community_select").val();
            var beginDate = $("#my-start").val();
            var endDate = $("#my-end").val();
            var customerVO = {
                customerName:customerName,
                customerPhone:customerPhone,
                communityId:communityId,
                beginDate:beginDate,
                endDate:endDate,
                pageNow:pageNow,
                pageSize:pageSize
            }
            $.ajax({
                type:"POST",
                contentType : 'application/json; charset=UTF-8',
                url:"queryInfoByPage",
                data : JSON.stringify(customerVO),
                success:function(data){
                    var innerTxt = "";
                    $("#customers").html("");
                    $.each(data,function (i,v) {
                        innerTxt += "<tr class ='gradeX'>";
                        innerTxt += "<td>"+v.customerName+"</td>";
                        innerTxt += "<td>"+v.customerPhone+"</td>";
                        innerTxt += "<td>"+v.communityName+"</td>";
                        innerTxt += "<td>"+v.hourseNumber+"</td>";
                        innerTxt += "<td><div class='tpl-table-black-operation'><a href='javascript:;' class='js-modal-open'  onclick=openModel('"+v.customerId+"','"+v.beginDate+"','"+v.endDate+"')><i class='am-icon-pencil' ></i>查看订单详情</a><div></td>";
                        innerTxt += "</tr>";
                        })
                    $("#customers").append(innerTxt);
                    }
                })

        }

        function deleteOrder(orderDetailId){

            $.ajax({
                type:"POST",
                contentType : 'application/json; charset=UTF-8',
                url:"deleteOrderDetilById",
                data : orderDetailId,
                success:function(data){
                    $("#"+orderDetailId).remove();
                }
            })
        }


    </script>

</html>