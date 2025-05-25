package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import application.repository.PlataformaRepository;

@Controller
@RequestMapping(value = "/plataforma")
public class PlataformaController {
    @Autowired
    private PlataformaRepository plataformaRepo;

    @RequestMapping(value = "/list")
    public String select(Model ui){
        ui.addAttribute("plataformas", plataformaRepo.findAll());

        return "/plataforma/list";
    }


}
