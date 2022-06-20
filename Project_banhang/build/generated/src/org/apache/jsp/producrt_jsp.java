package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class producrt_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items_end_begin;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_value_type_maxFractionDigits_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items_end_begin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatNumber_value_type_maxFractionDigits_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items_end_begin.release();
    _jspx_tagPool_fmt_formatNumber_value_type_maxFractionDigits_nobody.release();
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script src=\"https://kit.fontawesome.com/54f0cb7e4a.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Menu.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("            <!-- --------------------------Product-------------------------------- -->\n");
      out.write("        <section class=\"product\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"product-top row\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"product-content row\">\n");
      out.write("                    <div class=\"product-content-left row\">\n");
      out.write("                        <div class=\"product-content-left-big-img\">\n");
      out.write("                            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${chiTietsp.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"product-content-left-small-img\">\n");
      out.write("                        <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${chiTietsp.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\">\n");
      out.write("                        <img src=\"image/hb.png\" alt=\"\">\n");
      out.write("                        <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${chiTietsp.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\">\n");
      out.write("                        <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${chiTietsp.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"product-content-right\">\n");
      out.write("                    <div class=\"product-content-right-product-name\">\n");
      out.write("                        <h1>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${chiTietsp.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h1>\n");
      out.write("                        <p>MSP: 57E2969</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"product-content-right-product-price\">\n");
      out.write("                        <p>");
      if (_jspx_meth_fmt_formatNumber_0(_jspx_page_context))
        return;
      out.write("<sup>đ</sup></p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"product-content-right-product-color\">\n");
      out.write("                        <p><span style=\"font-weight: bold;\">Màu sắc</span>:Xanh Ngọc Nhạt <span style=\"color: red;\">*</span></p>\n");
      out.write("                        <div class=\"product-content-right-product-color-img\">\n");
      out.write("                            <img src=\"image/spcolor.png\" alt=\"\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"product-content-right-product-size\">\n");
      out.write("                        <p style=\"font-weight: bold;\">Dung Lượng:</p>\n");
      out.write("                        <div class=\"size\">\n");
      out.write("                            <a><span>32GB</span></a>\n");
      out.write("                            <span>64GB</span>\n");
      out.write("                            <span>128GB</span>\n");
      out.write("                            <span>236GB</span>\n");
      out.write("                            <span>512GB</span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"quantity\">\n");
      out.write("                        <p style=\"font-weight: bold;\">Số lượng:</p>\n");
      out.write("                        <input type=\"number\" name=\"num\"  value=\"1\"> \n");
      out.write("                    </div>\n");
      out.write("                    <p style=\"color: red;\">Vui lòng chọn dung lượng bộ nhớ</p>\n");
      out.write("                    <div class=\"product-content-right-product-button\">\n");
      out.write("                        <button><i class=\"fas fa-shopping-cart\"></i> <a href=\"cart?id=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${chiTietsp.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">MUA HÀNG</a></button>\n");
      out.write("                        <button><p>TÌM TẠI CỬA HÀNG</p></button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"product-content-right-product-icon\">\n");
      out.write("                        <div class=\"product-content-right-product-icon-item\">\n");
      out.write("                            <i class=\"fas fa-phone-alt\"></i> <p>Hotline</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"product-content-right-product-icon-item\">\n");
      out.write("                            <i class=\"far fa-comments\"></i> <p>Chat</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"product-content-right-product-icon-item\">\n");
      out.write("                            <i class=\"far fa-envelope\"></i><p>Mail</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"product-content-right-product-QR\">\n");
      out.write("                        <img src=\"image/qrcode2.png\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"product-content-right-bottom\">\n");
      out.write("                        <div class=\"product-content-right-bottom-top\">\n");
      out.write("                            ∨\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"product-content-right-bottom-content-big\">\n");
      out.write("                            <div class=\"product-content-right-bottom-content-title row\">\n");
      out.write("                                <div class=\"product-content-right-bottom-content-title-item chitiet\">\n");
      out.write("                                    <p>Giới Thiệu</p>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-content-right-bottom-content-title-item baoquan\">\n");
      out.write("                                    <p>Chi Tiết</p>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-content-right-bottom-content-title-item\">\n");
      out.write("                                    <p>Tham khảo dung lượng</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"product-content-right-bottom-content\">\n");
      out.write("                                <div class=\"product-content-right-bottom-content-chitiet\">\n");
      out.write("                                    ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${chiTietsp.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-content-right-bottom-content-baoquan\">\n");
      out.write("                                    Chi tiết sản phẩm : \n");
      out.write("\n");
      out.write("                                    * Công nghệ màn hình: Super AMOLED. <br><br>\n");
      out.write("\n");
      out.write("                                    * Độ phân giải: 1080 x 2400 pixels.<br><br>\n");
      out.write("\n");
      out.write("                                    * Màn hình rộng: 6.5 inches.<br><br>\n");
      out.write("\n");
      out.write("                                    * Độ phân giải: 64 MP + 12 MP + 5 MP + 5 MP.<br><br>\n");
      out.write("\n");
      out.write("                                    * Quay phim: 4K@30fps, 1080p@30/120fps; gyro-EIS. <br><br>\n");
      out.write("\n");
      out.write("                                    * Hệ điều hành: Android 11, One UI 3.0.<br><br>\n");
      out.write("\n");
      out.write("                                    * Chipset (hãng SX CPU): Qualcomm SM7125 Snapdragon 720G (8 nm).\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </section>\n");
      out.write("    <!-- \"product-related\"------------------- -->\n");
      out.write("    <section class=\"product-related container\">\n");
      out.write("        <div class=\"product-related-title\">\n");
      out.write("            <p>SẢN PHẨM LIÊN QUAN</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\" row product-content\">\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- -------------------------Footer -->\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"script.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>                      ");
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

  private boolean _jspx_meth_fmt_formatNumber_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_type_maxFractionDigits_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_0.setParent(null);
    _jspx_th_fmt_formatNumber_0.setType("number");
    _jspx_th_fmt_formatNumber_0.setMaxFractionDigits(3);
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${chiTietsp.price}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_type_maxFractionDigits_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_type_maxFractionDigits_nobody.reuse(_jspx_th_fmt_formatNumber_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setBegin(1);
    _jspx_th_c_forEach_0.setEnd(5);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listcateID}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("o");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <div class=\"product-related-item\">\n");
          out.write("                    <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\">\n");
          out.write("                    <a href=\"chiTietsp?pid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"><h1>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h1></a>\n");
          out.write("                    <p>");
          if (_jspx_meth_fmt_formatNumber_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("<sup>đ</sup></p>\n");
          out.write("                </div>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_1 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_type_maxFractionDigits_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_1.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_fmt_formatNumber_1.setType("number");
    _jspx_th_fmt_formatNumber_1.setMaxFractionDigits(3);
    _jspx_th_fmt_formatNumber_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.price}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_fmt_formatNumber_1 = _jspx_th_fmt_formatNumber_1.doStartTag();
    if (_jspx_th_fmt_formatNumber_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_type_maxFractionDigits_nobody.reuse(_jspx_th_fmt_formatNumber_1);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_type_maxFractionDigits_nobody.reuse(_jspx_th_fmt_formatNumber_1);
    return false;
  }
}
