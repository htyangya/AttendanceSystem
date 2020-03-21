<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<rapid:override name="content">
    <div class="table-box">

        <!--工具栏-->
        <div class="pull-left">
            <div class="form-group form-inline">
                <div class="btn-group">
                    <button type="button" class="btn btn-default" title="新增"><i class="fa fa-file-o"></i> 新增</button>
                    <button type="button" class="btn btn-default" title="离职"><i class="fa fa-trash-o"></i> 离职</button>
                </div>
            </div>
        </div>
        <div class="box-tools pull-right">
            <div class="has-feedback">
                <input type="text" class="form-control input-sm" placeholder="搜索">
                <span class="glyphicon glyphicon-search form-control-feedback"></span>
            </div>
        </div>
        <!--工具栏/-->

        <!--数据列表-->
        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
            <thead>
            <tr>
                <th class="" style="padding-right:0px;">
                    <input id="selall" type="checkbox" class="icheckbox_square-blue">
                </th>
                <th class="sorting_asc">ユーザーID</th>
                <th class="sorting_desc">名前</th>
                <th class="sorting_asc sorting_asc_disabled">誕生日</th>
                <th class="sorting_desc sorting_desc_disabled">性別</th>
                <th class="sorting">パスワード</th>
                <th class="text-center sorting">権限</th>
                <th class="text-center">住所</th>
                <th class="text-center">出生地</th>
                <th class="text-center">電話番号</th>
                <th class="text-center">在留カード番号</th>
                <th class="text-center">エントリー日</th>
                <th class="text-center">departure日</th>
                <th class="text-center">最后登录时间</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list}" var="user">
            <tr>
                <td><div class="icheckbox_square-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input name="ids" type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                <td>${user.userid}</td>
                <td>${user.username}</td>
                <td>${user.userbirthday}</td>
                <td>${user.usergender}</td>
                <td>${user.userpassword}</td>
                <td>${user.usersuperuser}</td>
                <td>${user.useraddress}</td>
                <td>${user.userhometown}</td>
                <td>${user.userphonenumber}</td>
                <td>${user.userresidenceid}</td>
                <td>
                        ${user.userentryByFormat}
                </td>
                <td>
                        ${user.userleaveByFormat}
                </td>
                <td>
                        ${user.userlastlogintimeByFormat}
                </td>

                <td class="text-center">
                    <a type="button" class="btn bg-olive btn-xs" href="${path}/attendance/punch-list/${user.userid}">考勤</a>
                    <button type="button" class="btn bg-aqua btn-xs">修改</button>
                    <%--<button type="button" class="btn bg-olive btn-xs">编辑</button>--%>
                </td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
        <!--数据列表/-->



    </div>
    <jsp:include page="../common/paging.jsp">
        <jsp:param name="pageInfo" value="${pageInfo}"></jsp:param>
    </jsp:include>
</rapid:override>

<rapid:override name="script">
    <script>
        $(document).ready(function() {

            // 激活导航位置
            setSidebarActive("admin-datalist");

            // 列表按钮
            $("#dataList td input[type='checkbox']").iCheck({
                checkboxClass: 'icheckbox_square-blue',
                increaseArea: '20%'
            });
            // 全选操作
            $("#selall").click(function() {
                var clicks = $(this).is(':checked');
                if (!clicks) {
                    $("#dataList td input[type='checkbox']").iCheck("uncheck");
                } else {
                    $("#dataList td input[type='checkbox']").iCheck("check");
                }
                $(this).data("clicks", !clicks);
            });
        });
    </script>
</rapid:override>



<jsp:include page="../base.jsp"/>