package com.eventmoa.app.reviewboard;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;
import com.eventmoa.app.reviewboard.dao.ReviewFilesDAO;
import com.eventmoa.app.reviewboard.vo.ReviewBoardVO;
import com.eventmoa.app.reviewboard.vo.ReviewFilesVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReviewBoardWriteOkAction implements Action{
	protected static final String RealPATH = "/usr/local/apache-tomcat-8.5.63/"
			+ "webapps/uploadFolder/";
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ReviewBoardVO r_vo = new ReviewBoardVO();
		ReviewBoardDAO r_dao = new ReviewBoardDAO();
		ReviewFilesDAO f_dao = new ReviewFilesDAO();
		ReviewFilesVO rf_vo = new ReviewFilesVO();
		ActionForward forward = null;
		
		
//		String uploadFolder = "/app/reviewFilesUpload";
//		ServletContext context= req.getSession().getServletContext();
//		String realPath= context.getRealPath(uploadFolder);
		String realPath = RealPATH+"/reviewFilesUpload/";
		
		int fileSize = 1024 * 1024 * 5; // 5M
		
		MultipartRequest multi = null;
		
		try {
			multi = new MultipartRequest(req, realPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		r_vo.setBoard_Title(multi.getParameter("board_Title"));
		r_vo.setBoard_Id(multi.getParameter("board_Id"));
		r_vo.setBoard_Content(multi.getParameter("board_Content"));
		String e_board_temp = (String)multi.getParameter("e_board_Num");
//		if(e_board_temp == null ) {e_board_temp="0";};
//		int e_board_Num = 0;
//		try {
//			e_board_Num = Integer.parseInt(e_board_temp);
//		} catch (NumberFormatException e) {
//			e.printStackTrace();
//		}
		r_vo.setE_board_Num(Integer.parseInt(e_board_temp));
		r_vo.setE_board_Title(multi.getParameter("e_board_Title"));
		rf_vo.setFile_Name(multi.getFilesystemName("input_imgs_0"));
		
		if(r_dao.insertBoard(r_vo)) {
			if(f_dao.insertFiles(r_dao.getBoardNum(), multi)) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/reviewboard/ReviewBoardList.rb?category=recent");
			}else { // 실패
				PrintWriter out = resp.getWriter();
				out.print("<script> "
						+ "alert('IMAGE UPLOAD ERROR-');"
						+ "history.back();"
						+ "</script>");
				out.close();
				return null;
			}
		}

		return forward;
	}

}
