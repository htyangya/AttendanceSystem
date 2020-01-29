<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<rapid:override name="content">
    <h3>我是继承后重载的role-list！</h3>

    <table class="table table-hover">
        <tr>
            <td>角色类型</td>
            <td>出勤标准时间</td>
            <td>退勤标准时间</td>
            <td>当月应出勤天数</td>
        </tr>
        <c:forEach items="${roles}" var="role">
            <tr>
                <td>${role.roletype}</td>
                <td>${role.roleattendtime}</td>
                <td>${role.rolequittime}</td>
                <td>${role.rolecurrentmonthtime}</td>
            </tr>
        </c:forEach>
    </table>
</rapid:override>
<jsp:include page="../base.jsp"/>
