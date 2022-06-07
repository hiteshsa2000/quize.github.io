package test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet{
protected void doGet(HttpServletRequest req,

HttpServletResponse res)throws ServletException,IOException

{
HttpSession hs = req.getSession(false);
if(hs==null) {
req.setAttribute("msg","Session Expired...<br>");
}else {
hs.removeAttribute("ubean");
hs.invalidate();
req.setAttribute("msg","User LoggedOut Successfully...<br>");
}
RequestDispatcher rd = req.getRequestDispatcher("logout.jsp");
rd.forward(req, res);
}
}