
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/admin.css">
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm sản phẩm </span></a>
                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Xóa sản phẩm đã chọn</span></a>						
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>Mã SP</th>
                            <th>Tên</th>
                            <th>Hình ẢNH</th>
                            <th>Gía</th>
                            <th>Tùy Chọn</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listP}" var="o" >
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.id}</td>

                                <td>${o.name}</td>
                                <td>
                                    <img src="${o.image}">
                                </td>
                                <td><fmt:formatNumber type = "number" 
                                                  maxFractionDigits = "3" value = "${o.price}" /><sup>đ</sup></td>
                                <td>
                                    <a href="#editEmployeeModal"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="delete?pid=${o.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>

                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>${index}</b> out of <b>${endP}</b> entries</div>
                    <ul class="pagination">
                        <c:forEach begin="1" end="${endP}" var="i">
                            <li class="page-item"><a href = "admin?index=${i}">${i}</a></li>
                            </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Thêm sản phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Tên</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh 1</label>
                                <input name="image1" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh 2</label>
                                <input name="image2" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh 3</label>
                                <input name="image3" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh 4</label>
                                <input name="image4" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh 5</label>
                                <input name="image5" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Gía Tiền</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Loại sản phầm</label>
                                <textarea name="title" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Chi Tiết</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            <select name="category" class="form-select" aria-label="Default select example">
                                <c:forEach items="${listCC}" var="o">
                                    <option value="${o.cid}">${o.cname}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Quay lại">
                            <input type="submit" class="btn btn-success" value="Thêm SP">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Sửa Sản Phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Tên</label>
                                <input type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình Ảnh</label>
                                <input type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Chi Tiết</label>
                                <textarea class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Gía Tiền</label>
                                <input type="text" class="form-control" required>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Quay Lại">
                            <input type="submit" class="btn btn-info" value="Lưu">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Xóa SP khỏi kho</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Bạn có chắc muốn xóa sp này khỏi kho hàng</p>
                            <p class="text-warning"><small>Việc này sẽ không thể hoàn tác</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
        <script>

        </script>
    </body>
</html>
