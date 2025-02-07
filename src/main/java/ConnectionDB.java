import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {

    private String url ="jdbc:postgresql://localhost:5432/MasterAnnonce";
    private String login = "postgres";
    private String password = "qRN7pBeN12!";

    private static Connection connect;

    private ConnectionDB() throws ClassNotFoundException {
        try {
            Class.forName("org.postgresql.Driver");
            connect = DriverManager.getConnection(url, login, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Connection getInstance() throws ClassNotFoundException{
        if (connect ==null) {
            new ConnectionDB();
        }
        return connect;
    }
}
