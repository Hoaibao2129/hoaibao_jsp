package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <script src=\"https://kit.fontawesome.com/54f0cb7e4a.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("   <link type=\"text/css\" rel=\"stylesheet\" href=\"style.css\"/>\n");
      out.write("   <script src=\"script.js\" type=\"text/javascript\"></script>\n");
      out.write(" \n");
      out.write("    <title>Website - NH??M 3</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <secsion class=\"top\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"top-logo\">\n");
      out.write("                    <img src=\"image/bao.png\" alt=\"\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"top-menu-items\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li>SMARTPHONE\n");
      out.write("                            <ul class=\"top-menu-item\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"\">SAMSUNG</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"\">APPLE</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"\">XIAOMI</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"\">OPPO</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li>TABLET\n");
      out.write("                            <ul class=\"top-menu-item\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"\">SAMSUNG</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"\">APPLE</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"\">XIAOMI</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"\">OPPO</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li>LAPTOP</li>\n");
      out.write("                        <li>Flast sale</li>\n");
      out.write("                        <li>Hot items</li>\n");
      out.write("                        <li>MUA TH??? N???P NAY</li>\n");
      out.write("                        <li>Tin t???c</li>\n");
      out.write("                        <li>Th??ng tin</li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"top-menu-icons\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li>\n");
      out.write("                            <input type=\"text\" placeholder=\"t??m ki???m\">\n");
      out.write("                            <i class=\"fas fa-search\"></i>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <i class=\"fas fa-user-secret\"></i>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <i class=\"fas fa-shopping-cart\"></i>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </secsion>\n");
      out.write("    <!-- -----------------------SLlDER---------------------------------------------- -->\n");
      out.write("    <section class=\"sliders\">\n");
      out.write("            <div class=\"aspect-ratio-169\">\n");
      out.write("                <img src=\"image/anh.webp\" alt=\"\">\n");
      out.write("                <img src=\"image/anh11.webp\" alt=\"\">\n");
      out.write("                <img src=\"image/bgr1.jpg\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"dot-container\">\n");
      out.write("                <div class=\"dot active\"></div>\n");
      out.write("                <div class=\"dot\"></div>\n");
      out.write("                <div class=\"dot\"></div>\n");
      out.write("           </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- -------------------------Footer -->\n");
      out.write("    <section class=\"footer\">\n");
      out.write("        <div class=\"footer-container\">\n");
      out.write("            <p>T???i ???ng d???ng c???a NH??M 3</p>\n");
      out.write("            <div class=\"app-google\">\n");
      out.write("                <a href=\"\"><img src=\"image/appstore.jpg\" alt=\"\"></a>\n");
      out.write("                <a href=\"\"> <img src=\"image/googleplay.jpg\" alt=\"\"></a>\n");
      out.write("            </div>\n");
      out.write("            <p>Nh???n b???n tin c???a NH??M 3</p>\n");
      out.write("            <div class=\"input-email\">\n");
      out.write("                <input type=\"text\" placeholder=\"Nh???p email c???a b???n\">\n");
      out.write("                <i class=\"fas fa-arrow-left\"></i>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-items\">\n");
      out.write("                <li><a href=\"\"><img src=\"image/dathongbao.png\" alt=\"\"></a></li>\n");
      out.write("                <li><a href=\"\">Li??n h???</a></li>\n");
      out.write("                <li><a href=\"\">Tuy???n d???ng</a></li>\n");
      out.write("                <li><a href=\"\">Gi???i thi???u</a></li>\n");
      out.write("                <li><a href=\"\"><i class=\"fab fa-facebook-f\"></i></a><a href=\"\"><i class=\"fab fa-youtube\"></i></a></li>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-text\">\n");
      out.write("                ?????i H???c S?? Ph???m - ?????i H???c ???? N???ng - Khoa Tin H???c  <br>\n");
      out.write("?????a ch??? Li??n H???: 459 T??n ?????c Th???ng, Ho?? Kh??nh Nam, Li??n Chi???u, ???? N???ng 550000 <br>\n");
      out.write("?????t h??ng online : 0123 456 789 .\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-bottom\">\n");
      out.write("                 ??NHOM_3 All rights reserved\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("   <script src=\"js/script.js\" type=\"text/javascript\"></script>\n");
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
