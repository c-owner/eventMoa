package com.eventmoa.app.map.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.eventmoa.app.map.vo.MapBoardVO;
import com.eventmoa.app.map.vo.MapVO;
import com.eventmoa.mybatis.config.SqlMapConfig;

public class MapDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public MapDAO() {
		session = sessionf.openSession(true);
	}
	
	public String getUserAddress(String user_id) {
		MapVO userPosition = session.selectOne("Map.getAddress", user_id);
		if(userPosition.toString() == null || userPosition.toString().equals("")) {
			return "서울특별시 강남구 테헤란로 146"+ " " + "(역삼동)";
		}
		return userPosition.toString();
	}

	public List<MapBoardVO> getEventAddresses() {
		List<MapBoardVO> eventPosition = session.selectList("Map.getAddressList");
		if(eventPosition.isEmpty()) {
			MapBoardVO mv = new MapBoardVO();
			mv.setBoard_address("서울특별시 강남구 테헤란로 146");
			mv.setBoard_title("(역삼동)");
			eventPosition.add(mv);
			return eventPosition;
		}
		return eventPosition;
	}
	
	// 이벤트 게시판의 지역
	public String getEventboardAddress(int board_Num) {
		MapVO eventPosition = session.selectOne("Map.getEventboardAddress", board_Num);
		return eventPosition.toString();
	}
}
