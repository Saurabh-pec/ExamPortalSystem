package com.example.result;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.OneToOne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
@CrossOrigin(origins = "http://localhost:3000")

@RestController
public class ResultController {

	  @Autowired
	  private ResultRepository resultRepository;
	  
	  //get all result present in database
	  @GetMapping("/result")
	  public List<Result> getAllResult(){
		  return (List<Result>)this.resultRepository.findAll();
	  }
	  
	  
	   //to save result 
	
	  @PostMapping("/result")
	  public  Result addNewResult(@RequestBody Result result){
		  
		  return this.resultRepository.save(result);
	  }
	  
	   //get all result of a particular student 
	  @GetMapping("/user/{email}/result")
	  public List<Result> getAllResultForStudent(@PathVariable("email") String email){
		  return this.resultRepository.findByEmailEmail(email);
		  
	  }
	  
}
