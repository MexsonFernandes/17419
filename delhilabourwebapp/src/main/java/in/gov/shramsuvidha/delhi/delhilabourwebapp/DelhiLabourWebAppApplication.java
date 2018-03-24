package in.gov.shramsuvidha.delhi.delhilabourwebapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class DelhiLabourWebAppApplication extends SpringBootServletInitializer{

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application){
		return application.sources(SpringBootApplication.class);
	}
	public static void main(String[] args) {
		SpringApplication.run(DelhiLabourWebAppApplication.class, args);
	}

}