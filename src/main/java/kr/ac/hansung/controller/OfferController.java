package kr.ac.hansung.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.model.Offer;
import kr.ac.hansung.model.SemesterOffer;
import kr.ac.hansung.service.OfferService;

@Controller
public class OfferController {

	String year = "2019";
	String semester = "1";

	@Autowired
	private OfferService offerService;

	@RequestMapping("/offers")
	public String showOffers(Model model) {
		List<Offer> offers = offerService.getCurrentOffers(year, semester);
		model.addAttribute("offers", offers);

		return "offers";
	}
	
	@RequestMapping("/link")
	public String showLink(Model model) {
		List<Offer> offers = offerService.getCurrentOffers(year, semester);
		model.addAttribute("offers", offers);

		return "link";
	}
	

	@RequestMapping("/semesteroffers")
	public String showSemesterOffers(Model model) {
		List<SemesterOffer> semesteroffers = offerService.getCurrentSemesterOffers();
		model.addAttribute("semesteroffers", semesteroffers);

		return "semesteroffers";
	}
	
	@RequestMapping("/docreate")
	public String doCreate(Model model, @Valid Offer offer, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("===Form data does not validated");
			List<ObjectError> errors = result.getAllErrors();
			
			for(ObjectError error:errors) {
				System.out.println(error.getDefaultMessage());
			}
			
			return "enrolmented";
		}
		
		offer.setYear(year);
		offer.setSemester(semester);
		
		offerService.insert(offer);
		
		return "enrolmented";
	}
	
	@RequestMapping("/enrolment")
	public String enrolment(Model model) {
		
		model.addAttribute("offer", new Offer());
		
		return "enrolment";
	}

	public void setYear(String year) {
		this.year=year;
	}


	public void setSemester(String semester) {
		this.semester=semester;
	}

}
