package com.itheima.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
	@RequestMapping(value="/test",method=RequestMethod.GET)
	public String toTest(){
		return "Test";
	}
	
	@RequestMapping( value="/test", method=RequestMethod.POST )
	@ResponseBody
	public String Test(@RequestBody String str){
		System.out.println(str);
		return "¼¡·ôµÄÈö½¿·¨ÂÉ";
	}
}
