

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/style.css">
        <title>HOAIBAO_MOBILE</title>
    </head>
    <body>

        <jsp:include page="Menu.jsp"></jsp:include>
            <!-- -------------------------cart---------------- -->
            <section class="cart">
                <div class="container">
                    <div class="cart-top-wrap">
                        <div class="cart-top">
                            <div class="cart-top-cart cart-top-item">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                            <div class="cart-top-adress cart-top-item">
                                <i class="fas fa-map-marker-alt "></i>
                            </div>
                            <div class="cart-top-payment cart-top-item">
                                <i class="fas fa-money-check-alt"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="cart-content row">
                        <div class="cart-content-left">
                            <table>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Tên sản phẩm</th>


                                    <th>SL</th>
                                    <th>Thành tiền</th>
                                    <th>Xóa</th>
                                </tr>
                            <c:forEach items="${list}" var="o">
                                <tr>
                                    <td><img src="${o.image}" alt=""></td>
                                    <td><p>${o.name}</p></td>
                                    <td>  <a href="sub?id=${o.id}"><button class="btnSub">-</button></a> <strong>${o.amount}</strong>
                                        <a href="cart?id=${o.id}"><button class="btnAdd">+</button></a></td>
                                    <td><p><fmt:formatNumber type = "number" 
                                                      maxFractionDigits = "3" value = "${o.price}" /><sup>đ</sup></td>
                                    <td><a href="remove?id=${o.id}">X</a></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <div class="cart-content-right">
                        <table>
                            <tr>
                                <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                            </tr>
                            <tr>
                                <td>VAT</td>
                                <td><fmt:formatNumber type = "number" 
                                                  maxFractionDigits = "3" value = "${vat}" /><sup>đ</sup></td>
                            </tr>
                            <tr>
                                <td>TỔNG TIỀN HÀNG</td>
                                <td><p><fmt:formatNumber type = "number" 
                                                  maxFractionDigits = "3" value = "${sum}" /><sup>đ</sup></p></td>
                            </tr>

                        </table>

                        <div class="cart-content-right-button">
                            <a href="home"><button>TIẾP TỤC MUA SẮM</button></a>
                            <a href="order"><button>THANH TOÁN</button></a>
                        </div>
                        <div class="cart-content-right-dangnhap">
                            <p>TÀI KHOẢN Web</p> <br>
                            <p>Hãy <a href="">Đăng nhập</a>tài khoản của bạn để tích điểm thành viên</p>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- -------------------------Footer -->
        <jsp:include page="Footer.jsp"></jsp:include>


        <script src="script.js"></script>



    </body>
</html>                      
