
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<rapid:override name="content">

    <div>
        <form action="" method="post">
            <button class="btn btn-default" name="attendancemark" value ="出勤"   <c:if test="${todayCheck > 0}"> disabled="disabled" </c:if>>出勤</button>
            <button class="btn btn-default" name="attendancemark" value ="退社"   <c:if test="${todayoCheck > 0}"> disabled="disabled" </c:if>>退社</button>
            </br>
             出勤时间：   ${syukkinjikan}
             退社时间：   ${tasyajikan}
        </form>


    </div>

</rapid:override>
<jsp:include page="../base.jsp"/>