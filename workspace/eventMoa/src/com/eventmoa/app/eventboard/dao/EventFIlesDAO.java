package com.eventmoa.app.eventboard.dao;



import java.util.Enumeration;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.eventboard.vo.EventFilesVO;
import com.eventmoa.mybatis.config.SqlMapConfig;
import com.oreilly.servlet.MultipartRequest;

public class EventFIlesDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public EventFIlesDAO() {
		session = sessionf.openSession(true);
	}
	
	public boolean insertFiles(int boardNum, MultipartRequest multi) {
		boolean check = true;
		
		EventFilesVO ef_vo = new EventFilesVO();
		
		Enumeration<String> files = multi.getFileNames();
		
		while(files.hasMoreElements()) {
			String data = files.nextElement();
			String systemName = multi.getFilesystemName(data);
			
			if(systemName == null ) {
				continue;
			}
			
			ef_vo.setFile_Name(systemName);
			ef_vo.setBoard_Num(boardNum);
			
			if(session.insert("EventFiles.insertFile", ef_vo) != 1 ) {
				check = false;
				break;
			}
		}
		
		return check;
	}
	
	
	
	
}
