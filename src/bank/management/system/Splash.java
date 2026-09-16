package bank.management.system;

import javax.swing.*;
import java.awt.*;

/**
 * Splash screen for the Bank Management System.
 * @author U S E R
 */
public class Splash extends JFrame {

    private JProgressBar progressBar;

    public Splash() {
        setTitle("Ifinix Bank");
        setUndecorated(true);
        setSize(377, 323);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JPanel panel = new JPanel();
        panel.setBackground(Color.WHITE);
        panel.setLayout(null);

        JTextField welcomeText = new JTextField("Welcome to Ifinix Bank");
        welcomeText.setEditable(false);
        welcomeText.setBackground(Color.WHITE);
        welcomeText.setForeground(Color.BLACK);
        welcomeText.setFont(new Font("Segoe UI", Font.PLAIN, 18));
        welcomeText.setBorder(null);
        welcomeText.setBounds(89, 21, 200, 30);
        panel.add(welcomeText);

        JLabel bankIcon = new JLabel(new ImageIcon(getClass().getResource("/icons/bank.png")));
        bankIcon.setBounds(75, 69, 210, 160);
        panel.add(bankIcon);

        progressBar = new JProgressBar();
        progressBar.setBackground(Color.WHITE);
        progressBar.setForeground(Color.BLACK);
        progressBar.setStringPainted(true);
        progressBar.setBounds(54, 258, 255, 16);
        panel.add(progressBar);

        setContentPane(panel);
    }

    public static void main(String[] args) {
        // Set Nimbus look and feel
        try {
            for (UIManager.LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (Exception ex) {
            java.util.logging.Logger.getLogger(Splash.class.getName()).log(
                java.util.logging.Level.SEVERE, null, ex);
        }

        Splash mySplash = new Splash();
        mySplash.setVisible(true);
        try {
            for (int i = 0; i < 100; i++) {
                Thread.sleep(100);
                mySplash.progressBar.setValue(i);
            }
        } catch (Exception e) {
        }
        new Login().setVisible(true);
        mySplash.dispose();
    }
}
