<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<rapid:override name="content">
    <h3>我是继承后重载的user-list！</h3>
    <table class="table table-hover">
        <c:forEach items="${pageInfo.list}" var="user">
            <tr>
                <td>${user.username}</td>
                <td>${user.usergender}</td>
                <td>${user.userbirthday}</td>
                <td>${user.usertype}</td>
                <td>${user.userhometown}</td>
                <td>${user.useraddress}</td>
                <td>${user.userphonenumber}</td>
                <td>${user.userresidenceid}</td>
                <td>${user.userentry}</td>
                <td>${user.userleave}</td>
                <td>${user.userlastlogintime}</td>
            </tr>
        </c:forEach>
    </table>



    <jsp:include page="../common/paging.jsp">
        <jsp:param name="pageInfo" value="${pageInfo}"></jsp:param>
    </jsp:include>
</rapid:override>
<jsp:include page="../base.jsp"/>