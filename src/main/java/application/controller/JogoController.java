package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import application.model.Jogo;
import application.repository.GeneroRepository;
import application.repository.JogoRepository;
import application.repository.ModoRepository;
import application.repository.PlataformaRepository;

@Controller
@RequestMapping(value = "/jogo")
public class JogoController {
    @Autowired
    private JogoRepository jogoRepo;
    @Autowired
    private PlataformaRepository plataformaRepo;
    @Autowired
    private GeneroRepository generoRepo;
    @Autowired
    private ModoRepository modoRepo;

    @RequestMapping(value = "/list")
    public String select(Model ui){
        ui.addAttribute("jogos", jogoRepo.findAll());

        return "/jogo/list";
    }

    @RequestMapping(value = "/insert")
    public String insert(Model ui){
        ui.addAttribute("plataformas", plataformaRepo.findAll());
        ui.addAttribute("generos", generoRepo.findAll());
        ui.addAttribute("modos", modoRepo.findAll());

        return "redirect:/jogo/insert";
    }
}
