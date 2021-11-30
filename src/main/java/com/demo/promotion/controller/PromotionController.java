/**
 * 
 */
package com.demo.promotion.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.promotion.service.TotalOrderValue;

/**
 * @author deepika.inala
 *
 */

@Controller
@RequestMapping("PromotionController")
public class PromotionController {
	
	@RequestMapping(value="/applyPromo")
	@ResponseBody
	public void applyPromotions(HttpServletRequest request, HttpServletResponse response)throws Exception {
		try {
				String SKUid = request.getParameter("SKUids");
				List<String> SKUids = new ArrayList<String>(Arrays.asList(SKUid.split(",")));
				TotalOrderValue totalOrderval= new TotalOrderValue();
				String totalVal=totalOrderval.totalOrdervalue(SKUids);
				response.getWriter().write("Active promotions applied successfully. Total order value is "+totalVal);
		}catch(Exception ex) {
			ex.printStackTrace();
			response.getWriter().write("Oops !!!");
		}
	}

}
