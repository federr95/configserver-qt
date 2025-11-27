package it.nordcom.configserver_qt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class ConfigserverQtApplication {

	public static void main(String[] args) {
		SpringApplication.run(ConfigserverQtApplication.class, args);
	}

}
