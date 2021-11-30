package com.demo.promotion.service;

import com.demo.promotion.Promotions;

/**
 * @author deepika.inala
 *
 */

public class PromotionService implements Promotions{

	@Override
	public int applyPromoForSKUnitA(int countOfA) {
		int total=0;
		if(countOfA>=3) {
			int quotient = countOfA / 3;
			int remainder = countOfA % 3;
			total=quotient*130;
			if(remainder!=0) {
			total=total+(remainder*50);
			}
			return total;
		}else {
			return countOfA*50;
		}	
	}
	@Override
	public int applyPromoForSKUnitB(int countOfB) {
		int total=0;
		if(countOfB>=2) {
			int quotient = countOfB / 2;
			int remainder = countOfB % 2;
			total=quotient*45;
			if(remainder!=0) {
			total=total+(remainder*30);
			}
			return total;
		}else {
			return countOfB*50;
		}
	}
	@Override
	public int applyPromoForSKUnitCAndD(int countOfC, int countOfD) {
		int total=0;
		if(countOfC >0 && countOfD>0) {
			if(countOfC==countOfD) {
				total=countOfC*30;
			}else {
				if(countOfC>countOfD) {
					total=	countOfD*30;
					total= total+((countOfC-countOfD)*20);
				}else {
					total=	countOfC*30;
					total= total+((countOfD-countOfC)*15);
				}
			}
		}else if(countOfC>0){
			total = countOfC*20;
		}else if(countOfD>0){
			total = countOfD*15;
		}
		return total;
	}
	

}
