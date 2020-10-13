package common;

import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CommonService {
	
	
	//파일다운로드
	public File download(String filename, String filepath, HttpSession session, HttpServletResponse response) {
		//다운로드할 파일객체 생성
		File file = new File( session.getServletContext().getRealPath("resources") + filepath );
		String mine = session.getServletContext().getMimeType(filename);
		response.setContentType(mine);

		try {
			filename = URLEncoder.encode(filename, "utf-8");
			response.setHeader("content-disposition", "attachment; filename=" + filename );

			ServletOutputStream out = response.getOutputStream();
			FileCopyUtils.copy(new FileInputStream(file), out);
			out.flush();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return file;
	}
	
	
	//파일업로드
	public String upload(String category, MultipartFile file, HttpSession session) {
		//업로드해 둘 서버의 물리적 위치
		String resources = session.getServletContext().getRealPath("resources");
		
		//업로드해 둘 폴더 지정
		String upload =  resources + "/upload";
		//upload/qna/2020/10/12/1234_abc.txt
		//폴더 만들기
		String folder = upload + "/" + category + "/" + new SimpleDateFormat("yyyy/MM/dd").format(new Date());
		
		File f = new File(folder);
		if( !f.exists() ) f.mkdirs();	//폴더가 없으면 만든다.
		String uuid = 
		UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
		
		
		try {
			file.transferTo(new File(folder, uuid) );
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		//folder: D:\Study_Spring\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\IOT\resources
		return folder.substring(resources.length() ) + "/" + uuid;
		
	}
		
		

}//class
