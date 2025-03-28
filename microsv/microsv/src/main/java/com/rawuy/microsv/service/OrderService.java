package com.rawuy.microsv.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.rawuy.microsv.entity.Order;
import com.rawuy.microsv.repository.OrderRepository;


@Service
public class OrderService {
    private OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public List<Order> getAllOders() {
        return this.orderRepository.findAll();
    }

    public Order getOrderById(long id) {
        return this.orderRepository.findById(id).get();
    }

    public Order add(Order order) {
        return this.orderRepository.save(order);
    }

    public void delete(long id) {
        this.orderRepository.deleteById(id);
    }
}
