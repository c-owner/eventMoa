<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	team 	: EVENT MOA
	auth 	: 킹기훈 
	작업		: 2021-03-23
	작업내역	: 
			> 메인 슬라이드 사진 (사진 사이즈는 맞춤형 통일) 구현완료  
			> section 정리 -> elements에 넣음
			> footer 수정 
			> search-bar style 생성 	
			> 
			
    *작업예정	: 
    		> *Bug == 슬라이드 next , previous icon 
    		> search-bar 카테고리 생성
    		> 검색바 카테고리 
    		> section 지역띄우기 (?) 이건 먼 미래 구현 예정
-->
<html>
	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
	</head>
	
	<body class="is-preload">

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">


				<!-- Header -->		<!-- search-bar -->
		<jsp:include page="${pageContext.request.contextPath}/searchBar.jsp"></jsp:include>
					
					
			<!-- Slider -->
			<section id="banner">
				<h3 class="ir_su">  </h3>
				<article class="column col4">
					<h4 class="col_tit" style="text-align: right;"> 이벤트 모아 </h4>
					<p class="col_desc"> </p>
					<!-- 이미지 슬라이드 -->
					<div class="slider">
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/banner/banner1.jpg" alt="이미지1">
								<figcaption><em> 아이유 </em><span> 설명글 .</span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/banner/banner2.jpg" alt="이미지2">
								<figcaption><em> 아이유 </em><span> 설명글 .</span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/banner/banner3.jpg" alt="이미지3">
								<figcaption><em> 아이유 </em><span> 설명글 .</span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/images/banner/banner4.jpg" alt="이미지4">
								<figcaption><em> 아이유 </em><span> 설명글 .</span></figcaption>
							</figure>
						</div>
					</div>
				</article>
					<!-- //이미지 슬라이드 -->
				<!-- 
				<article class="column col5">
					<h4 class="col_tit"> 제목 </h4>
					<p class="col_desc">이 곳은 설명 부분.</p>
					
				</article>
				
				<article class="column col6">
					<h4 class="col_tit">Title</h4>
					<p class="col_desc">이 곳은 설명 부분.</p>
				</article>
				 -->
			</section>

	
				<!-- Two -->
					<section id="two" class="wrapper style1 spotlight alt">
						<div class="content">
							<div class="inner">
								<h2>Ipsum accumsan</h2>
								<p>Praesent dapibus, neque id cursus faucibus, tortor neque ege tas augue, eu vulputate magna eros eu erat. Aliquam erat et volutpat. Nam dui mi, tincidunt quis, accumsan porttitor tempus.</p>
								<ul class="actions">
									<li><a href="#" class="button">Learn More</a></li>
								</ul>
							</div>
						</div>
						<div class="image">
							<img src="images/pic02.jpg" data-position="30% 30%" alt="" />
						</div>
					</section>
		

				<!-- Three -->
					<section id="three" class="wrapper style2 spotlight">
						<div class="content">
							<div class="inner">
								<h2>Etiam consequat</h2>
								<p>Praesent dapibus, neque id cursus faucibus, tortor neque ege tas augue, eu vulputate magna eros eu erat. Aliquam erat et volutpat. Nam dui mi, tincidunt quis, accumsan porttitor tempus.</p>
								<ul class="actions">
									<li><a href="#" class="button">Learn More</a></li>
								</ul>
							</div>
						</div>
						<div class="image">
							<img src="images/pic03.jpg" data-position="center right" alt="" />
						</div>
					</section>

			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

	 <script>
     //이미지 슬라이더
     $(".slider").slick({
         dots: true,
         autoplay: true,
         autoplaySpeed: 3000,
         arrows: true,
         responsive: [
             {
                 breakpoint: 768,
                 settings: {
                     autoplay: false,
                     }
             }
         ]
     });
     
     //sns 공유하기
     $(".facebook").click(function(e){
         e.preventDefault();
         window.open('https://www.facebook.com/sharer/sharer.php?u=' +encodeURIComponent(document.URL)+'&t='+encodeURIComponent(document.title), 'facebooksharedialog', 'menubar=no, toolbar=no, resizable=yes, scrollbars=yes, height=300, width=600'); 
     });
     $(".twitter").click(function(e){
         e.preventDefault();
         window.open('https://twitter.com/intent/tweet?text=[%EA%B3%B5%EC%9C%A0]%20' +encodeURIComponent(document.URL)+'%20-%20'+encodeURIComponent(document.title), 'twittersharedialog', 'menubar=no, toolbar=no, resizable=yes, scrollbars=yes, height=300, width=600');
     });
        </script>
	</body>
</html>