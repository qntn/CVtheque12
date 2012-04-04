package com.netapsys.springmvc.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
 
/**
 * Contrôleur que l'on invoquera pour l'url /helloSpringMVC.html.
 * 
 * @author Michael Courcy
 *
 */
@Controller
@RequestMapping("/helloSpringMVC.html")
public class HelloSpringMVC {
 
  /**
    * Handler de la méthode Get pour l'URL /helloSpringMVC.html. 
    * 
    * @param name le nom que l'on doit afficher dans la vue.
    * @param model une map de toutes les données qui seront utilisables dans la vue 
    * @return le nom de la vue qu'il faudra utiliser.
    */
  @RequestMapping(method = RequestMethod.GET)
  public  String sayHelloWithSpringMVC(
    @RequestParam(value="name",required=false) String name, 
    ModelMap model) 
  {
    model.addAttribute("name",name);
    // on utilisera donc le fichier /WEB-INF/jsp/hello.jsp
    //au regard de la stratégie de résolution des vues 
    //utilisée dans cette application.
    return "hello";
  }
}