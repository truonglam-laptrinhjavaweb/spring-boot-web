<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><sitemesh:write property="Admin Page"/></title>
    <link rel="shortcut icon" href="${ctx}/template/assets/icon/favicon.png">

    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <link rel="stylesheet" href="${ctx}/template/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="<c:url value='/template/font-awesome/4.5.0/css/font-awesome.min.css' />"/>

    <link rel="stylesheet" href="${ctx}/template/assets/fonts/fonts.googleapis.com.css"/>
    <%-- autocomplete css--%>
    <link rel="stylesheet" href="${ctx}/template/js/autocomplete/main.css"/>

    <%--sweetalert css--%>
    <link rel="stylesheet" href="${ctx}/template/assets/sweetalert2/sweetalert2.min.css">

    <%-- ace css --%>
    <link rel="stylesheet" href="${ctx}/template/assets/css/ace.min.css" class="ace-main-stylesheet"
          id="main-ace-style"/>

    <!-- jquery -->
    <script type='text/javascript' src='${ctx}/template/js/2.1.4/jquery.min.js'></script>
    <script src="${ctx}/template/assets/js/chosen.jquery.min.js"></script>

    <script src="${ctx}/template/assets/js/bootstrap-multiselect.min.js"></script>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="${ctx}/template/assets/css/bootstrap-duallistbox.min.css"/>
    <link rel="stylesheet" href="${ctx}/template/assets/css/bootstrap-multiselect.min.css"/>
    <link rel="stylesheet" href="${ctx}/template/assets/css/jquery.toast.css"/>

    <style type="text/css">
        body {
            font-family: "Times New Roman", Times, serif;
        }

        .help-block {
            padding-left: 22vw;
        }
        @media (min-width: 768px){
            .form-horizontal .control-label {
                text-align: left;
                margin-bottom: 0;
                padding-top: 7px;
            }
        }
        .has-error .help-block {
            margin-left: 4vw;
        }
        .group-checkbox{
            display: flex;
            gap: 20px;
            column-gap: 20px;
        }
        .group-checkbox > span > label{
            padding-left: 0.4em;
        }
        #lg-table tr td { font-size: 15px; }
    </style>
    <link rel="stylesheet" href="${ctx}/template/assets/css/chosen.min.css"/>
    <link rel="stylesheet" href="${ctx}/template/css/validate-customer.css"/>
    <link rel="stylesheet" href="${ctx}/template/css/validate-password.css"/>


    <link rel="stylesheet" href="<c:url value='/template/assets/css/ace.min.css' />" class="ace-main-stylesheet"
          id="main-ace-style"/>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <sitemesh:write property="page.heading"/>
</head>
<body class="no-skin">
    <div class="main-container ace-save-state" id="main-container">

        <script type="text/javascript">
            try {
                ace.settings.loadState('main-container')
            } catch (e) {
            }
        </script>
        <!-- Menu -->
        <%@ include file="./menu.jsp" %>
        <!-- End Menu -->

        <!-- Begin body -->
        <sitemesh:write property="body"/>
        <!-- End body -->

        <!-- Begin footer -->
        <%@ include file="./footer.jsp" %>
        <!-- end footer -->

        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
        </a>

    </div>

    <script type="text/javascript" src="${ctx}/template/js/global_admin_script.js"></script>
    <script src="${ctx}/template/assets/js/ace-extra.min.js"></script>
    <script src="${ctx}/template/assets/js/jquery-ui.custom.min.js"></script>
    <script src="${ctx}/template/assets/js/jquery.ui.touch-punch.min.js"></script>
    <script src="${ctx}/template/assets/js/jquery.easypiechart.min.js"></script>
    <script src="${ctx}/template/assets/js/jquery.sparkline.min.js"></script>
    <script src="${ctx}/template/assets/js/jquery.flot.min.js"></script>
    <script src="${ctx}/template/assets/js/jquery.flot.pie.min.js"></script>
    <script src="${ctx}/template/assets/js/jquery.flot.resize.min.js"></script>
    <script src="${ctx}/template/assets/js/bootstrap.min.js"></script>
    <script src="${ctx}/template/assets/js/ace-elements.min.js"></script>
    <script src="${ctx}/template/assets/js/ace.min.js"></script>
    
    <script type="text/javascript">
        function showAlertBeforeDelete(callback, text) {
            swal({
                title: "Xác nhận xóa",
                text: text || "Bạn có chắc chắn xóa những dòng đã chọn",
                type: "warning",
                showCancelButton: true,
                confirmButtonText: "Xác nhận",
                cancelButtonText: "Hủy bỏ",
                confirmButtonClass: "btn btn-success",
                cancelButtonClass: "btn btn-danger"
            }).then(function (isConfirm) {
                if (isConfirm) {
                    callback();
                }
            });
        }
    </script>
    <%--<decorator:getProperty property="page.local_script"></decorator:getProperty>--%>
    <sitemesh:write property="page.local_script"/>
</body>
</html>
