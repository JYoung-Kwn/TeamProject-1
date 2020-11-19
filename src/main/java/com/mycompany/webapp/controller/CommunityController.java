package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 2020. 11. 17 
 *
 */
@Controller
@RequestMapping("/community")
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);
	
	
	@GetMapping("/boardall")
	public String boardall(Model model) {
		model.addAttribute("cate", "all");
		return "community/community_list";
	}
	@GetMapping("/boardhealth")
	public String boardhealth(Model model) {
		model.addAttribute("cate", "health");
		return "community/community_list";
	}
	
	@GetMapping("/boardcareer")
	public String boardcareer(Model model) {
		model.addAttribute("cate", "career");
		return "community/community_list";
	}
	
	@GetMapping("/boardmoney")
	public String boardmoeny(Model model) {
		model.addAttribute("cate", "money");
		return "community/community_list";
	}
	
	@GetMapping("/boardreview")
	public String boardreview(Model model) {
		model.addAttribute("cate", "review");
		return "community/community_review";
	}

}
	 
	
	
