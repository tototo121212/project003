package com.hb.web;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			
			File file = mr.getFile("f_name");
			long size = file.length()/1024; // 파일크기 KB
			String f_name2 = file.getName(); // 
			SimpleDateFormat day = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 E요일");
			String lastday = day.format(file.lastModified());
			
			mv.addObject("name", name);
			mv.addObject("f_name", f_name);
			mv.addObject("f_name2",f_name2 ) ;
			request.setAttribute("filetype",filetype ) ;
			request.setAttribute("size", size) ;
			request.setAttribute("lastday",lastday ) ;
		} catch (Exception e) {
		}
		return mv;
	}
	@RequestMapping("/down.do")
	public void getFileDown(HttpServletRequest request, HttpServletResponse response){
		// 바이트스트림
		int b;
		FileInputStream fis = null;
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		try {
			String path = request.getParameter("f_name");
			// 한글 깨짐 방지
			String encoded_path = URLEncoder.encode(path, "utf-8");
			String r_path 
			= request.getSession().getServletContext().getRealPath("/WEB-INF/upload");
			
			// 헤더정보 고치자
			response.setContentType("application/x-msdownload");
			response.setHeader("Content-Disposition", "attachment; filename="+ encoded_path);
			
			// 실제 I/O
			File file = new File(r_path+"/"+new String(path.getBytes("utf-8")));
			
			fis = new FileInputStream(file);
			bis = new BufferedInputStream(fis);
			
			bos = new BufferedOutputStream(response.getOutputStream());
			
			// -1일 될때까지 입출력하자
			while((b=bis.read())!=-1){
				bos.write(b);
			}
			bos.flush();
		} catch (Exception e) {
		} finally {
			try {
				bos.close();
				bis.close();
				fis.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
	}
}


























