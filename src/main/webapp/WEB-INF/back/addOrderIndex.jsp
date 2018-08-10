<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
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
                <a href="javascript:;"><img src="assets/img/logo.png" alt=""></a>
            </div>
            <!-- 右侧内容 -->
            <div class="tpl-header-fluid">
                <!-- 侧边切换 -->
                <div class="am-fl tpl-header-switch-button am-icon-list">
                    <span>

                </span>
                </div>
                <!-- 搜索 -->
                <div class="am-fl tpl-header-search">
                    <form class="tpl-header-search-form" action="javascript:;">
                        <button class="tpl-header-search-btn am-icon-search"></button>
                        <input class="tpl-header-search-box" type="text" placeholder="搜索内容...">
                    </form>
                </div>
                <!-- 其它功能-->
                <div class="am-fr tpl-header-navbar">
                    <ul>
                        <!-- 欢迎语 -->
                        <li class="am-text-sm tpl-header-navbar-welcome">
                            <a href="javascript:;">欢迎你, <span>Amaze UI</span> </a>
                        </li>

                        <!-- 新邮件 -->
                        <li class="am-dropdown tpl-dropdown" data-am-dropdown>
                            <a href="javascript:;" class="am-dropdown-toggle tpl-dropdown-toggle" data-am-dropdown-toggle>
                                <i class="am-icon-envelope"></i>
                                <span class="am-badge am-badge-success am-round item-feed-badge">4</span>
                            </a>
                            <!-- 弹出列表 -->
                            <ul class="am-dropdown-content tpl-dropdown-content">
                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <div class="menu-messages-ico">
                                            <img src="assets/img/user04.png" alt="">
                                        </div>
                                        <div class="menu-messages-time">
                                            3小时前
                                        </div>
                                        <div class="menu-messages-content">
                                            <div class="menu-messages-content-title">
                                                <i class="am-icon-circle-o am-text-success"></i>
                                                <span>夕风色</span>
                                            </div>
                                            <div class="am-text-truncate"> Amaze UI 的诞生，依托于 GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。 </div>
                                            <div class="menu-messages-content-time">2016-09-21 下午 16:40</div>
                                        </div>
                                    </a>
                                </li>

                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <div class="menu-messages-ico">
                                            <img src="assets/img/user02.png" alt="">
                                        </div>
                                        <div class="menu-messages-time">
                                            5天前
                                        </div>
                                        <div class="menu-messages-content">
                                            <div class="menu-messages-content-title">
                                                <i class="am-icon-circle-o am-text-warning"></i>
                                                <span>禁言小张</span>
                                            </div>
                                            <div class="am-text-truncate"> 为了能最准确的传达所描述的问题， 建议你在反馈时附上演示，方便我们理解。 </div>
                                            <div class="menu-messages-content-time">2016-09-16 上午 09:23</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <i class="am-icon-circle-o"></i> 进入列表…
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- 新提示 -->
                        <li class="am-dropdown" data-am-dropdown>
                            <a href="javascript:;" class="am-dropdown-toggle" data-am-dropdown-toggle>
                                <i class="am-icon-bell"></i>
                                <span class="am-badge am-badge-warning am-round item-feed-badge">5</span>
                            </a>

                            <!-- 弹出列表 -->
                            <ul class="am-dropdown-content tpl-dropdown-content">
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-line-chart"></i>
                                            <span> 有6笔新的销售订单</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            12分钟前
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-star"></i>
                                            <span> 有3个来自人事部的消息</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            30分钟前
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <div class="tpl-dropdown-menu-notifications-title">
                                            <i class="am-icon-folder-o"></i>
                                            <span> 上午开会记录存档</span>
                                        </div>
                                        <div class="tpl-dropdown-menu-notifications-time">
                                            1天前
                                        </div>
                                    </a>
                                </li>


                                <li class="tpl-dropdown-menu-notifications">
                                    <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                        <i class="am-icon-bell"></i> 进入列表…
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- 退出 -->
                        <li class="am-text-sm">
                            <a href="javascript:;">
                                <span class="am-icon-sign-out"></span> 退出
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </header>
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
        <!-- 侧边导航栏 -->
        <div class="left-sidebar">
            <!-- 用户信息 -->
            <div class="tpl-sidebar-user-panel">
                <div class="tpl-user-panel-slide-toggleable">
                    <div class="tpl-user-panel-profile-picture">
                        <img src="assets/img/user04.png" alt="">
                    </div>
                    <span class="user-panel-logged-in-text">
              <i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
              禁言小张
          </span>
                    <a href="javascript:;" class="tpl-user-panel-action-link"> <span class="am-icon-pencil"></span> 账号设置</a>
                </div>
            </div>


            <!-- 菜单 -->
            <ul class="sidebar-nav">
                <li class="sidebar-nav-heading">Components <span class="sidebar-nav-heading-info"> 附加组件</span></li>
                <li class="sidebar-nav-link">
                    <a href="index.jsp">
                        <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="tables.html">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 表格
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="calendar.html">
                        <i class="am-icon-calendar sidebar-nav-link-logo"></i> 日历
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="form.html">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 表单

                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="chart.html">
                        <i class="am-icon-bar-chart sidebar-nav-link-logo"></i> 图表

                    </a>
                </li>

                <li class="sidebar-nav-heading">Page<span class="sidebar-nav-heading-info"> 常用页面</span></li>
                <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title active">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 数据列表
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico sidebar-nav-sub-ico-rotate"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub" style="display: block;">
                        <li class="sidebar-nav-link">
                            <a href="customerOrderInfo.jsp">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 文字列表
                            </a>
                        </li>

                        <li class="sidebar-nav-link">
                            <a href="addOrderIndex.jsp" class="sub-active">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 图文列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-nav-link">
                    <a href="sign-up.html">
                        <i class="am-icon-clone sidebar-nav-link-logo"></i> 注册
                        <span class="am-badge am-badge-secondary sidebar-nav-link-logo-ico am-round am-fr am-margin-right-sm">6</span>
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="login.jsp">
                        <i class="am-icon-key sidebar-nav-link-logo"></i> 登录
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="404.html">
                        <i class="am-icon-tv sidebar-nav-link-logo"></i> 404错误
                    </a>
                </li>

            </ul>
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
                                <select id="community_select" data-am-selected="{btnSize: 'sm'}">

                                </select>
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
                                                <button type="button" class="am-btn am-btn-default am-btn-success" onclick="addOrder()"><span class="am-icon-plus"></span> 新增</button>
                                                <button type="button" class="am-btn am-btn-default am-btn-secondary" style="margin-left: 20px;" onclick="saveOrder()"><span class="am-icon-save"></span> 保存</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="am-u-sm-12">
                                    <form>
                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black " id="example-r">

                                        <thead>
                                        <tr>
                                            <th>产品名称</th>
                                            <th>产品型号</th>
                                            <th>数量</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <!-- more data -->
                                        </tbody>
                                    </table>
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
    <!-- 新增订单模态框 -->
    <div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompt">
        <div class="am-modal-dialog">
            <form class="am-form-inline" role="form">
                <input type="hidden" value="" id="saveOrUpdate"/>
                <input type="hidden" value="" id="vone"/>
                <input type="hidden" value="" id="vtwo"/>
                <input type="hidden" value="" id="vthree"/>
                <input type="hidden" id="rowNum"/>
            <div class="am-modal-hd">
                    <label class="am-form-label" >产品:</label>
                    <select id="productId"  name="productId" onchange="productChange()" placeholder="选则产品" class="am-modal-prompt-input" data-am-selected="{btnSize: 'sm'}">

                    </select>
            </div>
            <div class="am-modal-hd">
                <label class="am-form-label" >型号:</label>
                <select id="modelId" name="modelId"   class="am-modal-prompt-input"  placeholder="选则型号" data-am-selected="{btnSize: 'sm'}">

                </select>
            </div>
            <div class="am-modal-hd">
                <label class="am-form-label" style="margin-left: 30px;">数量:</label>
                <div class="am-form-group am-input-group am-input-group-sm  cl-p" >
                    <input id="productCount" name="productCount" type="number" class="  am-modal-prompt-input" placeholder="数量">
                </div>
            </div>
            </form>

            <div class="am-modal-footer">

                <span class="am-modal-btn" data-am-modal-cancel>取消</span>
                <span class="am-modal-btn" data-am-modal-confirm>提交</span>
            </div>
        </div>
    </div>


    <script src="http://cdn.bootcss.com/amazeui/2.7.2/js/amazeui.min.js"></script>
    <script src="/../<%=this.getServletContext().getContextPath()%>/assets/js/app.js"></script>
    <script type="text/javascript">

        // 页面初始化加载
        $(function(){
            $.ajax({
                type:"POST",
                url:"queryAllProduct",
                success:function (data) {
                    var txt1 = "<option value='0'>选择产品</option>";
                    $.each(data,function (i,product) {
                        txt1 += "<option value='"+product.productId+"'>"+product.productName+"</option>";
                    })
                    $("#productId").append(txt1);
                }
            });
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
            var rowNum = $("tbody").find("tr").length;
            var orderDetails = new Array();
            for(var i = 0; i < rowNum ;i ++){
                var productId = $("#"+i).find("input:eq(0)").attr("data-value");
                var modelId = $("#"+i).find("input:eq(1)").attr("data-value");
                var orderCount = $("#"+i).find("input:eq(2)").attr("data-value");
                console.log("productId:"+productId+"modelId:"+modelId+"orderCount:"+orderCount);
                var obj = {productId:productId,modelId:modelId,count:orderCount}
                orderDetails[i] = obj;
            }

            var customerName = $("#customerName").val();
            var customerPhone =$("#customerPhone").val();
            var communityId = $("#community_select").val();
            var hourseNumber = $("#hourseNumber").val();
            var orderAllInfo = {
                orderDetailList:orderDetails,
                customerName:customerName,
                communityId:communityId,
                customerPhone:customerPhone,
                hourseNumber:hourseNumber
            }
            $.ajax({
                type:"POST",
                contentType : 'application/json; charset=UTF-8',
                url:"addOrderDetails",
                data : JSON.stringify(orderAllInfo),
                success:function(data){
                    if(data = 'success'){
                        $("#customerName").val();
                        $("#customerPhone").val();
                        $("#community_select").val();
                        $("#hourseNumber").val();
                        $("tbody").innerHTML();

                    }
                }
            })

        }



    </script>
</body>

</html>