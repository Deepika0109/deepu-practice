package com.demo.promo.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.demo.promotion.service.PromotionService;

public class promoTest {

	@Test
	public void applyPromoForSKUnitATest() {
	
		PromotionService promoSer= new PromotionService();
		int total = promoSer.applyPromoForSKUnitA(5);
		assertEquals(230,total);
		
	}
	@Test
	public void applyPromoForSKUnitBTest() {
	
		PromotionService promoSer= new PromotionService();
		int total = promoSer.applyPromoForSKUnitB(5);
		assertEquals(120,total);
		
	}
	@Test
	public void applyPromoForSKUnitCAndDTest() {
	
		PromotionService promoSer= new PromotionService();
		int total = promoSer.applyPromoForSKUnitCAndD(5,2);
		assertEquals(120,total);
		
	}

}
