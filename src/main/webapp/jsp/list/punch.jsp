
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<rapid:override name="head">
    <style>
        .main{
            height: 60%;
            width: 60%;
            line-height: 60%;
            margin: 100px auto auto auto;
            padding: 90px  60px 60px 60px;
            background-color: white;
            border:  lightslategray solid 1px;
        }
        .btn{
            padding: 30px 40px;
            margin-right: 20px;
        }
    </style>
</rapid:override>

<rapid:override name="content">
    <div class="container-fluid text-center">
        <div class="main">
            <div>
                <form action="" method="post">
                    <button class="btn btn-primary" name="attendancemark" value ="出勤"   <c:if test="${todayCheck > 0}"> disabled="disabled" </c:if>>出勤</button>
                    <button class="btn btn-info" name="attendancemark" value ="退社"   <c:if test="${todayoCheck > 0}"> disabled="disabled" </c:if>>退社</button>
                    </br></br>
                    出勤时间：   ${syukkinjikan}
                    退社时间：   ${tasyajikan}
                </form>
            </div>
        </div>
    </div>


</rapid:override>
<jsp:include page="../base.jsp"/>