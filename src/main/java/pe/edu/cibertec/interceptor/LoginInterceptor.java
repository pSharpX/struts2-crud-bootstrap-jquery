/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.cibertec.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ValidationAware;
import com.opensymphony.xwork2.interceptor.Interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import static org.apache.struts2.StrutsStatics.HTTP_REQUEST;

/**
 *
 * @author CHRISTIAN
 */
public class LoginInterceptor implements Interceptor {

    final String USER_SESSION_KEY = "usuario";
    final String USERNAME_KEY = "username";
    final String PASSWORD_KEY = "password";

    @Override
    public void destroy() {
    }

    @Override
    public void init() {
    }

    @Override
    public String intercept(ActionInvocation ai) throws Exception {
        final ActionContext context = ai.getInvocationContext();
        HttpServletRequest request = (HttpServletRequest) context.get(HTTP_REQUEST);
        HttpSession session = request.getSession(true);

        // Is there a "user" object stored in the user's HttpSession?
        Object user = session.getAttribute(USER_SESSION_KEY);
        if (user == null) {
            // The user has not logged in yet.

            // Is the user attempting to log in right now?
            String loginAttempt = request.getParameter(USERNAME_KEY);
            if (!("".equals(loginAttempt))) { // The user is attempting to log in.
                // Process the user's login attempt.
                if (processLoginAttempt(request, session)) {
                    // The login succeeded send them the login-success page.
                    return "login-success";
                } else {
                    // The login failed. Set an error if we can on the action.
                    Object action = ai.getAction();
                    if (action instanceof ValidationAware) {
                        ((ValidationAware) action).addActionError("Username or password incorrect.");
                    }
                }
            }

            // Either the login attempt failed or the user hasn't tried to login yet, 
            // and we need to send the login form.
            return "login";
        } else {
            return ai.invoke();
        }
    }

    /**
     * Attempt to process the user's login attempt delegating the work to the
     * SecurityManager.
     * @param request
     * @param session
     * @return 
     */
    public boolean processLoginAttempt(HttpServletRequest request, HttpSession session) {
        // Get the username and password submitted by the user from the HttpRequest.
        String username = request.getParameter(USERNAME_KEY);
        String password = request.getParameter(PASSWORD_KEY);

        // Use the security manager to validate the user's username and password.
        //Object user = securityManager.login(username, password);
        String user = null;
        if("Christian".equals(username) && "123456".equals(password))
            user = "Christian";

        if (user != null) {
            // The user has successfully logged in. Store their user object in 
            // their HttpSession. Then return true.
            session.setAttribute(USER_SESSION_KEY, user);
            return true;
        } else {
            // The user did not successfully log in. Return false.
            return false;
        }
    }

}
