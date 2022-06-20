package control;

import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import dao.DAO;
import entity.Category;
import entity.Product;
import entity.Product1;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "HomeControl", urlPatterns = {"/home"})
public class HomeControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String indexPG = request.getParameter("index");
        if (indexPG == null) {
            indexPG = "1";
        }
        int index = Integer.parseInt(indexPG);

        DAO dao = new DAO();
        int cout = dao.getSoluongSp();
        int endPage = cout / 10;
        if (cout % 10 != 0) {
            endPage++;
        }

        //lấy dữ liệu từ catenory
        // các list dữ liệu từ Sql
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllcCategorys();
        List<Category> listCC = dao.getAllcCategorys1();
        List<Category> listLaptop = dao.getAllLaptop();
        List<Category> listSmartwatch = dao.getAllSmartWatch();
        List<Product> a = dao.getProductpagin(index);
        
        
        
        
        
        
        
        // đẩy dữ liệu
        //request.setAttribute("listP", list);
        request.setAttribute("listC", listC);
        request.setAttribute("listCC", listCC);
        request.setAttribute("listLaptop", listLaptop);
        request.setAttribute("listSmartwatch", listSmartwatch);
        request.setAttribute("endP", endPage);
       request.setAttribute("listP", a);
        request.setAttribute("index", index);
        // đẩy dữ liệu lên catenory 
        request.getRequestDispatcher("catenory.jsp").forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
