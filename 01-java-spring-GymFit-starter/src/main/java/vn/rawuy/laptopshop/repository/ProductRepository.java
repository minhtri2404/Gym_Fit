package vn.rawuy.laptopshop.repository;

import org.springframework.stereotype.Repository;

import vn.rawuy.laptopshop.domain.Product;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    Product save(Product prodcut);

    List<Product> findAll();

    Product deleteById(long id);
}
