package com.eventmoa.app.user;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.vo.EventBoardVO;

public class EventBoardSearchViewAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		EventDAO e_dao = new EventDAO();
		
		PrintWriter out = resp.getWriter();
		
		String category = req.getParameter("category");
		String category2 = req.getParameter("category2"); // 순서 정렬 
		String category3 = req.getParameter("category3"); // 순서 정렬 
		String keyword = req.getParameter("keyword");
		if (category == null) {category = "";}; // default 
		if (keyword == null) {keyword = "";};
		if (category2 == null) {category2 = "recent";};
		if (category3 == null) {category3 = "recent";};
		
	      if(category.equals("지역별") || category == null || category.length() < 1) {
				category = ""; // default 
			}
			if(keyword.equals("") || keyword == null || keyword.length() < 1 ) {
				keyword = "";
			}
			if(category2.equals("") || category2 == null || category2.length() < 1) {
				category2 = "recent";
			}
			if(category3.equals("") || category2 == null || category2.length() < 1) {
				category3 = "recent";
			}
		String temp = req.getParameter("page");
		int page = 0; 

		 try {
			page = Integer.parseInt(temp);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		 
		int boardSize = 6;

		int endRow = page * boardSize;
		int startRow = endRow - (boardSize - 1);
		
		JSONArray jsonArray=new JSONArray();
		List<EventBoardVO> events= e_dao.searchList(category, keyword, startRow, endRow);
		for(EventBoardVO board:events) {
			JSONObject jsonObj=new JSONObject();
			jsonObj.put("board_Num", board.getBoard_Num());
			jsonObj.put("board_Title",board.getBoard_Title());
			jsonObj.put("board_Content", board.getBoard_Content());
			jsonObj.put("board_Id", board.getBoard_Id());
			jsonObj.put("board_View", board.getBoard_View());
			jsonObj.put("board_Date", board.getBoard_Date());
			jsonObj.put("board_Zipcode", board.getBoard_Zipcode());
			jsonObj.put("board_Address", board.getBoard_Address());
			jsonObj.put("board_Address_Detail", board.getBoard_Address_Detail());
			jsonObj.put("board_Address_Etc", board.getBoard_Address_etc());
			jsonObj.put("file_name", board.getFile_name());
			jsonObj.put("board_CallNumber", board.getBoard_CallNumber());
			jsonObj.put("board_PhoneNumber", board.getBoard_PhoneNumber());
			
			jsonArray.add(jsonObj);
		}
		out.println(jsonArray.toJSONString());
		out.close();

		return null;
		
		
	}

	
	
	
}
