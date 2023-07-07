package academy.prog;

import jakarta.servlet.http.*;
import java.io.IOException;

// Req -> (S -> S) -> jsp

public class LoginServlet extends HttpServlet {

    static final String QUESTION1 = "date";
    static final String QUESTIONS2 = "year";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String question = request.getParameter("question");

        if (QUESTION1.equals(question) ) {
            HttpSession session = request.getSession(true);
            session.setAttribute("user_question", question);
        }
        if (QUESTIONS2.equals(question)){
            HttpSession session = request.getSession(true);
            session.setAttribute("user_question",question);
        }
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String a = request.getParameter("a");
        HttpSession session = request.getSession(false);

        if ("exit".equals(a) && (session != null))
            session.removeAttribute("user_question");

        response.sendRedirect("index.jsp");
    }
}
