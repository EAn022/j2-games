package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Genero;
import application.repository.GeneroRepository;

@Controller
@RequestMapping(value = "/genero")
public class GeneroController {
    @Autowired
    private GeneroRepository generoRepo;
    
    @RequestMapping(value = "/list")
    public String select(Model ui){
        ui.addAttribute("generos", generoRepo.findAll());

        return "/genero/list";
    }

    @RequestMapping(value = "/insert")
    public String insert(){
        return "genero/insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("name") String name){
        Genero genero = new Genero();
        genero.setNome(name);

        generoRepo.save(genero);
        
        return "redirect:/genero/insert";
    }
}