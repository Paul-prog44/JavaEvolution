import bean.Task;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import util.HibernateUtil;

import java.io.IOException;
import java.sql.*;


@WebServlet("/modifyTask")
public class modifyTask extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("taskId"));
        Session session = HibernateUtil.getSessionFactory().openSession();
        Task task = null;

        try {
            // Récupère directement l'entité Task correspondant à l'id passé
            task = session.get(Task.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        session.close();
        }

        request.setAttribute("task", task);

        RequestDispatcher dispatcher = request.getRequestDispatcher("annonceUpdate.jsp");
        dispatcher.forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("taskId"));
        String title= request.getParameter("title");
        String description = request.getParameter("description");
        String address = request.getParameter("address");
        String email = request.getParameter("email");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.beginTransaction();

            Task task = session.get(Task.class, id);
            if (task == null) {
                throw new ServletException("Pas de tache trouvée");
            }

            task.setTitle(title);
            task.setDescription(description);
            task.setMail(email);
            task.setAddress(address);

            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}
