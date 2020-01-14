package com.lxhu.spring;

import com.lxhu.spring.entities.Product;
import com.lxhu.spring.repos.ProductRepos;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ApplicationTests {

	@Test
	void contextLoads() {
	}

	@Autowired
	private ProductRepos productRepos;

	@Test
	public void test(){
		Product p = new Product();
		p.setDescription("123");
		p.setName("test");
		p.setPrice(100);
		productRepos.save(p);
	}

}
