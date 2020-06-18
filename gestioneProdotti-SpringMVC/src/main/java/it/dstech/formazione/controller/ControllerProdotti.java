package it.dstech.formazione.controller;



import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import it.dstech.formazione.model.Prodotto;
import it.dstech.formazione.service.ProdottoService;

public class ControllerProdotti {
	
	@Autowired
	private ProdottoService prodottoService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		
		ModelAndView mav = new ModelAndView("homepage");
		List<Prodotto> listaProdotti = prodottoService.listAll();
		mav.addObject("listaProdotti", listaProdotti);
		
		return mav;
	}
	
	@RequestMapping("/creaProdotto")
	public String sceltaOperazione(Map<String, Object> model) {
		Prodotto prodotto = new Prodotto();
		model.put("prodotto", prodotto);		
		
		return "aggiungiProdotto";
	}
	
	@RequestMapping(value = "/aggiungiProdotto", method = RequestMethod.POST)
	public String aggiungiProdotto(@ModelAttribute("customer") Prodotto prodotto) {
		prodottoService.save(prodotto);
		return "redirect:/";
	}
	
	@RequestMapping("/modifica")
	public ModelAndView editCustomerForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("modificaProdotto");
		Prodotto prodotto = prodottoService.get(id);
		mav.addObject("prodotto", prodotto);
		
		return mav;
	}
	
	@RequestMapping("/elimina")
	public String deleteCustomerForm(@RequestParam long id) {
		prodottoService.delete(id);
		return "redirect:/";		
	}
	
	@RequestMapping("/cercaProdotto")
	public ModelAndView search(@RequestParam String keyword) {
		List<Prodotto> risultato = prodottoService.search(keyword);
		ModelAndView mav = new ModelAndView("cercaProdotto");
		mav.addObject("risultato", risultato);
		
		return mav;		
	}	
}
