package com.example.spring4nazarov;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController

public class Spring4nazarovApplication {
    public static void main(String[] args) {
      SpringApplication.run(Spring4nazarovApplication.class, args);
    }

    @GetMapping("/cafes")
    public String cafes() {
      return "select * from cafe";
    }

    @GetMapping("/cafe/full/{id}") // http://localhost:8080/cafe/full/13 
    public String getCafe(@PathVariable String cafeid) {
        return String.format("cafe id: %s!", cafeid);
    }


    @GetMapping("/cafe2/full/")
    public String cafe2(@RequestParam(value="id",defaultValue = "1") String cafeid) {
      return String.format("cafe id= %s!", cafeid);
    }

    @GetMapping("/cafe1")
    public String cafeall(@RequestParam(value = "full", defaultValue = "1") String cafe) {
      return String.format("cafe id: %s!", cafe);
    }

    @GetMapping("/msg1")
    public String msg1(@RequestParam(value = "cmd", defaultValue = "echo") String cmd) {
      return String.format("CMD %s!", cmd);
    }

}
