package bank.management.system;

import java.io.FileInputStream;
import java.util.Properties;
import java.sql.*;

public class Conn {

    Connection c;
    Statement s;

    public Conn() {
        try {
            Properties props = new Properties();
            FileInputStream in = new FileInputStream("config.properties");
            props.load(in);
            in.close();

            Class.forName("com.mysql.cj.jdbc.Driver");
            c = DriverManager.getConnection(props.getProperty("db.url"), props.getProperty("db.username"), props.getProperty("db.password"));
            s = c.createStatement();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
