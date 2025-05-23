package application.controller;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Modo;
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

    @RequestMapping(value = "/insert")
    public String insert(){
        return "/modo/insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("descricao") String descricao){
        Modo modo = new Modo();
        modo.setDescricao(descricao);

        modoRepo.save(modo);
        
        return "redirect:/modo/insert";
    }
}
