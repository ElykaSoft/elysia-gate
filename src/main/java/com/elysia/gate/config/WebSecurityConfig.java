//package com.elysia.gate.config;
//
//import com.elysia.gate.manager.DBUserManager;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.provisioning.InMemoryUserDetailsManager;
//
///**
// * @BelongsProject: elysia-gate
// * @BelongsPackage: com.elysia.gate.config
// * @Author: ElysiaKafka
// * @CreateTime: 2024-01-31  12:31:59
// * @Description: @ConditionalOnClass({EnableWebSecurity.class})当EnableWebSecurity这个类被加载到上下文当中
// * @Description: @EnableWebSecurity这个注解会在springboot中自动加载
// * @Description: EnableWebSecurity类自动加载是由spring-boot-starter-security依赖完成的
// * @Version: 1.0
// */
//@Configuration // 配置类注解
////@EnableWebSecurity // 开启SpringSecurity的自定义配置（在Springboot项目中可以省略此注解）
//public class WebSecurityConfig {
//    @Value("${spring.security.user.name}")
//    private String username;
//    @Value("${spring.security.user.password}")
//    private String password;
//
//    /**
//     * @description:基于内存的用户信息管理器
//     * @author: ElysiaKafka
//     * @date: 2024/1/31 12:43
//     * @return: org.springframework.security.core.userdetails.UserDetailsService
//     **/
//    @Bean
//    public UserDetailsService userDetailsService() {
//        // 创建基于内存的用户信息管理器
//        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
//        // 使用manager对象管理UserDetails对象
//        manager.createUser(
//                // 创建UserDetails对象，用于管理用户名、用户密码、用于角色、用户权限等内容
//                User.withDefaultPasswordEncoder()
//                        .username(username)
//                        .password(password)
//                        .roles("USER")
//                        .build());
//        return manager;
//    }
//
//    /**
//     * @description: 基于数据库的用户信息管理器
//     * @author: ElysiaKafka
//     * @date: 2024/2/1 12:52
//     * @return: org.springframework.security.core.userdetails.UserDetailsService
//     **/
//    @Bean
//    public UserDetailsService dbUserDetailsService() {
//        return new DBUserManager();
//    }
//}
