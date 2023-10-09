<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Trang chủ</title>
    <!-- jquery -->
    <script type='text/javascript' src='<c:url value="/template/js/2.1.4/jquery.min.js" />'></script>

    <link rel="stylesheet" href="<c:url value='/template/assets/css/bootstrap.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/template/font-awesome/4.5.0/css/font-awesome.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/template/assets/css/ace.min.css' />" class="ace-main-stylesheet" id="main-ace-style" />
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body class="no-skin">

<div class="main-container ace-save-state" id="main-container">

    <script type="text/javascript">
        try{ace.settings.loadState('main-container')}catch(e){}
    </script>

    <%-- menu --%>
    <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
            }
        </script>
        <div class="sidebar-shortcuts">
            <div class="sidebar-shortcuts-large">
                <button class="btn btn-success">
                    <i class="ace-icon fa fa-signal"></i>
                </button>

                <button class="btn btn-info">
                    <i class="ace-icon fa fa-pencil"></i>
                </button>

                <button class="btn btn-warning">
                    <i class="ace-icon fa fa-users"></i>
                </button>

                <button class="btn btn-danger">
                    <i class="ace-icon fa fa-cogs"></i>
                </button>
            </div>
            <div class="sidebar-shortcuts-mini">
                <span class="btn btn-success"></span>

                <span class="btn btn-info"></span>

                <span class="btn btn-warning"></span>

                <span class="btn btn-danger"></span>
            </div>
        </div>
        <ul class="nav nav-list">
            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-newspaper-o"></i>
                    <span class="menu-text">Dashboard</span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="">
                        <a href='<c:url value="/trang-chu"/>'>
                            <i class="menu-icon fa fa-caret-right"></i>
                            Trang chủ
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
                <ul class="submenu">
                    <li class="">
                        <a href='<c:url value="/logout"/>'>
                            <i class="menu-icon fa fa-caret-right"></i>
                            Thoát
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left"
               data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>

        <script type="text/javascript">
            try {
                ace.settings.check('sidebar', 'collapsed')
            } catch (e) {
            }
        </script>
    </div>
    <%-- menu --%>

    <!-- Begin body -->
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Quản lý tài khoản</a>
                    </li>
                </ul><!-- /.breadcrumb -->
            </div>
            <div class="page-content">
                <div class="row" >
                    <div class="col-xs-12">

                    </div>
                </div>
            </div>
        </div>
    </div><!-- /.main-content -->
    <!-- End body -->

    <%-- Footer --%>
    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">laptrinhjavaweb.com</span>
						</span>
            </div>
        </div>
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>

</div>

<script src="<c:url value='/template/js/global_javascript.js' />"></script>
<script src="<c:url value='/template/assets/js/ace-extra.min.js' />"></script>
<script src="<c:url value='/template/assets/js/jquery-ui.custom.min.js' />"></script>
<script src="<c:url value='/template/assets/js/jquery.ui.touch-punch.min.js' />"></script>
<script src="<c:url value='/template/assets/js/jquery.easypiechart.min.js' />"></script>
<script src="<c:url value='/template/assets/js/jquery.sparkline.min.js' />"></script>
<script src="<c:url value='/template/assets/js/jquery.flot.min.js' />"></script>
<script src="<c:url value='/template/assets/js/jquery.flot.pie.min.js' />"></script>
<script src="<c:url value='/template/assets/js/jquery.flot.resize.min.js' />"></script>
<script src="<c:url value='/template/assets/js/bootstrap.min.js' />"></script>
<script src="<c:url value='/template/assets/js/ace-elements.min.js' />"></script>
<script src="<c:url value='/template/assets/js/ace.min.js' />"></script>
</body>
</html>
