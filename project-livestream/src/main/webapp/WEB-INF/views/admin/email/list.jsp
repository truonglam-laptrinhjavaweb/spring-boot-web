
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url var="formUrl" value="/admin/email/list"/>
<html>
<head>
    <title>Danh sách chiến dịch email</title>
</head>
<body>
<div class="main-content">
<form:form modelAttribute="model" action="${formUrl}" id="listForm" method="GET">
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
                            <div class="table-responsive">
                                <table class="table table-fcv-ace table-striped table-bordered table-hover dataTable no-footer" style="margin: 3em 0 1.5em;">
                                    <thead>
                                    <tr>
                                        <th class="center select-cell"><fieldset class="form-group"><input type="checkbox" id="checkAll" class="check-box-element"></fieldset></th>
                                        <th class="text-left">Id email</th>
                                        <th class="text-left">Tiêu đề email</th>
                                        <th class="col-actions">Thao tác</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="item" items="${model.listResult}">
                                        <tr>
                                            <td class="center select-cell">
                                                <fieldset><input type="checkbox" name="checkList" value="${item.id}" id="checkbox_${item.id}" class="check-box-element"/></fieldset>
                                            </td>
                                            <td>${item.id}</td>
                                            <td>${item.campaign}</td>
                                            <td>
                                                <c:url var="editEmail" value="/admin/email/edit">
                                                    <c:param name="id" value="${item.id}"/>
                                                </c:url>
                                                <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                                                   title="Cập nhật email" href='${editEmail}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <ul id="pagination" class="pagination"></ul>
                            <form:hidden path="page" id="page"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form:form>
</div>
<script>
    $(document).ready(function () {
    });

    var totalPages = ${model.totalPages};
    var currentPage = ${model.page};
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 2,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    $('#page').val(page);
                    $('#listForm').submit();
                }
            },
            // Text labels
            first:'Trang đầu',
            prev:'Trang trước',
            next:'Tiếp theo',
            last:'Trang cuối',
        });
    });
</script>
</body>
</html>
