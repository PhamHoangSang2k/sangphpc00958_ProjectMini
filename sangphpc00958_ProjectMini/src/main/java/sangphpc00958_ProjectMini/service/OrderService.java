package sangphpc00958_ProjectMini.service;

import java.util.List;

import com.fasterxml.jackson.databind.JsonNode;

import sangphpc00958_ProjectMini.entity.Order;

public interface OrderService {

	Order create(JsonNode orderData);

	Order findById(Long id);

	List<Order> findByUsername(String username);

}
