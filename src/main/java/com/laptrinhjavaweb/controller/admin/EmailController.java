package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.dto.EmailDTO;
import com.laptrinhjavaweb.service.IEmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "emailControllerOfAdmin")
public class EmailController {

    @Autowired
    private IEmailService emailService;

    @RequestMapping(value = "/admin/email/list", method = RequestMethod.GET)
    public ModelAndView emailListPage(@ModelAttribute("model") EmailDTO model) {
        ModelAndView mav = new ModelAndView("admin/email/list");
        Pageable pageable = PageRequest.of(model.getPage() - 1, model.getMaxPageItems());
        List<EmailDTO> emailDTOS = emailService.findAll(pageable);
        model.setListResult(emailDTOS);
        model.setTotalItems(emailService.getTotalItem(pageable));
        mav.addObject("model", model);
        return mav;
    }

    @RequestMapping(value = "/admin/email/edit", method = RequestMethod.GET)
    public ModelAndView emailEditPage() {
        ModelAndView mav = new ModelAndView("admin/email/edit");
        return mav;
    }
}
