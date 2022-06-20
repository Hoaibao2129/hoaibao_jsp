
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
    </head>
    <jsp:include page="Menu.jsp"></jsp:include>


        <!-- --------------------------Cartegory -->
        <section class="cartegory">
            
            <div class="container">
                <div class="row">
                    <div class="cartegory-left">
                        <ul>
                            <li class="cartegory-left-li "><a href="#">SMARTPHONE</a>
                                <ul>
                                <c:forEach items="${listC}" var="o">
                                    <li><a href="category?cid=${o.cid}">${o.cname}</a></li>
                                    </c:forEach>  
                            </ul>
                        </li>
                        <li class="cartegory-left-li"><a href="#">TABLET</a>
                            <ul>
                                <c:forEach items="${listCC}" var="o">
                                    <li><a href="category?cid=${o.cid}">${o.cname}</a></li>
                                    </c:forEach> 
                            </ul>
                        </li>
                        <c:forEach items="${listLaptop}" var="o">
                            <li class="cartegory-left-li"><a href="category?cid=${o.cid}">${o.cname}</a></li>
                            </c:forEach>
                            <c:forEach items="${listSmartwatch}" var="o">
                            <li class="cartegory-left-li"><a href="category?cid=${o.cid}">${o.cname}</a></li>
                            </c:forEach>

                    </ul>

                </div>
                <div class="cartegory-right row">
                    
                    
                    
                    
                    <div class="cartegory-right-content row">
                        <c:forEach items="${listP}" var="o">
                            <div class="cartegory-right-content-item">
                                <img src="${o.image}" alt="">
                                <h1><a href="chiTietsp?pid=${o.id}" style="color: black">${o.name}</a></h1>
                                <p style="color: red"><fmt:formatNumber type = "number" 
                                                  maxFractionDigits = "3" value = "${o.price}" /><sup>đ</sup></p>
                            </div>
                        </c:forEach> 
                    </div> 

                    <div class="cartegory-right-bottom row">
                        <div class="cartegory-right-bottom-items">
                            <p>Hiện Thị Trang Số  ${index}<span>|</span> ${endP} Trang Sản Phẩm</p>
                        </div>
                        <div class="cartegory-right-bottom-items">
                            <c:forEach begin="1" end="${endP}" var="i">
                                <a href = "home?index=${i}">${i}</a>
                            </c:forEach>
                        </div>
                    </div> 
                </div>

            </div>
        </div>
    </section>

    <!-- -------------------------Footer -->

    <jsp:include page="Footer.jsp"></jsp:include>

    <script src="js/script.js" type="text/javascript"></script>


</body>
</html>                      