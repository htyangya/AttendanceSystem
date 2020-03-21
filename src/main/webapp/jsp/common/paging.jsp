<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="box-footer">
    <div class="pull-left">
        <div class="form-group form-inline">
            总共${pageInfo.pages}页，共${pageInfo.total}条数据。 每页
            <select class="form-control" id="pageSelect">
                <c:forEach begin="5" end="25" step="5" var="page">
                    <option
                            <c:if test="${pageInfo.size == page}">
                                selected
                            </c:if>
                    >${page}</option>
                </c:forEach>
            </select> 条
        </div>
    </div>


    <div class="box-tools pull-right">
        <ul class="pagination">
            <li>
                <a href="?page=1&pageSize=${pageInfo.size}" aria-label="Previous" class="btn
                            <c:if test="${pageInfo.pageNum <= 1}">
                                disabled
                            </c:if>"
                >首页</a>
            </li>
            <li><a href="?page=${pageInfo.prePage}&pageSize=${pageInfo.size}" class="btn
                            <c:if test="${pageInfo.pageNum <= 1}">
                                disabled
                            </c:if>">上一页</a></li>

            <c:if test="${pageInfo.pages < 13}">
                <c:forEach begin="1" end="${pageInfo.pages}" var="p">
                    <c:if test="${pageInfo.pageNum == p}">
                        <li><span class="dot-page">${p}</span></li>
                    </c:if>
                    <c:if test="${pageInfo.pageNum != p}">
                        <li><a href="?page=${p}&pageSize=${pageInfo.size}">${p}</a></li>
                    </c:if>
                </c:forEach>
            </c:if>
            <%--以下是总页数大于13的情况--%>
            <c:if test="${pageInfo.pages >= 13}">
                <%--当前页小于7,输出1-10...尾页--%>
                <c:if test="${pageInfo.pageNum < 7}">
                    <c:forEach begin="1" end="10" var="p">
                        <c:if test="${pageInfo.pageNum == p}">
                            <li><span class="dot-page">${p}</span></li>
                        </c:if>
                        <c:if test="${pageInfo.pageNum != p}">
                            <li><a href="?page=${p}&pageSize=${pageInfo.size}">${p}</a></li>
                        </c:if>
                    </c:forEach>
                    <li> <span class="dot-page">...</span></li>
                    <c:forEach begin="${pageInfo.pages - 1}" end="${pageInfo.pages}" var="p">
                        <li><a href="?page=2&pageSize=${pageInfo.size}">${p}</a></li>
                    </c:forEach>
                </c:if>
                <%--当前页大于等于7且小于pages-4:输出1，2... 当前页-3__num+3...尾页--%>
                <c:if test="${pageInfo.pageNum >= 7 and pageInfo.pageNum < (pageInfo.pages-4)}">
                    <li><a href="?page=1&pageSize=${pageInfo.size}">1</a></li>
                    <li><a href="?page=2&pageSize=${pageInfo.size}">2</a></li>
                    <li> <span class="dot-page">...</span></li>
                    <c:forEach begin="${pageInfo.pageNum - 3}" end="${pageInfo.pageNum + 3}" var="p">
                        <c:if test="${pageInfo.pageNum == p}">
                            <li><span class="dot-page">${p}</span></li>
                        </c:if>
                        <c:if test="${pageInfo.pageNum != p}">
                            <li><a href="?page=${p}&pageSize=${pageInfo.size}">${p}</a></li>
                        </c:if>
                    </c:forEach>
                    <li> <span class="dot-page">...</span></li>
                    <c:forEach begin="${pageInfo.pages - 1}" end="${pageInfo.pages}" var="p">
                        <li><a href="?page=2&pageSize=${pageInfo.size}">${p}</a></li>
                    </c:forEach>
                </c:if>

                <%--当前页>=pages-4 输出1-(14-pages+pnum) 当前页-3---pages--%>
                <c:if test="${pageInfo.pageNum >= (pageInfo.pages-4)}">
                    <c:forEach begin="1" end="${8 - pageInfo.pages + pageInfo.pageNum}" var="p">
                        <li><a href="?page=${p}&pageSize=${pageInfo.size}">${p}</a></li>
                    </c:forEach>
                    <li> <span class="dot-page">...</span></li>
                    <c:forEach begin="${pageInfo.pageNum - 3}" end="${pageInfo.pages}" var="p">
                        <c:if test="${pageInfo.pageNum == p}">
                            <li><span class="dot-page">${p}</span></li>
                        </c:if>
                        <c:if test="${pageInfo.pageNum != p}">
                            <li><a href="?page=${p}&pageSize=${pageInfo.size}">${p}</a></li>
                        </c:if>
                    </c:forEach>
                </c:if>

            </c:if>

            <li><a href="?page=${pageInfo.nextPage}&pageSize=${pageInfo.size}"class="btn
                            <c:if test="${pageInfo.pageNum >= pageInfo.pages}">
                                disabled
                            </c:if>">下一页</a></li>
            <li>
                <a href="?page=${pageInfo.pages}&pageSize=${pageInfo.size}" aria-label="Next" class="btn
                            <c:if test="${pageInfo.pageNum >= pageInfo.pages}">
                                disabled
                            </c:if>"
                >尾页</a>
            </li>
        </ul>
    </div>

</div>