<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lingling
  Date: 2016/10/29
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="sidebar" class="sidebar responsive">

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <a  title="添加笔记本">
                <button class="note btn btn-success"  data-toggle="modal" data-target=".bd-example-modal-sm">
                    <i class="ace-icon fa fa-signal"></i>
                </button>
            </a>
            <a  title="添加笔记" href="${pageContext.request.contextPath}/manager/editNote">
                <button class="btn btn-info">
                    <i class="ace-icon fa fa-pencil"></i>
                </button>
            </a>
            <a  title="添加用户">
                <button class="btn btn-warning">
                    <i class="ace-icon fa fa-users"></i>
                </button>
            </a>
            <a  title="系统设置">
                <button class="btn btn-danger">
                    <i class="ace-icon fa fa-cogs"></i>
                </button>
            </a>

            <!-- /section:basics/sidebar.layout.shortcuts -->
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div><!-- /.sidebar-shortcuts -->
    <div style="width: auto;height: 580px;overflow-y:auto;overflow-x:hidden;">
    <ul class="nav nav-list menu">
        <li class="active">
            <a href="#">
                <i class="menu-icon fa fa-tachometer"></i>
                <span class="menu-text"> 管理栏目 </span>
            </a>
            <b class="arrow"></b>
        </li>
        <%--<div style="width: auto;height: 620px;overflow-y:auto;overflow-x:hidden;">--%>
            <!--笔记本-->
            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text"> 笔记本 </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <c:forEach items="${notes}" var="note" varStatus="vs">
                        <li class="">
                            <a href="${pageContext.request.contextPath}/manager/menu/${note.note_id}">
                                <i class="menu-icon fa fa-caret-right"></i>
                                    ${note.note_name}
                                (${note.num})
                            </a>
                            <b class="arrow"></b>
                        </li>
                    </c:forEach>
                </ul>
            </li>
            <!--留言板-->
            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-pencil-square-o"></i>
                    <span class="menu-text"> 留言板 </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            最近三天
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            最近一周
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            最近一月
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            最近一年
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            更早之前
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
            <!--音乐库-->
            <li class="">
                <a href="#">
                    <i class="menu-icon fa fa-list-alt"></i>
                    <span class="menu-text"> 音乐库 </span>
                </a>

                <b class="arrow"></b>
            </li>
            <!--图片库-->
            <li class="">
                <a href="#">
                    <i class="menu-icon fa fa-picture-o"></i>
                    <span class="menu-text">图片库 </span>
                </a>

                <b class="arrow"></b>
            </li>
            <!--系统设置-->
            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-tag"></i>
                    <span class="menu-text"> 系统设置</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            编辑名片
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            后台用户
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            添加用户
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="invoice.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            我的信息
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
        <%--</div>--%>

    </ul>

    <!-- 伸缩 -->
    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
    </div>
    <!--添加笔记本弹出框-->
    <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content pop-div">
                <div class="modal-header">
                    <button type="button" class="close pop-input" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="${pageContext.request.contextPath}/manager/saveMenu">
                        <div class="form-group">
                            <label for="recipient-name" class="form-control-label">新笔记本：</label>
                            <input type="text" name="noteName" class="form-control" id="recipient-name">
                        </div>
                        <div class="clearfix">
                            <input type="submit" value="确定" class="width-35 pull-right btn btn-sm btn-primary">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

