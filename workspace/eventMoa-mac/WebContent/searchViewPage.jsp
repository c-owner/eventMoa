<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
전체 검색 view 페이지 입니다. 

-->
<html>
	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
	</head>
	
	<body class="is-preload">

 	  <c:set var="eventList" value="${EventBoardList}"/>
      <c:set var="totalCnt" value="${totalCnt}"/>
      <c:set var="startPage" value="${startPage}"/>
      <c:set var="endPage" value="${endPage}"/>
      <c:set var="nowPage" value="${nowPage}"/>
      <c:set var="realEndPage" value="${realEndPage}"/>
      <c:set var="keyword" value="${keyword}"/>
	  <c:set var="category" value="${category}"/>
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		<p></p>
		<!-- Main -->
		<div id="main">
			
			<!-- Logo & SearchBar-->
			<jsp:include page="${pageContext.request.contextPath}/searchBar.jsp"></jsp:include>
			<!-- //검색 게시판 -->
			
			<section id="banner">
				<article class="column col4">
					<article class="column col5">
						<h4 class="col_tit" id="category"> 
						지역 - 
						<c:if test="${category ne null}">
							"${category}" 
						</c:if>
						전체 검색 결과
						</h4>
						<p class="col_desc"> "${category}"에 대한 내용 결과 입니다.</p>
					</article>
									<table>
										<tbody>
											<tr>
												<td height="30" bgcolor="#f8f8fd" style="padding-left:20px" class="black_b_s">
													검색하신 "
													<b><font color="f75151">${keyword eq null ? category:keyword}</font></b>
													"에 대한 검색 결과가
													<!-- if 있으면 "결과 입니다." -->
													<%-- <choose>
														<c:when test="searchType != null and searchType != ''">
														있습니다.
														</c:when>
														<otherwise>
														없습니다.
														</otherwise>
													</choose> --%>
													 </td>
													 <table class="alt">
														<thead>
															<tr>
																<th>글 번호</th>
																<th style="text-align: center;">제목</th>
																<th>닉네임</th>
																<th>조회수</th>
																<th>날짜</th>
															</tr>
														</thead>
														<tbody id="boardList">
															<c:choose>
															<c:when test="${eventList != null and fn:length(eventList) > 0}">
	               												<c:forEach var="e_bean" items="${eventList}">
															<tr>
															<td>
															${e_bean.getBoard_Num()}
															</td>
																	<td>
																<a href="${pageContext.request.contextPath}/eventboard/EventView.ev?board_Num=${e_bean.getBoard_Num()}&page=${nowPage}">
																	${e_bean.getBoard_Title()}
																</a>
																	
																	</td>
																<td>${e_bean.getBoard_Id()}</td>
																<td>${e_bean.getBoard_View()}</td>
																<td>${e_bean.getBoard_Date()}</td>
															</tr>
																</c:forEach>
															</c:when>
															<c:otherwise>
													           	<tr>
													           		<td colspan="6" align="center">등록된 게시물이 없습니다.</td>
													           	</tr>
												           </c:otherwise>
															</c:choose>
												</tr>
												
											</tbody>
										</table>
										<div style="margin-bottom: 20%;"> 
											<select name="category" class="button primary icon solid fa-search" id="category" 
											style="font-size: 10px; width: 15%;">
													<option value="recent" ${category == 'recent' ? 'selected' : ""}>등록일순　</option>
                              						<option value="view" ${category == 'view' ? 'selected' : ""}>조회순　</option>
												</select>
										 
												<div class="table-wrapper">
													
										<div id="two" style="text-align: center; vertical-align: middle; margin-bottom: 20%;">
											<c:if test="${nowPage >1}">
												<a href="${pageContext.request.contextPath}/search/search.us?page=${nowPage - 1}">&lt;이전</a>
											</c:if>
											<c:forEach var="i" begin="${startPage}" end="${endPage}">
												<c:choose>
													<c:when test="${i eq nowPage}">
													<a style="border: solid 1px;border-color: darkgray; background-color: #fff; color: #72bee1; margin: 0 2px; padding-left: 4px;">${i}&nbsp;</a>
													</c:when>
													<c:otherwise>
														<a href="${pageContext.request.contextPath}/search/search.us?page=${i}" style="margin: 0 2px;">${i}&nbsp;</a>
													</c:otherwise>
												</c:choose>
											</c:forEach>
												<c:if test="${realEndPage != nowPage}">
													<a href="${pageContext.request.contextPath}/search/search.us?page=${nowPage + 1}">다음&gt;</a>
												</c:if>
											<br>
										</div>
											<hr>
													</table>
												</div>			
							</article>
						</section>
				
						<article class="column col6">
							<h4 class="col_tit">사용자 "현재 위치"와 관련된 검색 결과 입니다.</h4>
							<!-- 사용자의 위치를 받아 기반으로 사용자 검색 결과가 내 주변 위주로 조회 -->
							<p class="col_desc"> 현재 위치는 "position" 입니다. </p>
						</article>
			<section id="two" class="wrapper style1 spotlight alt">
					<div class="content">
						<div class="inner">
							<h2> 크리스마스 50% 세일 </h2>
							<p>
								코리아IT학원 강남점에서 크리스마스 최대 50% 수강료를 할인 하고 있습니다! 
								
							</p>
							<ul class="actions">
								<li><a href="#" class="button">자세히 보기</a></li>
							</ul>
						</div>
					</div>
					<div class="image">
						<img src="${pageContext.request.contextPath}/images/banner/ADbanner2.jpg" width="360px;" height="240px;" alt="" />
					</div>
				

				
			</section>


			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	</body>
	<script>var contextPath = "${pageContext.request.contextPath}";</script>
	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script>	
	
	</script>
</html>