package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import application.repository.GeneroRepository;

@RequestMapping(value = "/genero")
public class GeneroController {
    @Autowired
    private GeneroRepository generoRepo;

    
}