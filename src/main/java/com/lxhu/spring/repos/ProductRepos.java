package com.lxhu.spring.repos;

import com.lxhu.spring.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepos extends JpaRepository<Product,Integer> {

    List<Product> findByName(String name);
}
