package com.hb.web;

import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

// 자바 1.8 , 톰켓을  / 로 변경
// @RestController는 jsp와 같은 뷰를 만들어 내지 않는 대신 데이터 자체를
// 반환하는데, 이때 주로 사용되는 것이 단순 문자열과 JSON, XML등 이다..
@RestController
@RequestMapping("/sample")
public class SampleController {
	
	// 단순 문자의 경우는 브라우저에서 text/html타입으로 처리된다.
	// 리턴형이 String이다.
	@RequestMapping("/hello")
	public String sayHello(){
		return "Hello";
	}
	// 객체를 JSON으로 변환
	// text로 가져오거나 
	// /sample/sendVO
	@RequestMapping("/sendVO")
	public VO sendVO(){
		VO vo = new VO();
		vo.setNo(1);
		vo.setName("삼장법사");
		vo.setAge(147);
		return vo ;
	}
	@RequestMapping("/sendList")
	public List<VO> sendList(){
		List<VO> list = new ArrayList<>();
		for (int i = 0; i < 9; i++) {
			VO vo = new VO();
			vo.setNo(1);
			vo.setName("삼장법사");
			vo.setAge(147);
			list.add(vo);
		}
		return list ;
	}
	@RequestMapping("/weater")
	public String WeaterTest(){
		String result ="";
		try{
		// 웹 정보 가져오기
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			URL url = new URL("http://www.kma.go.kr/XML/weather/sfc_web_map.xml"); 
			InputStream is = url.openStream();
			Document document = builder.parse(is);
			
		// 파싱하기
			NodeList local = document.getElementsByTagName("local");
			result="";
			for(int i=0; i <local.getLength();i++){
				result +=
					local.item(i).getFirstChild().getNodeValue()+"/"+
				     ((Element)(local.item(i))).getAttribute("ta")+"/"+
				     ((Element)(local.item(i))).getAttribute("desc")+",";	
			   }
			result = result.substring(0, result.length()-1);
			
		}catch(Exception e){
		}
		return result;
	}
}










