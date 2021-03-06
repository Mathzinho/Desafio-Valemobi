package br.com.valemobi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.valemobi.dao.MercadoriaDao;
import br.com.valemobi.model.Mercadoria;

@Controller
public class MercadoriaController {

	private final MercadoriaDao daoMerc;

	@Autowired
	public MercadoriaController(MercadoriaDao daoMerc) {
		this.daoMerc = daoMerc;
	}
	
	@RequestMapping("principal")
	public String principal(){
		return "redirect:index.jsp";
	}

	@RequestMapping("novaMercadoria")
	public String novaMercadoria() {
		return "mercadoria/criarMercadoria";
	}

	@RequestMapping("adicionarMercadoria")
	public String adicionarMercadoria(Mercadoria mercadoria) {
		daoMerc.adicionarMercadoria(mercadoria);
		return "redirect:listarMercadoria";
	}

	@RequestMapping("listarMercadoria")
	public String listarMercadoria(Model model) {
		model.addAttribute("mercadoria", daoMerc.listarMercadorias());
		return "mercadoria/listaMercadoria";
	}

}
