package com.lxhu.spring.service;

import com.lxhu.spring.entities.Product;
import com.lxhu.spring.repos.ProductRepos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepos productRepos;

    @Override
    public Product saveProduct(Product product) {
        return productRepos.save(product);
    }

    @Override
    public Product updateProduct(Product product) {
        return productRepos.save(product);
    }

    @Override
    public void deleteProduct(Product product) {
        productRepos.delete(product);
    }

    @Override
    public void deleteProductById(int id) {
        productRepos.deleteById(id);
    }

    @Override
    public Product getProductById(Integer id) {
        return productRepos.findById(id).get();
    }

    @Override
    public List<Product> getAllProducts() {
        return productRepos.findAll();
    }

    @Override
    public List<Product> findByName(String name) {
        return productRepos.findByName(name);
    }


    public ProductRepos getProductRepos() {
        return productRepos;
    }

    public void setProductRepos(ProductRepos productRepos) {
        this.productRepos = productRepos;
    }
}
