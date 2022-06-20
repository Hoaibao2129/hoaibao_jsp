<%-- 
    Document   : Menu
    Created on : Nov 23, 2021, 10:30:53 PM
    Author     : ASUS
--%>

<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<secsion class="top">
    <div class="container">
        <div class="row">
            <div class="top-logo">
                <a href="home"><img src="image/hb.png" alt=""></a>  
            </div>
            <div class="top-menu-items">
                <ul>
                    <li>SMARTPHONE
                        <ul class="top-menu-item">
                            <c:forEach items="${listC}" var="o">
                                <li>
                                    <a href="category?cid=${o.cid}">${o.cname}</a>
                                </li>
                            </c:forEach>

                        </ul>
                    </li>
                    <li>TABLET
                        <ul class="top-menu-item">
                            <c:forEach items="${listCC}" var="o">
                                <li>
                                    <a href="category?cid=${o.cid}">${o.cname}</a>
                                </li>
                            </c:forEach>

                        </ul>
                    </li>
                    <c:forEach items="${listLaptop}" var="o">
                        <li> <a href="category?cid=${o.cid}" style="color: blue">${o.cname}</a></li>
                        </c:forEach>
                    <li><a href="NewSp" style="color: blue">Sản Phẩm Mới Nhất</a></li>
                        <c:forEach items="${listSmartwatch}" var="o">
                        <li><a href="category?cid=${o.cid}" style="color: blue">${o.cname}</a></li>
                        </c:forEach>

                    <c:if test="${sessionScope.acc != null}">
                        <li><a href="login.jsp" style="color: blue">Đăng Xuất</a></li>
                        <li><a href="admin" style="color: blue">ADMIN</a></li>
                        </c:if>
                        <c:if test="${sessionScope.acc == null}">
                        <li><a href="login.jsp"style="color: blue">Đăng Nhập</a></li>
                        </c:if>
                         

                </ul>


            </div>

            <form class="example" action="serchControl" method="post">
                <input  name="txt" type="text" placeholder="Search..">
                <button type="submit"><i class="fa fa-search"></i></button>
                
               
               
            </form>
            

           



        </div>
    </div>
</secsion>