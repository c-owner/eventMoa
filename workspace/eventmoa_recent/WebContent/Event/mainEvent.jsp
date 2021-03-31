<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>이벤트 모아 nowEvent</title>
		<meta charset="utf-8" />
	</head>
	<body class="is-preload">

		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
			<div id="main">

		<!--  Logo -->
		<span class="logo"></span>
		<p></p>
<section id="" class="wrapper special">
						<h2>메인 이벤트</h2>
						<p></p>
						<ul class="faces">
							<li>
							<a href="nowEvent.jsp" >
								<span class="image"><img src="${pageContext.request.contextPath}/images/pic06.jpg" alt="" /></span>
								<h3>진행 이벤트</h3> 
							</a>
							</li>
							<li>
							<a href="futureEvent.jsp">
								<span class="image"><img src="${pageContext.request.contextPath}/images/pic07.jpg" alt=""/></span>
								<h3>예정 이벤트</h3>
								
							</a>
							</li>
							<li>
							<a href="pastEvent.jsp">
								<span class="image"><img src="${pageContext.request.contextPath}/images/pic05.jpg" alt="" /></span>
								<h3>종료 이벤트</h3>
								
							</a>
							</li>
						</ul>
					</section>
					</div>
					<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
					
</body>
</html>