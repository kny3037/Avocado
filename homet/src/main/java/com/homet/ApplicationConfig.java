package com.homet;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class ApplicationConfig implements WebMvcConfigurer {

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		List<String> patterns= Arrays.asList("/board/*","/board/*");
		List<String> excludes=Arrays.asList("/board/list","/board/write","/board/detail");
	}
	
	
}
