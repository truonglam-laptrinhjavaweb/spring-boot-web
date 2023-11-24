<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
    <script type="text/javascript">
        try {
            ace.settings.loadState('sidebar')
        } catch (e) {
        }
    </script>
    <ul class="nav nav-list">
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-newspaper-o"></i>
                <span class="menu-text">Page</span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href='<c:url value="/admin/article"/>'>
                        <i class="menu-icon fa fa-caret-right"></i>
                        Page article
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
            <security:authorize access="hasRole('ADMIN')">
                <ul class="submenu">
                    <li class="">
                        <a href='<c:url value="/admin/user"/>'>
                            <i class="menu-icon fa fa-caret-right"></i>
                            Page user
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </security:authorize>
            <ul class="submenu">
                <li class="">
                    <a href='<c:url value="/admin/logout"/>'>
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