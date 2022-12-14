package com.sdsc5003.worldcup;

import org.brickred.socialauth.SocialAuthConfig;
import org.brickred.socialauth.SocialAuthManager;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;

@SpringBootApplication(scanBasePackages = "com.sdsc5003.worldcup")
@EnableCaching
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @Bean
    @Scope(value = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
    public SocialAuthManager socialAuthManager(SocialAuthConfig socialAuthConfig) throws Exception {
        SocialAuthManager socialAuthManager = new SocialAuthManager();
        socialAuthManager.setSocialAuthConfig(socialAuthConfig);
        return socialAuthManager;
    }
}
