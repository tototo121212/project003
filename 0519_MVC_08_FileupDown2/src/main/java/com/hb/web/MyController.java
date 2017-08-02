package com.hb.web;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MyController {
	
	@RequestMapping(value="/f_up.do", method=RequestMethod.GET)
	public ModelAndView getFileUp1(HttpServletRequest request){
		return new ModelAndView("input");
	}
	@RequestMapping(value="/f_up.do", method=RequestMethod.POST)
	public ModelAndView getFileUp2(@RequestParam("f_name")MultipartFile file,
								   @RequestParam("name")String name,HttpServletRequest request){
		ModelAndView mv = new ModelAndView("result");
		try{
			String path = request.getSession().getServletContext().getRealPath("/WEB-INF/upload");
			
			String f_name = file.getName();
			String f_name2 = file.getOriginalFilename();
			String filetype = file.getContentType();
			long size = file.getSize();
			
			// 올린파일을 byte[]로 만듬
			byte[] in = file.getBytes();
			// 업로드할 장소와 저장파일이름
			File out = new File(path,f_name);
			FileCopyUtils.copy(in, out);
			
			mv.addObject("name", name);
			mv.addObject("f_name", f_name);
			mv.addObject("f_name2",f_name2 ) ;
			mv.addObject("filetype",filetype ) ;
			mv.addObject("size", size) ;
		} catch (Exception e) {
		}
		return mv;
	}
	@RequestMapping("/down.do")
	public void getFileDown(HttpServletRequest request, HttpServletResponse response){
	    try {
	    	// 위치
			String path = request.getSession().getServletContext().getRealPath("/WEB-INF/upload");
			String f_name = request.getParameter("f_name");
			String encoded_path = URLEncoder.encode(f_name, "utf-8");
			
			// 브러우저 설정
			response.setContentType("application/x-msdownload");
			response.setHeader("Content-Disposition", "attachment; filename="+encoded_path);
			
			// 실제 I/O
			File file = new File(path+"/"+new String(f_name.getBytes("utf-8")));
			FileInputStream fis = new FileInputStream(file);
			BufferedInputStream in = new BufferedInputStream(fis);
			
			OutputStream out = response.getOutputStream();
			FileCopyUtils.copy(in, out);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}


























