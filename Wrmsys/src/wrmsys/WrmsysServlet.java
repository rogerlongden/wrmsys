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
	    	resp.getWriter().println("<html><body>Hello " + user.getNickname() + "! Welcome to WRMS main page! You can <a href='"+ userService.createLogoutURL("/") +"'>sign out</a></body></html>");
	    }
	    else {
	    	resp.sendRedirect(userService.createLoginURL(req.getRequestURI()));
	    }
	}
}
