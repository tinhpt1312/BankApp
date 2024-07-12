package com.tinhpt.bankapp;

import io.swagger.v3.oas.annotations.ExternalDocumentation;
import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Contact;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.info.License;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@OpenAPIDefinition(
        info = @Info(
                title = "Bank App",
                description = "Backend Rest APIs for The Tinh",
                version = "v1.0",
                contact = @Contact(
                        name = "Pham The Tinh",
                        email = "phamthetinhcop1312@gmail.com",
                        url = "https://github.com/tinhpt1312/bankApp"
                ),
                license = @License(
                        name = "Pham The Tinh",
                        url = "https://github.com/tinhpt1312/bankApp"
                )
        ),
        externalDocs = @ExternalDocumentation(
                description = "The Bank App Documentation",
                url = "https://github.com/tinhpt1312/bankApp"
        )
)
public class BankAppApplication {

    public static void main(String[] args) {
        SpringApplication.run(BankAppApplication.class, args);
    }

}
