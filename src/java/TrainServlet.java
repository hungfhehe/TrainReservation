
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/TrainServlet")
public class TrainServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String train = request.getParameter("train");
        String quantity = request.getParameter("quantity");
        String date = request.getParameter("date");

        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("train", train);
        request.setAttribute("quantity", quantity);
        request.setAttribute("date", date);

        request.getRequestDispatcher("result.jsp")
                .forward(request, response);
    }
}
