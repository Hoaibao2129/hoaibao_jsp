package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class delivery_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <script src=\"https://kit.fontawesome.com/54f0cb7e4a.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <title>HOAIBAO_MOBILE</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("\n");
      out.write("     <!-- -------------------------Delivery---------------- -->\n");
      out.write(" <section class=\"delivery\">\n");
      out.write("     <div class=\"container\">\n");
      out.write("        <div class=\"delivery-top-wrap\">\n");
      out.write("            <div class=\"delivery-top\">\n");
      out.write("                <div class=\"delivery-top-delivery delivery-top-item\">\n");
      out.write("                   <i class=\"fas fa-shopping-cart\"></i>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"delivery-top-adress delivery-top-item\">\n");
      out.write("                   <i class=\"fas fa-map-marker-alt \"></i>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"delivery-top-payment delivery-top-item\">\n");
      out.write("                   <i class=\"fas fa-money-check-alt\"></i>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("     </div>\n");
      out.write("     <div class=\"container\">\n");
      out.write("         <div class=\"delivery-content row\">\n");
      out.write("             <div class=\"delivery-content-left\">\n");
      out.write("                <p>Vui l??ng ch???n ?????a ch??? giao h??ng</p>\n");
      out.write("                <div class=\"delivery-content-left-dangnhap row\">\n");
      out.write("                    <i class=\"fas fa-sign-in-alt\"></i>\n");
      out.write("                    <p>????ng nh???p (N???u b???n ???? c?? t??i kho???n )</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"delivery-content-left-khachle row\">\n");
      out.write("                    <input checked name=\"loaikhach\" type=\"radio\" >\n");
      out.write("                    <p> <span style=\"font-weight: bold;\">Kh??ch l???</span> (N???u b???n kh??ng mu???n l??u l???i th??ng tin)</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"delivery-content-left-dangky row\">\n");
      out.write("                    <input  name=\"loaikhach\" type=\"radio\" >\n");
      out.write("                    <p> <span style=\"font-weight: bold;\">????ng k??</span> (T???o m???i t??i kho???n v???i th??ng tin b??n d?????i)</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"delivery-content-left-input-top row\">\n");
      out.write("                    <div class=\"delivery-content-left-input-top-item\">\n");
      out.write("                        <label for=\"\">H??? t??n <span style=\"color: red;\">*</span></label>\n");
      out.write("                        <input type=\"text\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"delivery-content-left-input-top-item\">\n");
      out.write("                        <label for=\"\">??i???n tho???i <span style=\"color: red;\">*</span></label>\n");
      out.write("                        <input type=\"text\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"delivery-content-left-input-top-item\">\n");
      out.write("                        <label for=\"\">T???nh/Tp <span style=\"color: red;\">*</span></label>\n");
      out.write("                        <input type=\"text\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"delivery-content-left-input-top-item\">\n");
      out.write("                        <label for=\"\">Qu???n/Huy???n <span style=\"color: red;\">*</span></label>\n");
      out.write("                        <input type=\"text\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"delivery-content-left-input-bottom\">\n");
      out.write("                    <label for=\"\">?????a ch??? <span style=\"color: red;\">*</span></label>\n");
      out.write("                    <input type=\"text\">\n");
      out.write("                </div>\n");
      out.write("              <div class=\"delivery-content-left-button row\">\n");
      out.write("                <a href=\"\"><span>??</span><p>Quay l???i gi??? h??ng</p></a>\n");
      out.write("                <a href=\"payment.jsp\"><button><p style=\"font-weight: bold;\">THANH TO??N V?? GIAO H??NG</p></button></a>\n");
      out.write("              </div>\n");
      out.write("             </div>\n");
      out.write("             <div class=\"delivery-content-right\">\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>T??n s???n ph???m</th>\n");
      out.write("                        <th>Gi???m gi??</th>\n");
      out.write("                        <th>S??? l?????ng</th>\n");
      out.write("                        <th>Th??nh ti???n</th>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Samsung Galaxy A52</td>\n");
      out.write("                        <td>0%</td>\n");
      out.write("                        <td>1</td>\n");
      out.write("                        <td><p>8.790.000 <sup>??</sup></p></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                       <td>Samsung Galaxy A52s</td>\n");
      out.write("                       <td>-10%</td>\n");
      out.write("                       <td>1</td>\n");
      out.write("                       <td><p>11.790.000 <sup>??</sup></p></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td style=\"font-weight: bold;\" colspan=\"3\">T???ng</td>\n");
      out.write("                        <td style=\"font-weight: bold;\"><p><sup>??</sup></p></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                       <td style=\"font-weight: bold;\" colspan=\"3\">Thu??? VAT</td>\n");
      out.write("                       <td style=\"font-weight: bold;\"><p>194.010 <sup>??</sup></p></td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                       <td style=\"font-weight: bold;\" colspan=\"3\">T???ng ti???n h??ng</td>\n");
      out.write("                       <td style=\"font-weight: bold;\"><p><sup>??</sup></p></td>\n");
      out.write("                   </tr>\n");
      out.write("                </table>\n");
      out.write("           </div>\n");
      out.write("         </div>\n");
      out.write("       \n");
      out.write("     </div>\n");
      out.write(" </section>\n");
      out.write(" <!-- -------------------------Footer -->\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.jsp", out, false);
      out.write("\n");
      out.write("<script src=\"script.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>                      \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
