<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<rapid:override name="content">
    <div class="table-box">

        <!--工具栏-->
        <div class="pull-left">

        </div>
        <div class="box-tools pull-right">
            <div class="has-feedback">
                <input type="text" class="form-control input-sm" placeholder="搜索" disabled>
                <span class="glyphicon glyphicon-search form-control-feedback"></span>
            </div>
        </div>
        <!--工具栏/-->
        <div class="pull-left" style="margin-bottom: 10px">
            <h4 class="text-info">ユーザーIDが${uid}の出勤記録:</h4>
        </div>
        <!--数据列表-->
        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
            <thead>
            <tr>
                <th class="" style="padding-right:0px;">
                    <input id="selall" type="checkbox" class="icheckbox_square-blue">
                </th>
                <th class="text-center">日付</th>
                <th class="text-center">出勤時間</th>
                <th class="text-center">遅刻</th>
                <th class="text-center">退勤時間</th>
                <th class="text-center">早退</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach items="${records}" var="record">
            <tr>
                <td><div class="icheckbox_square-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input name="ids" type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                <td class="text-center">${record.attendanceDate}</td>
                <td class="text-center">${record.syukintime}</td>
                <td  class="text-center <c:if test="${record.lateMinute > 0}" >text-danger </c:if>" >${record.lateMinute}</td>
                <td class="text-center">${record.taikintime}</td>
                <td class="text-center <c:if test="${record.leaveEarly > 0}" >text-danger </c:if>" >${record.leaveEarly}</td>
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