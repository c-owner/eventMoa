package com.eventmoa.app.eventboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.dao.EventFIlesDAO;
import com.eventmoa.app.eventboard.vo.EventBoardVO;

public class EventBoardWriterOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception { 
		
		EventBoardVO ev_vo = new EventBoardVO();
		EventDAO ev_dao = new EventDAO();
		EventFIlesDAO evFile_dao = new EventFIlesDAO();
		ActionForward forward = null;
		
		// 임시폴더
		String tempFolder = ""
		
		
		return forward;

	}

}
