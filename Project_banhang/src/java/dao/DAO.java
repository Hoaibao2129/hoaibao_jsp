/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import entity.LoaiSP;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import entity.Product1;

/**
 *
 * @author trinh
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT*FROM product";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getAllNewsp() {
        List<Product> list = new ArrayList<>();
        String query = "select top 12 * from product\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllcCategorys() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category where MALOAISP = 1";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllcCategorys1() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category where MALOAISP = 2";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductsbyCID1(int cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where cateID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductsbyCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where cateID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductsbySearch(String search) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where name like ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductsbyID(String id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    // đếm số lượng sản phẩm trong product
    public int getSoluongSp() {

        String query = "SELECT count(*) from product ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public int getSoluongSpsearch(String txt) {

        String query = "select count(*) from product\n"
                + "where name like ? ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txt + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public List<Category> getAllLaptop() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category where MALOAISP = 3";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllSmartWatch() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category where MALOAISP = 4";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductpagin(int index) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * from product \n"
                + "order by id \n"
                + "offset ? rows fetch next 12 rows only ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 12);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product1> getProductpagin1(int index) {
        List<Product1> list = new ArrayList<>();
        String query = "SELECT * from product \n"
                + "order by id \n"
                + "offset ? rows fetch next 12 rows only ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 12);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product1(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Account login(String user, String pass) {

        String query = "select * from account\n"
                + "where [user] = ? and pass = ? ";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));

            }
        } catch (Exception e) {
        }

        return null;
    }

    public Account checkAccout(String user) {

        String query = "select * from account\n"
                + "where [user] = ?  ";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));

            }
        } catch (Exception e) {
        }

        return null;
    }

    public void sigup(String user, String pass) {
        String query = "INSERT INTO dbo.Account\n"
                + "\n"
                + "VALUES\n"
                + "( ?, ?, 0, 0 )";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteProduct(String pid) {
        String query = "delete from product where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public List<LoaiSP> getAllLoaiSP() {
        List<LoaiSP> list = new ArrayList<>();
        String query = "select * from LOAISP";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new LoaiSP(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getbyMaLoaisp(String maloaiSP) {
        List<Category> list = new ArrayList<>();
        String query = "select * from category where MALOAISP = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maloaiSP);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategorysAdmin() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void insert(String name, String image1, String image2, String image3, String image4, String image5,
            String price, String title, String description, String category) {
        String query = "INSERT INTO [dbo].[product]\n"
                + "(\n"
                + "    [name],\n"
                + "    [image],\n"
                + "    [image2],\n"
                + "    [image3],\n"
                + "    [image4],\n"
                + "    [image5],\n"
                + "    [price],\n"
                + "    [title],\n"
                + "    [description],\n"
                + "    [cateID],\n"
                + "    [sell_ID]\n"
                + ")\n"
                + "VALUES" + "(?,?,?,?,?,?,?,?,?,?,1)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image1);
            ps.setString(3, image2);
            ps.setString(4, image3);
            ps.setString(5, image4);
            ps.setString(5, image5);
            ps.setString(7, price);
            ps.setString(8, title);
            ps.setString(9, description);
            ps.setString(10, category);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    
    
    
    public void insertproduct(String name, String image,
            String image1, String image2, String image3, String price,
            String title, String description, String category,
            String specifications, String shipping, String warranty) {
        String query = "INSERT [dbo].[product] ([name], [image], [price],"
                + " [description], [title], [cateID], [image1], [image2], [image3], [specifications], [shipping], [warranty])"
                + " VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(7, image1);
            ps.setString(8, image2);
            ps.setString(9, image3);
            ps.setString(3, price);
            ps.setString(5, title);
            ps.setString(4, description);
            ps.setString(10, specifications);
            ps.setString(11, shipping);
            ps.setString(12, warranty);
            ps.setString(6, category);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllcCategorys();
        List<Category> listCC = dao.getAllcCategorys1();
        List<Category> listLaptop = dao.getAllLaptop();
        List<Category> listSmartwatch = dao.getAllSmartWatch();
        List<Product> listpg = dao.getProductpagin(1);

        for (Product o : list) {
            System.out.println(o);
        }
    }

}
