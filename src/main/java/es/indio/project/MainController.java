package es.indio.project;



import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping
	public String index() {
		
		return "index.html";
	}
	
	@RequestMapping("/registration")
	public String registration(Model modelo) {
		User elUser = new User();
		modelo.addAttribute("elUser",elUser);
		
		return "registration.jsp";
	}
	
	@RequestMapping("/confirmation")
	public String confirmation(@ModelAttribute("elUser") User elUser) {

		SessionFactory miFactory = new Configuration()
				.configure("hibernate.cfg.xml")
				.addAnnotatedClass(User.class)
				.buildSessionFactory();
		
		Session miSession = miFactory.openSession();
		
		miSession.beginTransaction();
		
		String q = "from User";
		
		List<User> users = miSession.createQuery(q).list();
		
		for (User u : users) {
			
			if (u.getUsername().toLowerCase().equals(elUser.getUsername().toLowerCase())) {
				return "errorUsername.jsp";
			}
		}
		
		miSession.getTransaction().commit();
	
		
		try {
			
			miSession.beginTransaction();
			miSession.save(elUser);
			miSession.getTransaction().commit();
			System.out.println("Registro guardado con exito!");
			
		} finally {
			
			miSession.close();
			miFactory.close();
		}
		
		return "confirmation.jsp";
	}
	
	@RequestMapping("/login")
	public String login(Model modelo) {
		
		User userLogin = new User();
		modelo.addAttribute("userLogin", userLogin);
		
		return "login.jsp";
	}
	
	@RequestMapping("/checklogin")
	public String checkLogin(@ModelAttribute("userLogin") User userLogin) {
		
		SessionFactory miFactory = new Configuration()
				.configure("hibernate.cfg.xml")
				.addAnnotatedClass(User.class)
				.buildSessionFactory();
		
		Session miSession = miFactory.openSession();
		
		miSession.beginTransaction();
		
		String q = "from User";
		
		List<User> users = miSession.createQuery(q).list();
		
		for (User u : users) {
			
			if (u.getUsername().toLowerCase().equals(userLogin.getUsername().toLowerCase()) && u.getPassword().equals(userLogin.getPassword()) ) {
				userLogin.setName(u.getName());
				userLogin.setSurname(u.getSurname());
				return "successlogin.jsp";
			}
		}
		miSession.close();
		miFactory.close();
		return "errorlogin.jsp";
	}
			
}
		
		
	

