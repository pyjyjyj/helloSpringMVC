package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.OfferDAO;
import kr.ac.hansung.model.Offer;
import kr.ac.hansung.model.SemesterOffer;

@Service
public class OfferService {

	@Autowired
	private OfferDAO offerDao;

	public List<Offer> getCurrentOffers(String year, String semester) {

		return offerDao.getOffers(year, semester);
	}

	public void insert(Offer offer) {
		offerDao.insert(offer);
	}

	public List<SemesterOffer> getCurrentSemesterOffers() {

		return offerDao.getSemesterOffers();
	}

}
