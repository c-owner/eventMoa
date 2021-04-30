package com.eventmoa.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.freeboard.dao.FreeBoardDAO;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;
import com.eventmoa.app.user.dao.UserDAO;

public class searchKeywordAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		
		String category = req.getParameter("category");
		String category2 = req.getParameter("category2"); // 순서 정렬 
		String keyword = req.getParameter("keyword");
		
		if(category.equals("지역별") || category == "" || category == null) {
			category = null;
		}
		if(category2.equals("") || category == "" || category == null) {
			category2 = "recent";
		}
		
		
		String temp = req.getParameter("page");
		String r_temp = req.getParameter("r_page");
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int r_page = temp == null ? 1 : Integer.parseInt(r_temp);
//		-- 프리보드 페이징 처리
		FreeBoardDAO f_dao = new FreeBoardDAO();
			int boardSize = 10;
			int pageSize = 10;
			int endRow = page * boardSize;
			int startRow = endRow - (boardSize - 1);
			int startPage = ((page - 1) / pageSize) * pageSize  + 1;
			int endPage = startPage + (pageSize - 1);
			int totalCnt = f_dao.getBoardCnt();
			int realEndPage = (totalCnt - 1) / pageSize + 1;
			endPage = endPage > realEndPage ? realEndPage : endPage;
			
			req.setAttribute("freeBoardList", f_dao.searchList(category,category2,keyword,startRow, endRow));
			req.setAttribute("totalCnt", totalCnt);
			req.setAttribute("startPage", startPage);
			req.setAttribute("endPage", endPage);
			req.setAttribute("nowPage", page);
			req.setAttribute("realEndPage", realEndPage);
		
		req.setAttribute("category", category);
		req.setAttribute("keyword", keyword);
		
//		-- 리뷰보드 페이징 처리
		ReviewBoardDAO r_dao = new ReviewBoardDAO();
		
		int r_boardSize = 10;
		int r_pageSize = 10;
		int r_endRow = r_page * r_boardSize;
		int r_startRow = r_endRow - (r_boardSize - 1);
		int r_startPage = ((r_page - 1) / r_pageSize) * r_pageSize  + 1;
		int r_endPage = r_startPage + (r_pageSize - 1);
		int r_totalCnt = r_dao.getBoardCnt();
		int r_realEndPage = (r_totalCnt - 1) / r_pageSize + 1;
		r_endPage = r_endPage > r_realEndPage ? r_realEndPage : r_endPage;
		
		req.setAttribute("reviewBoardList", r_dao.searchList(category,keyword,r_startRow, r_endRow));
		req.setAttribute("r_totalCnt", r_totalCnt);
		req.setAttribute("r_startPage", r_startPage);
		req.setAttribute("r_endPage", r_endPage);
		req.setAttribute("r_nowPage", r_page);
		req.setAttribute("r_realEndPage", r_realEndPage);
		
		
		
		forward.setRedirect(false);
		forward.setPath("/searchViewPage.jsp");
		
		return forward;
	}

}
