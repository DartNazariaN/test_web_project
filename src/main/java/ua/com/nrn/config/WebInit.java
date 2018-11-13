package ua.com.nrn.config;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

public class WebInit implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
        context.register(WebConfig.class);
        DispatcherServlet dispatcherServlet = new DispatcherServlet((WebApplicationContext) context);
        ServletRegistration.Dynamic registration = servletContext
                .addServlet("dispatcherServlet", dispatcherServlet);
        registration.addMapping("/");
        registration.setLoadOnStartup(1);

    }
}
