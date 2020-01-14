package com.lxhu.spring.controller;

import com.lxhu.spring.entities.Product;
import com.lxhu.spring.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller

public class productController {

    @Autowired
    ProductService service;

    @RequestMapping("/home")
    public String backtoHome(){
        return "index";
    }

    @RequestMapping("/create")
    public String showCreate(){
        return "createProduct";
    }

    @RequestMapping("/saveProd")
    public String saveProduct(@ModelAttribute("product") Product product, ModelMap modelMap){
        Product product1 = service.saveProduct(product);
        String msg = "Product saved with id " + product1.getId();
        modelMap.addAttribute("msg",msg);
        return "createProduct";
    }

    @RequestMapping("/showProd")
    public String showProducts(ModelMap modelMap){
        List<Product> allProducts = service.getAllProducts();
        modelMap.addAttribute("products",allProducts);
        return "showProducts";
    }

    @RequestMapping("/deleteProd")
    public String deleteProduct(@RequestParam("id") int id, ModelMap modelMap){
        service.deleteProductById(id);
        modelMap.addAttribute("delid",id);
        return "deleteDone";
    }

    @RequestMapping("/updateProd")
    public String updateProduct(@RequestParam("id") int id,ModelMap modelMap){
        Product product = service.getProductById(id);
        modelMap.addAttribute("setproduct",product);
        return "update";
    }

//    @RequestMapping("/saveUpdateProd")
//    public String saveUpdateProduct(@ModelAttribute("product") Product product){
//
//
//    }

    @RequestMapping("/searchProd")
    public String searchProduct(@RequestParam("productName") String name, ModelMap modelMap){
        List<Product> productList = service.findByName(name);
        System.out.println(productList.toString());
        modelMap.addAttribute("searchedList",productList);
        return "productSearchResult";
    }

}
