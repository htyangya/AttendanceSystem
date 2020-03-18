<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<rapid:override name="content">
    <h3>キャラクター管理</h3>

    <!--模态窗口-->
    <div class="tab-pane" id="tab-model">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
            追加
        </button>

        <div id="myModal" class="modal modal-primary" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">追加</h4>
                    </div>

                    <div class="modal-body">
                        <form action="" method="post">

                        <div class="box-body">
                            <div class="form-horizontal">

                                <div class="form-group">
                                    <label for="inputNumber2" class="col-sm-2 control-label">角色名称:</label>
                                    <div class="col-sm-5">
                                        <div class="input-group">

                                            <input id="inputNumber2" type="text" class="form-control" placeholder="请输入角色名称" name="roletype">


                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNumber2" class="col-sm-2 control-label">工作标准天数:</label>
                                    <div class="col-sm-5">
                                        <div class="input-group">

                                            <input type="text" class="form-control" placeholder="天数" name="rolecurrentmonthtime">

                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                <label class="col-sm-2 control-label">标准时间范围:</label>
                                <div class="col-sm-5">
                                    <div class="input-group">
                                        <input type="time" class="form-control" name="roleattendtime" >
                                        <span class="input-group-addon">-</span>
                                        <input type="time" class="form-control" name="rolequittime">
                                    </div>
                                </div>
                            </div>




                                <div class="form-group">
                                    <label class="col-sm-2 control-label">权限:</label>
                                    <div class="col-sm-5">
                                        <div class="checkbox" >
                                            <label><input type="radio" name="c1" checked="checked">超级权限</label>
                                            <label><input type="radio" name="c1">普通用户权限</label>

                                        </div>
                                        <button class="btn btn-outline"  type="submit" >保存</button>
                                    </div>
                                </div>

                            </div>
                        </div>


                        </form>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline" data-dismiss="modal">关闭</button>

                    </div>
                </div>
                <!-- /.modal-content -->
            </div>

            <!-- /.modal-dialog -->
        </div>

        <!-- /.modal -->
    </div>

    <!--模态窗口/-->

    <table class="table table-hover">
        <tr>
            <td>角色类型</td>
            <td>出勤标准时间</td>
            <td>退勤标准时间</td>
            <td>当月应出勤天数</td>
        </tr>
        <c:forEach items="${roles}" var="role">

            <tr>

                <td><input type="text" name="roletype" value="${role.roletype}"/></td>
                <td><input type="time"  name="roleattendtime" value="${role.roleattendtime}"/></td>
                <td><input type="time"  name="rolequittime" value="${role.rolequittime}"/></td>
                <td><input type="text"name="rolecurrentmonthtime"  value="${role.rolecurrentmonthtime}"/></td>


                <td><input type="button" onclick="showzhi(this,${role.roleid})" value="保存"/></td>


                <td><a href="delete.do?roleid=${role.roleid}"><input type="button" value="删除"/></a></td>
            </tr>
        </c:forEach>

    </table>

</rapid:override>

<rapid:override name="script">


    <script type="text/javascript">
        function showzhi(obj,roleid){
            var x = $(obj).parent().parent().find("[name='roletype']");
            var x1 = $(obj).parent().parent().find("[name='roleattendtime']");
            var x2 = $(obj).parent().parent().find("[name='rolequittime']");
            var x3 = $(obj).parent().parent().find("[name='rolecurrentmonthtime']");


            //console.log(roleid);

            var y="update.do?roleid="+roleid+"&roletype="+x.val()+"&roleattendtime="+x1.val()+"&rolequittime="+x2.val()+"&rolecurrentmonthtime="+x3.val();
            console.log(y);
            window.location.assign(y);

        };

    </script>
</rapid:override>

    <jsp:include page="../base.jsp"/>
