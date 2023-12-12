<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Trang chủ</title>
    <content tag="heading">
        <%-- Ckeditor --%>
        <script type="text/javascript" src="<c:url value="/ckeditor/ckeditor.js"/>"></script>
    </content>
</head>
<body class="no-skin">
<!-- Begin body -->
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Xin chào, <%=SecurityUtils.getPrincipal().getFullName()%>
                    </a>
                </li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label for="content" class="col-sm-3 control-label no-padding-right">Nội dung:</label>
                        <div class="col-sm-9">
                            <textarea rows="5" cols="10" cssClass="form-control" id="content"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!-- /.main-content -->
<!-- End body -->
<script>
    var editor = '';
    $(document).ready(function () {
        const configCKEditor = {
            allowedContent: true,
            filebrowserBrowseUrl: '/ckfinder/static/ckfinder.html',
            filebrowserImageBrowseUrl: '/ckfinder/static/ckfinder.html?type=Images',
            filebrowserFlashBrowseUrl: '/ckfinder/static/ckfinder.html?type=Flash',
            filebrowserUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
            filebrowserImageUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
            filebrowserFlashUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
        }
        editor = CKEDITOR.replace('content', configCKEditor);
        CKFinder.setupCKEditor(editor);
    });
</script>
</body>
</html>
