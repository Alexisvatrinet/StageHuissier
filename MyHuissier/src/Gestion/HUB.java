package Gestion;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class HUB extends JFrame {

	private JPanel contentPane;
	private JButton btnNewButton;
	private JButton btnNewButton_1;
	private JButton btnNewButton_2;
	private JButton btnNewButton_3;
	private JButton btnNewButton_4;
	private JButton btnNewButton_5;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					HUB frame = new HUB();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public HUB() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		btnNewButton = new JButton("Dossier");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnNewButton.setBounds(47, 48, 117, 29);
		contentPane.add(btnNewButton);
		
		btnNewButton_1 = new JButton("Archives");
		btnNewButton_1.setBounds(176, 48, 117, 29);
		contentPane.add(btnNewButton_1);
		
		btnNewButton_2 = new JButton("Penal");
		btnNewButton_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
				Penal p = new Penal();
				p.show();
				
			}
		});
		btnNewButton_2.setBounds(306, 48, 117, 29);
		contentPane.add(btnNewButton_2);
		
		btnNewButton_3 = new JButton("Etude");
		btnNewButton_3.setBounds(47, 89, 117, 29);
		contentPane.add(btnNewButton_3);
		
		btnNewButton_4 = new JButton("Stat");
		btnNewButton_4.setBounds(176, 89, 117, 29);
		contentPane.add(btnNewButton_4);
		
		btnNewButton_5 = new JButton("Fichier");
		btnNewButton_5.setBounds(306, 89, 117, 29);
		contentPane.add(btnNewButton_5);
	}
}
