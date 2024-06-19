package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Jdbc {
    // JDBC URL, username and password of MySQL server
    private static final String URL = "jdbc:mysql://localhost:3306/task";
    private static final String USER = "root";
    private static final String PASSWORD = "vishnupriya@123";

    // JDBC variables for opening and managing connection
    private static Connection connection;

    public static void main(String[] args) {
        try {
            // Open a connection
            connection = DriverManager.getConnection(URL, USER, PASSWORD);

            // Create SQL insert statement
            String insertSQL = "INSERT INTO Employee (empcode, empname, empage, empsalary) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = connection.prepareStatement(insertSQL);

            // Insert data
            insertEmployee(ps, 101, "Jenny", 25, 10000.00);
            insertEmployee(ps, 102, "Jacky", 30, 20000.00);
            insertEmployee(ps, 103, "Joe", 20, 40000.00);
            insertEmployee(ps, 104, "John", 40, 80000.00);
            insertEmployee(ps, 105, "Shameer", 25, 90000.00);

            System.out.println("Data inserted successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close connection
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    private static void insertEmployee(PreparedStatement ps, int empcode, String empname, int empage, double empsalary) throws SQLException {
        ps.setInt(1, empcode);
        ps.setString(2, empname);
        ps.setInt(3, empage);
        ps.setDouble(4, empsalary);
        ps.executeUpdate();
    }

}
