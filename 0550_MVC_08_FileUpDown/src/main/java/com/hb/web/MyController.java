package com.hb.web;

import java.io.File;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class MyController {

	@RequestMapping("/f_up.do")
	public ModelAndView getFileUp(HttpServletRequest request){
		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/upload");
		ModelAndView mv = new ModelAndView("result");
		try {
			MultipartRequest mr = new MultipartRequest(request,
					path,100*1024*1024,"utf-8",new DefaultFileRenamePolicy());
			
			String name = mr.getParameter("name");
			String f_name = mr.getFilesystemName("f_name");
			String filetype = mr.getContentType("f_name");
			
			File file = new File("f_name");
			long size = file.length()/1024; // 파일크기 KB
			String f_name2 = file.getName(); //
			SimpleDateFormat day = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 E요일");
			String lastday = day.format(file.lastModified());
			
			mv.addObject("name", name);
			mv.addObject("f_name", f_name);
			mv.addObject("f_name2", f_name2);
			request.setAttribute("filetype", filetype);
			request.setAttribute("size", size);
			request.setAttribute("lastday", lastday);
		} catch (Exception e) {
		}
		return mv;
	}
}
