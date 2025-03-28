package com.rawuy.microsv.rest;

import org.springframework.web.bind.annotation.*;

import com.rawuy.microsv.entity.Order;
import com.rawuy.microsv.service.OrderService;

import java.util.List;

@RestController
@RequestMapping("/api")
public class OrderRestController {
    private OrderService orderService;

    public OrderRestController(OrderService orderSv) {
        this.orderService = orderSv;
    }

    @GetMapping("/orders")
    public List<Order> getStudents() {
        return orderService.getAllOders();
    }

    @GetMapping("/orders/{id}")
    public Order getOrder(@PathVariable int id) {
        return orderService.getOrderById(id);
    }

    @PostMapping("/orders")
    public Order addOrder(@RequestBody Order order) {
        order.setId(0);
        return orderService.add(order);
    }

    @PutMapping("/orders")
    public Order updateOrder(@RequestBody Order order) {
        Order student1 = orderService.add(order);
        return student1;
    }

    @DeleteMapping("/orders/{id}")
    public String deleteOrder(@PathVariable int id) {
        orderService.delete(id);
        return "Delete success order has id= " + id;
    }
}
