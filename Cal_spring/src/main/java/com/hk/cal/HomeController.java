package com.hk.cal;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.cal.dtos.CalDto;
import com.hk.cal.service.CalService;
import com.hk.cal.service.ICalService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ICalService calService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	//캘린더페이지
	@RequestMapping(value = "/calendar.do", method = RequestMethod.GET)
	public String Calendar(HttpServletRequest request, Locale locale, Model model) {
		
		List<CalDto> calViewList = calService.getCalList();
		model.addAttribute("calViewList", calViewList);	
		return "calendar";
	}
	
	//캘린더페
	@RequestMapping(value = "/callist.do", method = RequestMethod.POST)
	public String Callist(Locale locale, Model model) {
		
		return "callist";
	}
	
	//캘린더 상세페이지
	@RequestMapping(value = "/calDetail.do", method = RequestMethod.GET)
	public String CalDetail(Locale locale, Model model) {
		
		return "calDetail";
	}
	
	
}
