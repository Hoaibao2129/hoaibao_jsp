<%-- 
    Document   : producrt
    Created on : Oct 25, 2021, 8:14:21 PM
    Author     : ASUS
--%>
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
        <jsp:include page="Menu.jsp"></jsp:include>

            <!-- --------------------------Product-------------------------------- -->
        <section class="product">
            <div class="container">
                <div class="product-top row">

                </div>
                <div class="product-content row">
                    <div class="product-content-left row">
                        <div class="product-content-left-big-img">
                            <img src="${chiTietsp.image}" alt="">
                    </div>
                    <div class="product-content-left-small-img">
                        <img src="${chiTietsp.image2}" alt="">
                        <img src="${chiTietsp.image3}" alt="">
                        <img src="${chiTietsp.image4}" alt="">
                        <img src="${chiTietsp.image5}" alt="">
                    </div>
                </div>
                <div class="product-content-right">
                    <div class="product-content-right-product-name">
                        <h1>${chiTietsp.name}</h1>
                        <p>MSP: 57E2969</p>
                    </div>
                    <div class="product-content-right-product-price">
                        <p><fmt:formatNumber type = "number" 
                                          maxFractionDigits = "3" value = "${chiTietsp.price}" /><sup>đ</sup></p>
                    </div>
                    <div class="product-content-right-product-color">
                        <p><span style="font-weight: bold;">Màu sắc</span>:Xanh Ngọc Nhạt <span style="color: red;">*</span></p>
                        <div class="product-content-right-product-color-img">
                            <img src="image/spcolor.png" alt="">
                        </div>
                    </div>
                    
                    <div class="quantity">
                        <p style="font-weight: bold;">Số lượng: 1</p>
                        
                    </div>
                    
                    <div class="product-content-right-product-button">
                        <button><i class="fas fa-shopping-cart"></i> <a href="cart?id=${chiTietsp.id}">MUA HÀNG</a></button>
                        <button><p>TÌM TẠI CỬA HÀNG</p></button>
                    </div>
                    <div class="product-content-right-product-icon">
                        <div class="product-content-right-product-icon-item">
                            <i class="fas fa-phone-alt"></i> <p>Hotline</p>
                        </div>
                        <div class="product-content-right-product-icon-item">
                            <i class="far fa-comments"></i> <p>Chat</p>
                        </div>
                        <div class="product-content-right-product-icon-item">
                            <i class="far fa-envelope"></i><p>Mail</p>
                        </div>
                    </div>
                    <div class="product-content-right-product-QR">
                        <img src="image/qrcode2.png" alt="">
                    </div>
                    <div class="product-content-right-bottom">
                        <div class="product-content-right-bottom-top">
                            ∨
                        </div>
                        <div class="product-content-right-bottom-content-big">
                            <div class="product-content-right-bottom-content-title row">
                                <div class="product-content-right-bottom-content-title-item chitiet">
                                    <p>Giới Thiệu</p>
                                </div>
                                <div class="product-content-right-bottom-content-title-item baoquan">
                                    <p>Chi Tiết</p>
                                </div>
                                <div class="product-content-right-bottom-content-title-item">
                                    <p>Tham khảo dung lượng</p>
                                </div>
                            </div>
                            <div class="product-content-right-bottom-content">
                                <div class="product-content-right-bottom-content-chitiet">
                                    ${chiTietsp.description}
                                </div>
                                <div class="product-content-right-bottom-content-baoquan">
                                    Chi tiết sản phẩm : 

                                    * Công nghệ màn hình: Super AMOLED. <br><br>

                                    * Độ phân giải: 1080 x 2400 pixels.<br><br>

                                    * Màn hình rộng: 6.5 inches.<br><br>

                                    * Độ phân giải: 64 MP + 12 MP + 5 MP + 5 MP.<br><br>

                                    * Quay phim: 4K@30fps, 1080p@30/120fps; gyro-EIS. <br><br>

                                    * Hệ điều hành: Android 11, One UI 3.0.<br><br>

                                    * Chipset (hãng SX CPU): Qualcomm SM7125 Snapdragon 720G (8 nm).
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>

    </section>
    <!-- "product-related"------------------- -->
    <section class="product-related container">
        <div class="product-related-title">
            <p>SẢN PHẨM LIÊN QUAN</p>
        </div>
        <div class=" row product-content">
            <c:forEach begin="1" end="5" items="${listcateID}" var="o">
                <div class="product-related-item">
                    <img src="${o.image}" alt="">
                    <a href="chiTietsp?pid=${o.id}"><h1>${o.name}</h1></a>
                    <p><fmt:formatNumber type = "number" 
                                      maxFractionDigits = "3" value = "${o.price}" /><sup>đ</sup></p>
                </div>
            </c:forEach>
        </div>
    </section>
    <!-- -------------------------Footer -->
    <jsp:include page="Footer.jsp"></jsp:include>


    <script src="script.js"></script>



</body>
</html>                      