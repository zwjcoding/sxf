<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
    <head>
        <title>标题</title>
        <link rel="stylesheet" href="../<%=this.getServletContext().getContextPath()%>/bootstrap-3.3.7-dist/css/bootstrap.css"></link>
        <link rel="stylesheet" href="../<%=this.getServletContext().getContextPath()%>/bootstrap-3.3.7-dist/css/bootstrap-theme.css"></link>

        <script src="../<%=this.getServletContext().getContextPath()%>/js/jquery.min.js"></script>
        <script src="../<%=this.getServletContext().getContextPath()%>/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    </head>
    <body>
    <style>
        .hoverdiv:hover{
              border: 1px solid red;
        }
    </style>
            <div class="container">

                <jsp:include page="head.jsp" />
                 <div id="centerdiv" class="row"   style="width:100%;height: 90%;margin-top: 10px;">
                     <div  id="centerDivFirst" class="col-md-9" style="z-index:-10;">
                            <div class="row" >
                                <div class="col-md-5 panel panel-default hoverdiv "  >
                                    <div class="panel-heading">
                                        <span style="font-size: 20px;">图解CSS3</span>
                                    </div>
                                    <div class="panel-body">如何深入理解JVM虚拟机XXXXXXXXXXXXXXXXXX</div>
                                    <div class="panel-footer row">
                                            <span class="label label-info">后端</span>
                                            <span class="label label-info">Spring</span>
                                            <span class="label label-info">Java</span>
                                    </div>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-5 panel panel-info hoverdiv" >
                                    <div class="panel-heading">图解CSS3</div>
                                    <div class="panel-body">如何深入理解JVM虚拟机XXXXXXXXXXXXXXXXXX</div>
                                    <div class="panel-footer row">
                                        <span class="label label-info">后端</span>
                                        <span class="label label-info">Spring</span>
                                        <span class="label label-info">Java</span>
                                    </div>
                                </div>
                            </div>
                         <div class="row">
                             <div class="col-md-5 panel panel-default hoverdiv"  >
                                 <div class="panel-heading">图解CSS3</div>
                                 <div class="panel-body">如何深入理解JVM虚拟机XXXXXXXXXXXXXXXXXX</div>
                                 <div class="panel-footer row">
                                     <span class="label label-info">后端</span>
                                     <span class="label label-info">Spring</span>
                                     <span class="label label-info">Java</span>
                                 </div>
                             </div>
                             <div class="col-md-1"></div>
                             <div class="col-md-5 panel panel-info hoverdiv">
                                 <div class="panel-heading">图解CSS3</div>
                                 <div class="panel-body">如何深入理解JVM虚拟机XXXXXXXXXXXXXXXXXX</div>
                                 <div class="panel-footer row">
                                     <span class="label label-info">后端</span>
                                     <span class="label label-info">Spring</span>
                                     <span class="label label-info">Java</span>
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-5 panel panel-default hoverdiv"  >
                                 <div class="panel-heading">图解CSS3</div>
                                 <div class="panel-body">如何深入理解JVM虚拟机XXXXXXXXXXXXXXXXXX</div>
                                 <div class="panel-footer row">
                                     <span class="label label-info">后端</span>
                                     <span class="label label-info">Spring</span>
                                     <span class="label label-info">Java</span>
                                 </div>
                             </div>
                             <div class="col-md-1"></div>
                             <div class="col-md-5 panel panel-info hoverdiv">
                                 <div class="panel-heading">图解CSS3</div>
                                 <div class="panel-body">如何深入理解JVM虚拟机XXXXXXXXXXXXXXXXXX</div>
                                 <div class="panel-footer row">
                                     <span class="label label-info">后端</span>
                                     <span class="label label-info">Spring</span>
                                     <span class="label label-info">Java</span>
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-5 panel panel-default hoverdiv"  >
                                 <div class="panel-heading">图解CSS3</div>
                                 <div class="panel-body">如何深入理解JVM虚拟机XXXXXXXXXXXXXXXXXX</div>
                                 <div class="panel-footer row">
                                     <span class="label label-info">后端</span>
                                     <span class="label label-info">Spring</span>
                                     <span class="label label-info">Java</span>
                                 </div>
                             </div>
                             <div class="col-md-1"></div>
                             <div class="col-md-5 panel panel-info hoverdiv">
                                 <div class="panel-heading">图解CSS3</div>
                                 <div class="panel-body">如何深入理解JVM虚拟机XXXXXXXXXXXXXXXXXX</div>
                                 <div class="panel-footer row">
                                     <span class="label label-info">后端</span>
                                     <span class="label label-info">Spring</span>
                                     <span class="label label-info">Java</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="col-md-3">
                         <img src="../<%=this.getServletContext().getContextPath()%>/image/001.jpg" class="img-responsive" alt="Cinque Terre">
                         <h4><p class="text-center">共勉</p></h4>
                     </div>
                 </div>
            </div>
    </body>
    <script type="text/javascript">

        /**
         * 点击响应式按钮<未完成>
         */
        function onClickButton(){
            alert($("#topnav").css("z-index"));
            console.log($("#topnav").css("z-index"));
            console.log($("#centerDivFirst").css("z-index"));

            if(($("centerDiv").attr("z-index") == 'undefined')||($("centerDivFirst").attr("z-index") == 'undefined')){
                  alert("张贴");
                  $("centerDiv").attr("z-index","-1");
                  $("centerDivFirst").attr("z-index","-1");
                  $("topnav").attr("z-index","200");
            }else{
                alert("移除");
                $("centerDiv").removeAttr("z-index");
                $("centerDivFirst").removeAttr("z-index");
                $("topnav").removeAttr("z-index");
            }
        }



    </script>

</html>
