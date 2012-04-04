package com.netapsys.springmvc.web;

import org.springframework.ui.ModelMap;

import junit.framework.TestCase;

public class HelloSpringMCVTest extends TestCase {

  public void testSayHelloWithSpringMVC(){
    HelloSpringMVC helloSpringMVC = new HelloSpringMVC();
    ModelMap model = new ModelMap();
    String view = helloSpringMVC.sayHelloWithSpringMVC("mic", model);
    //vérifions que c'est bien la vue hello qui est générée
    assertEquals("hello", view);
    //vérifions que le modele contient bien un attribut name
    assertTrue(model.containsAttribute("name"));
    //vérifions que cet attribut name est bien "mic"
    assertEquals("mic",model.get("name"));
  }
}
