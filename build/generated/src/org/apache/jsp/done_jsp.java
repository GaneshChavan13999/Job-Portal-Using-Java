package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class done_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("\t<head>\n");
      out.write("\t\t<title>Job Portal</title>\n");
      out.write("\t\t<meta charset=\"utf-8\" />\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"./assets/css/main.css\" />\n");
      out.write("\t\t<link href=\"https://fonts.googleapis.com/css?family=Flamenco\" rel=\"stylesheet\">\n");
      out.write("                <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"./assets/css/font-awesome.min.css\" type=\"text/css\">\n");
      out.write("                    <link rel=\"stylesheet\" href=\"./assets/css/style5.css\">\n");
      out.write("\n");
      out.write("\t</head>\n");
      out.write("\t<body id=\"top\">\n");
      out.write("            <div class=\"wrapper\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <nav id=\"sidebar\" style=\"text-align: center;\">\n");
      out.write("            <div class=\"sidebar-header\">\n");
      out.write("                      <div><img src=\"images/6.jpg\" alt=\"user-img\" class=\"img-circle\" style=\"width: 200px;height: 200px;\"></div>\n");
      out.write("\t\t\t\t\t  <h3 style=\"font-size: 35px; \">Welcome..<br> ABC</h3>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                <nav class=\"sidebar-nav\">\n");
      out.write("                    <div id=\"sidebarnav\">\n");
      out.write("                        \n");
      out.write("                        <a class=\"waves-effect waves-dark\" href=\"#\" aria-expanded=\"false\"><span class=\"hide-menu\">My Profile</span></a><br>\n");
      out.write("    \n");
      out.write("                        <a href=\"#\" aria-expanded=\"false\">My Applications </a><br>\n");
      out.write("                        <a class=\"waves-effect waves-dark\" href=\"#\" aria-expanded=\"false\"><span class=\"hide-menu\">   Inbox </span></a><br>\n");
      out.write("                        <a class=\"waves-effect waves-dark\" href=\"#\" aria-expanded=\"false\"><span class=\"hide-menu\">     Account Setting</span></a><br>\n");
      out.write("                        <a class=\"waves-effect waves-dark\" href=\"#\" aria-expanded=\"false\" coords=\"\"><span class=\"hide-menu\"> Logout          </span></a><br>\n");
      out.write("                     \n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            \n");
      out.write("        </nav>\n");
      out.write("                 <div id=\"content\">\n");
      out.write("                   <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("\t\t\t\t\n");
      out.write("                                    <button type=\"button\" id=\"sidebarCollapse\" class=\"btn btn-dark navbar-btn \">\n");
      out.write("                                        <span></span>\n");
      out.write("                                        <span></span>\n");
      out.write("                                        <span></span>\n");
      out.write("                                    </button><div class=\"container\">\n");
      out.write("\t\t\t\t  <a class=\"navbar-brand\" href=\"#\"><i class=\"fa fa-handshake-o\" aria-hidden=\"true\"></i> GET A JOB</a>\n");
      out.write("\t\t\t\t  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("\t\t\t\t\t<span class=\"navbar-toggler-icon\"></span>\n");
      out.write("\t\t\t\t  </button>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("\t\t\t\t\t<ul class=\"navbar-nav mr-auto\">\n");
      out.write("\t\t\t\t\t  <li class=\"nav-item active\">\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link\" href=\"index.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("\t\t\t\t\t  </li>  \n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("                                      <ul class=\"navbar-nav\">\n");
      out.write("                                          <li class=\"nav-item\" style=\"color: white;\">                                                                                                                                \n");
      out.write("                                                   Logged in as ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                            </li>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                        </ul>\n");
      out.write("                                            <ul class=\"navbar-nav\">\n");
      out.write("                                                    <li class=\"nav-item\">\n");
      out.write("                                                        <form  action=\"Logout\" method=\"get\" class=\"p-0 m-0\">\n");
      out.write("                                                            <input type=\"submit\" value=\"Logout\" class=\"btn btn-success\">\n");
      out.write("                                                      </form>                                                            \n");
      out.write("                                                    </li>\n");
      out.write("                                            </ul>\n");
      out.write("\t\t\t\t  </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</nav>\n");
      out.write("                 </div>\n");
      out.write("                                            <h1><b>Applied SuccessFully</b></h1>\n");
      out.write("            </div>\n");
      out.write("        </body></html>");
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
