package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import application.repository.ModoRepository;

@Controller
@RequestMapping(value = "/modo")
public class ModoController {
    @Autowired
    private ModoRepository modoRepo;

    @RequestMapping(value = "/list")
    public String select(Model ui){
        ui.addAttribute("modos", modoRepo.findAll());
        
        return "/modo/list";
    }

    public String insert(){
        return "/modo/insert";
    }

    
}
