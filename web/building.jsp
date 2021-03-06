<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>宿舍管理系统-楼宇管理</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
</head>

<body>
<div id="wrapper">
    <!--/. NAV TOP -->
    <%@ include file="navbar.jsp" %>
    <!--/. NAV SIDE -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <a href="index.jsp"><i class="fa fa-dashboard"></i> 首页</a>
                </li>
                <s:if test="#session.user.userRight==4">
                    <li>
                        <a class="active-menu" href="building.jsp"><i class="fa fa-desktop"></i> 楼宇管理</a>
                    </li>
                </s:if>
                <s:if test="#session.user.userRight>=3">
                    <li>
                        <a href="dorm.jsp"><i class="fa fa-bar-chart-o"></i> 宿舍管理</a>
                    </li>
                </s:if>
            </ul>
        </div>
    </nav>
    <!-- 页面主内容 -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        楼宇管理
                        <small>你想说啥</small>
                    </h1>
                </div>
            </div>
            <!-- /. ROW -->
            <div class="row clearfix" style="font-size: 16px">
                <div style="float: left">
                    <s:form action="searchBuilding" method="post" class="form-inline">
                        <div class="form-group">
                            查询：<select name="selectMethod" style="margin-right: 16px" class="form-control">
                            <option value="all">所有</option>
                            <option value="id">楼号</option>
                        </select>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="building.buildingId">
                        </div>
                        <div class="form-group" style="margin-left: 16px">
                            <input class="btn btn-default" type="submit" value="查询">
                        </div>
                    </s:form>
                </div>
                <div style="float: right;margin-right: 80px">
                    <a href="peopleAdd.jsp" class="btn btn-default" style="font-size: 16px" id="add">
                        <span class="glyphicon glyphicon-plus" style="margin-right: 5px"></span>添加员工
                    </a>
                </div>
            </div>
            <span style="color: red"><s:property value="#request.tip"/></span>
            <s:if test="list.size()>0">
                <table class="table table-striped result">
                    <tr>
                        <td>楼号</td>
                        <td>楼名</td>
                        <td>操作</td>
                    </tr>
                    <s:iterator value="list" status="statu" var="buildings">
                        <tr>
                            <td>
                                <s:property value="#buildings.buildingId"/>
                            </td>
                            <td>
                                <s:property value="#buildings.buildingName"/>
                            </td>
                            <td>
                                暂定
                            </td>
                        </tr>
                    </s:iterator>
                </table>
            </s:if>
        </div>
        <footer style="text-align: center"><p>Copyright &copy; 2019.ZJUT All rights reserved.</footer>
    </div>
</div>
<!-- /. WRAPPER -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="assets/js/jquery-1.12.4.min.js"></script>
<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Js -->
<script src="assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="assets/js/morris/morris.js"></script>


<script src="assets/js/easypiechart.js"></script>
<script src="assets/js/easypiechart-data.js"></script>
<!-- Custom Js -->
<script src="assets/js/custom-scripts.js"></script>
<script src="assets/js/custom.js"></script>


</body>

</html>
