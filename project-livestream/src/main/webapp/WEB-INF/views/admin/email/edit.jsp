<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cập nhật chiến dịch email</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <li class="active">Danh sách Form</li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Tên chiến dịch</label>
                                <div class="col-sm-9">
                                    <%--<form:input path="title" id="title" cssClass="form-control"/>--%>
                                    <input class="form-control" id="campaign" name="campaign" value=""/>
                                </div>
                            </div>
                            <br/>
                            <br/>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Nội dung của chiền dịch</label>
                                <div class="col-sm-9">
                                    <%--<form:input path="title" id="title" cssClass="form-control"/>--%>
                                    <textarea class="form-control" id="content" name="content"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        const configCKEditor = {
            allowedContent: true,
            filebrowserBrowseUrl: '/ckfinder/static/ckfinder.html',
            filebrowserImageBrowseUrl: '/ckfinder/static/ckfinder.html?type=Images',
            filebrowserFlashBrowseUrl: '/ckfinder/static/ckfinder.html?type=Flash',
            filebrowserUploadUrl: '/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
            filebrowserImageUploadUrl: '/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
            filebrowserFlashUploadUrl: '/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'
        }
        CKEDITOR.replace('content', configCKEditor);
    });
</script>
</body>
</html>
