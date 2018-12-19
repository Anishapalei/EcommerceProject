package com.niit.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CartDAO;
import com.niit.model.Cart;

public class CartDAOTestCase {
	static CartDAO cartDAO;
	private static AnnotationConfigApplicationContext context;

	@BeforeClass
	public static void executeFirst()
	{
		context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit");
		context.refresh();
		
		cartDAO=(CartDAO)context.getBean("cartDAO");
	}
		
		@Test
		public void addCartTest()
		{
			Cart cart=new Cart();
			
			
			cart.setProductId(222);
			cart.setUsername("Abhi");
			cart.setProductName("Asus");
			cart.setQuantity(12);
			cart.setStatus("N");
			cart.setPrice(12000);
			
			assertTrue("Probem in Adding the Cart",cartDAO.addToCart(cart));
		
			
			
		}
		
		
			

}


