package com.laptrinhjavaweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CkController {

	@RequestMapping(value = "/admin/ckeditor5", method = RequestMethod.GET)
	public ModelAndView ckeditor5() {
		ModelAndView mav = new ModelAndView("ckeditor5");
		return mav;
	}

}
