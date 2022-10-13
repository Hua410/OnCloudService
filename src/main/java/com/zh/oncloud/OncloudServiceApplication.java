package com.zh.oncloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;

/**
 * @author ZhangHua
 * @Date 2022/10/13
 */
@SpringBootApplication(scanBasePackages = "com.zh", exclude = {DataSourceAutoConfiguration.class, HibernateJpaAutoConfiguration.class})
public class OncloudServiceApplication {
    public static void main(String[] args) {
        SpringApplication.run(OncloudServiceApplication.class, args);
        System.out.println("启动成功！");
    }
}
