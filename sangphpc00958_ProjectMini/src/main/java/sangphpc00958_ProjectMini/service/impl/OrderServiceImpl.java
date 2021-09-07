package sangphpc00958_ProjectMini.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import sangphpc00958_ProjectMini.dao.OrderDao;
import sangphpc00958_ProjectMini.dao.OrderDetailDao;
import sangphpc00958_ProjectMini.entity.Order;
import sangphpc00958_ProjectMini.entity.Orderdetail;
import sangphpc00958_ProjectMini.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired OrderDao odao;
	@Autowired OrderDetailDao ddao;
	
	@Override
	public Order create(JsonNode orderData) {
		ObjectMapper mapper = new ObjectMapper();
		Order order = mapper.convertValue(orderData, Order.class);
		odao.save(order);
		
		TypeReference<List<Orderdetail>> type = new TypeReference<List<Orderdetail>>() {};
		List<Orderdetail> details = mapper.convertValue(orderData.get("orderDetails"), type)
				.stream().peek(d -> d.setOrder(order)).collect(Collectors.toList());
		ddao.saveAll(details);
		
		return order;
	}

	@Override
	public Order findById(Long id) {
		return odao.findById(id).get();
	}

	@Override
	public List<Order> findByUsername(String username) {
		return odao.findByUsername(username);
	}

}
