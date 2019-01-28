package com.chat.hello.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {
    @Value("${upload.path}")
    private String uploadPath;//абсолютный путь, переданный в свойствах application.properties

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/img/**")
                .addResourceLocations("file:/" + uploadPath + "/");
        //file:// - протокол file (то есть место в файловой системе)
        //uploadPath - абсолютный путь
        registry.addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/");
        //classpath означает ,что поиск будет начинатся не с корня системы, а с папки проекта
    }
}
