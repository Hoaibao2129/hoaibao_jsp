
package control;

import dao.DAO;
import entity.Category;
import entity.LoaiSP;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "adminControl", urlPatterns = {"/admin"})
public class adminControl extends HttpServlet {

    
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
        
        List<Category> list = dao.getAllCategorysAdmin();
        List<Product> listAdmin = dao.getProductpagin(index);
      // List<LoaiSP> listc = dao.getAllLoaiSP();
     //  List<Category> liscc = dao.getbyMaLoaisp(loaiSp);
        
      // request.setAttribute("listCC", liscc);
      //request.setAttribute("listC", listc);
      request.setAttribute("listCC", list);
        request.setAttribute("listP", listAdmin);
        request.setAttribute("endP", endPage);
        request.setAttribute("index", indexPG);
        
        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
