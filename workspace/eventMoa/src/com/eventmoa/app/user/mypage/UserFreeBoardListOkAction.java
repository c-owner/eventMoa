package com.eventmoa.app.user.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserFreeBoardListOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		System.out.println("컨트롤러1");
		UserDAO u_dao = new UserDAO();
		ActionForward forward = new ActionForward();
		System.out.println("컨트롤러2");
		
		String temp = req.getParameter("page");
		String id = req.getParameter("session_id");
		System.out.println(temp);
		System.out.println(id);
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		int boardSize = 10;
		int pageSize = 10;
				
		int endRow = page * boardSize;
				
		int startRow = endRow - (boardSize - 1);
		
		int startPage = ((page - 1) / pageSize) * pageSize  + 1;
		
		int endPage = startPage + (pageSize - 1);
		
		int totalCnt = u_dao.getBoardCnt(id);
		
		int realEndPage = (totalCnt - 1) / pageSize + 1;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		//requestScope
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("boardList", u_dao.getBoardList(id));
		
		forward.setRedirect(false);
		forward.setPath("/user/mypage/myWrite.jsp");
		
		return forward;
	}
}