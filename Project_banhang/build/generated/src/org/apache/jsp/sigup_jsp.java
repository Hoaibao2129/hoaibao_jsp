package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sigup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write(" \n");
      out.write("   \n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write(" \n");
      out.write("  \n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write(" <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("</head>\n");
      out.write(" \n");
      out.write("<body>\n");
      out.write("  \n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("  <section class=\"container-fluid\">\n");
      out.write("   \n");
      out.write("    <section class=\"row justify-content-center\">\n");
      out.write("      <section class=\"col-12 col-sm-6 col-md-4\">\n");
      out.write("        <form class=\"form-container\">\n");
      out.write("\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("\n");
      out.write("          <h4 class=\"text-center font-weight-bold\"> Đăng Ký Tài Khoản </h4>\n");
      out.write("          <label for=\"InputEmail1\">Nhập Email</label>\n");
      out.write("           <input type=\"email\" class=\"form-control\" id=\"InputEmail1\" aria-describeby=\"emailHelp\" placeholder=\"Email\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <label for=\"InputPassword1\">Nhập Tên Tài Khoản</label>\n");
      out.write("          <input type=\"password\" class=\"form-control\" id=\"InputPassword1\" placeholder=\"Tên Tài Khoản\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <label for=\"InputPassword1\">Nhập Mật Khẩu</label>\n");
      out.write("          <input type=\"password\" class=\"form-control\" id=\"InputPassword1\" placeholder=\"Mật Khẩu\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <label for=\"InputPassword1\">Nhập Lại Mật Khẩu</label>\n");
      out.write("          <input type=\"password\" class=\"form-control\" id=\"InputPassword1\" placeholder=\"Mật Khẩu\">\n");
      out.write("        </div>\n");
      out.write("        <button type=\"submit\" class=\"btn btn-primary btn-block\">Đăng Ký</button>\n");
      out.write("       \n");
      out.write("        </form>\n");
      out.write("      </section>\n");
      out.write("    </section>\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
