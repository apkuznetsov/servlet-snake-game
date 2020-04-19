import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/gameover")
public class GameoverServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int score = Integer.parseInt(request.getParameter("score"));
        request.setAttribute("score", score);

        getServletContext().getRequestDispatcher("/gameover.jsp").forward(request, response);
    }
}