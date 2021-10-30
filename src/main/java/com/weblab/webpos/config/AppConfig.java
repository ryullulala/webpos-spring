package com.weblab.webpos.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import({DatabaseConfig.class, MybatisConfig.class, ServletConfig.class, RootAppContext.class})
public class AppConfig {


}

