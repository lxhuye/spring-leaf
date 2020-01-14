package com.lxhu.spring.service;

import com.lxhu.spring.entities.Product;

import java.util.List;

public interface ProductService {
     Product saveProduct(Product product);
     Product updateProduct(Product product);
     void deleteProduct(Product product);
     void deleteProductById(int id);
     Product getProductById(Integer id);
     List<Product> getAllProducts();

     List<Product> findByName(String name);
}
