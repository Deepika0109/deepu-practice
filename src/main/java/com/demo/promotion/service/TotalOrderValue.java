/**
 * 
 */
package com.demo.promotion.service;

import java.util.Collections;
import java.util.List;

import com.demo.promotion.Promotions;

/**
 * @author deepika.inala
 *
 */
public class TotalOrderValue {

	public String totalOrdervalue(List<String> SKUids) {
		Promotions promo = new PromotionService();
		int totalOrderValue=0;
		int countOfA=0;
		int countOfB=0;
		int countOfC=0;
		int countOfD=0;
		countOfA = Collections.frequency(SKUids, "A");
		countOfB = Collections.frequency(SKUids, "B");
		countOfC = Collections.frequency(SKUids, "C");
		countOfD = Collections.frequency(SKUids, "D");
		totalOrderValue=promo.applyPromoForSKUnitA(countOfA);
		totalOrderValue=totalOrderValue+promo.applyPromoForSKUnitB(countOfB);
		totalOrderValue=totalOrderValue+promo.applyPromoForSKUnitCAndD(countOfC,countOfD);
		return String.valueOf(totalOrderValue);
	}
}
