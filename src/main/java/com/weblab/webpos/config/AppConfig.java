package com.weblab.webpos.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import({DatabaseConfig.class, MybatisConfig.class, ServletConfig.class, RootAppContext.class})
public class AppConfig {
<<<<<<< HEAD
}

=======
}
>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
