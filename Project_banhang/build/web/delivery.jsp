<%-- 
    Document   : delivery
    Created on : Oct 25, 2021, 8:12:06 PM
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
    <link rel="stylesheet" href="style.css">
    <title>HOAIBAO_MOBILE</title>
</head>
<body>
      
      

     <!-- -------------------------Delivery---------------- -->
 <section class="delivery">
     <div class="container">
        <div class="delivery-top-wrap">
            <div class="delivery-top">
                <div class="delivery-top-delivery delivery-top-item">
                   <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="delivery-top-adress delivery-top-item">
                   <i class="fas fa-map-marker-alt "></i>
                </div>
                <div class="delivery-top-payment delivery-top-item">
                   <i class="fas fa-money-check-alt"></i>
                </div>
            </div>
         </div>
     </div>
     <div class="container">
         <div class="delivery-content row">
             <div class="delivery-content-left">
                <p>Vui lòng chọn địa chỉ giao hàng</p>
                <div class="delivery-content-left-dangnhap row">
                    <i class="fas fa-sign-in-alt"></i>
                    <p>Đăng nhập (Nếu bạn đã có tài khoản )</p>
                </div>
                <div class="delivery-content-left-khachle row">
                    <input checked name="loaikhach" type="radio" >
                    <p> <span style="font-weight: bold;">Khách lẻ</span> (Nếu bạn không muốn lưu lại thông tin)</p>
                </div>
                <div class="delivery-content-left-dangky row">
                    <input  name="loaikhach" type="radio" >
                    <p> <span style="font-weight: bold;">Đăng ký</span> (Tạo mới tài khoản với thông tin bên dưới)</p>
                </div>
                <div class="delivery-content-left-input-top row">
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Họ tên <span style="color: red;">*</span></label>
                        <input type="text">
                    </div>
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Điện thoại <span style="color: red;">*</span></label>
                        <input type="text">
                    </div>
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Tỉnh/Tp <span style="color: red;">*</span></label>
                        <input type="text">
                    </div>
                    <div class="delivery-content-left-input-top-item">
                        <label for="">Quận/Huyện <span style="color: red;">*</span></label>
                        <input type="text">
                    </div>
                </div>
                <div class="delivery-content-left-input-bottom">
                    <label for="">Địa chỉ <span style="color: red;">*</span></label>
                    <input type="text">
                </div>
              <div class="delivery-content-left-button row">
                <a href=""><span>«</span><p>Quay lại giỏ hàng</p></a>
                <a href="payment.jsp"><button><p style="font-weight: bold;">THANH TOÁN VÀ GIAO HÀNG</p></button></a>
              </div>
             </div>
             <div class="delivery-content-right">
                <table>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>Giảm giá</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                    </tr>
                    <tr>
                        <td>Samsung Galaxy A52</td>
                        <td>0%</td>
                        <td>1</td>
                        <td><p>8.790.000 <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                       <td>Samsung Galaxy A52s</td>
                       <td>-10%</td>
                       <td>1</td>
                       <td><p>11.790.000 <sup>đ</sup></p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;" colspan="3">Tổng</td>
                        <td style="font-weight: bold;"><p><sup>đ</sup></p></td>
                    </tr>
                    <tr>
                       <td style="font-weight: bold;" colspan="3">Thuế VAT</td>
                       <td style="font-weight: bold;"><p>194.010 <sup>đ</sup></p></td>
                   </tr>
                   <tr>
                       <td style="font-weight: bold;" colspan="3">Tổng tiền hàng</td>
                       <td style="font-weight: bold;"><p><sup>đ</sup></p></td>
                   </tr>
                </table>
           </div>
         </div>
       
     </div>
 </section>
 <!-- -------------------------Footer -->
    <jsp:include page="Footer.jsp"></jsp:include>
<script src="script.js"></script>



</body>
</html>                      
