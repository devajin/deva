package com.kr.spt.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kr.spt.vo.FileMeta;


@Controller
@RequestMapping("/file")
public class FileController {

	private static final Logger log = LoggerFactory.getLogger(BoradController.class);
	
	 LinkedList<FileMeta> files = new LinkedList<FileMeta>();
	 FileMeta fileMeta = null;
	
	
	 @RequestMapping(value="/upload", method = RequestMethod.POST)
	    public @ResponseBody LinkedList<FileMeta> upload(MultipartHttpServletRequest request, 
	    			HttpServletResponse response) throws Exception{
		log.info("----- file upload -----  :  " + request.getFileNames());				
				
		Iterator<String> itr =  request.getFileNames();
        MultipartFile mpf = null;
        String filepath = null;
        filepath = request.getSession().getServletContext().getRealPath("/");
        log.info("file upload path ::: >>   {}", filepath);
        while(itr.hasNext()){
        	 
            //2.1 get next MultipartFile
            mpf = request.getFile(itr.next()); 
            log.info(mpf.getOriginalFilename() +" uploaded!  "+files.size());

            //2.2 if files > 10 remove the first from the list
            if(files.size() >= 10)
                files.pop();

            //2.3 create new fileMeta
            fileMeta = new FileMeta();
            fileMeta.setFileName(mpf.getOriginalFilename());
            fileMeta.setFileSize(mpf.getSize()/1024+" Kb");
            fileMeta.setFileType(mpf.getContentType());

            try {
               fileMeta.setBytes(mpf.getBytes());

                // copy file to local disk (make sure the path "e.g. D:/temp/files" exists)            
                FileCopyUtils.copy(mpf.getBytes(), new FileOutputStream(filepath+"upload/"+mpf.getOriginalFilename()));

           } catch (IOException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
           }
            //2.4 add to files
            files.add(fileMeta);
        }
       // result will be like this
       // [{"fileName":"app_engine-85x77.png","fileSize":"8 Kb","fileType":"image/png"},...]
       log.info("reslut file data information ::>>>>  " + files.toString());
        return files;
	 
	 } 
	
}
