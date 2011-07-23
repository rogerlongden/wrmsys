package wrmsys;

import java.io.IOException;
import javax.servlet.http.*;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

@SuppressWarnings("serial")
public class WrmsysServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
	    UserService userService = UserServiceFactory.getUserService();
	    User user = userService.getCurrentUser();
	    if (user != null) {
	    	resp.setContentType("text/html");
	    	resp.getWriter().println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
	    	resp.getWriter().println("<html><head><title>WRMSYS</title><link type=\"text/css\" rel=\"stylesheet\" href=\"/stylesheets/Wrmsys.css\"></head><body><h1>Hello " + user.getNickname() + ", Welcome to WRMS!</h1><p>You can <a href='"+ userService.createLogoutURL("/") +"'>sign out</a></p></body></html>");
	    }
	    else {
	    	resp.sendRedirect(userService.createLoginURL(req.getRequestURI()));
	    }
	}
}
