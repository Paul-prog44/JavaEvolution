import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;

import org.hibernate.query.Query;
import util.HibernateUtil;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;
import bean.Task;


@WebServlet("/getTask")
public class getTask extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Task> tasks = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();

        try {
            Query<Task> query = session.createQuery("FROM Task", Task.class);
            tasks = query.getResultList();
        } finally {
            session.close();
        }

        request.setAttribute("taskList", tasks);

        RequestDispatcher dispatcher = request.getRequestDispatcher("taskList.jsp");
        dispatcher.forward(request, response);
    }
}
