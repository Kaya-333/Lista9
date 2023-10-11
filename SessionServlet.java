package web;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession(true);
        
        Date createTime = new Date(session.getCreationTime());
        
        Date lastAccessTime = new Date(session.getLastAccessedTime());

        Integer accessCount;
        String count = (String) session.getAttribute("accessCount");
        if (count == null) {
            accessCount = 0;
        } else {
            accessCount = Integer.parseInt(count);
        }
        accessCount++;
        session.setAttribute("accessCount", accessCount.toString());

        out.println("<html><body>");
        out.println("<h2>Informações da Sessão</h2>");
        out.println("ID da Sessão: " + session.getId() + "<br>");
        out.println("Data/Hora de Criação: " + createTime + "<br>");
        out.println("Data/Hora do Último Acesso: " + lastAccessTime + "<br>");
        
        if (accessCount > 5) {
            out.println("<p>Esta é sua visita de número " + accessCount + ". Obrigado por voltar!</p>");
        } else {
            out.println("<p>Esta é sua visita de número " + accessCount + ".</p>");
        }
        
        out.println("</body></html>");
    }
}
