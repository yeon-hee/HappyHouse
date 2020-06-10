package com.ssafy.happyhouse.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan( // 인터페이스 방식으로 사용할 수 있다. 
		basePackages = "com.ssafy.happyhouse.dao"
)
public class DatabaseConfig {}