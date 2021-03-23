<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Elemental by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />

		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		
		
		<!-- style -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<!-- style -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">

	</head>
	<body class="is-preload">

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
			<div id="main">

				<!-- Header -->
					<header>
						<span class="logo"></span>
						<h1><strong>이벤트 모아</strong></h1>
					</header>
					
			<!-- Slider -->
			<section id="cont_center">
				<h3 class="ir_su">반응형 사이트 가운데 컨텐츠</h3>
				<article class="column col4">
					<h4 class="col_tit">Slick Slider</h4>
					<p class="col_desc">slick.js를 이용한 이미지 슬라이드 효과입니다.</p>
					<!-- 이미지 슬라이드 -->
					<div class="slider">
						<div>
							<figure>
								<img src="/images/pic01.jpg" alt="이미지1">
								<figcaption><em>Responsive Site1</em><span>슬라이드 플러그인을 이용한 반응형 이미지 슬라이드 입니다.</span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="/images/pic02.jpg" alt="이미지2">
								<figcaption><em>Responsive Site2</em><span>슬라이드 플러그인을 이용한 반응형 이미지 슬라이드 입니다.</span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="/images/pic03.jpg" alt="이미지3">
								<figcaption><em>Responsive Site3</em><span>슬라이드 플러그인을 이용한 반응형 이미지 슬라이드 입니다.</span></figcaption>
							</figure>
						</div>
					</div>
					<!-- //이미지 슬라이드 -->
				</article>
				<!-- //col4 -->
				<article class="column col5">
					<h4 class="col_tit">Title</h4>
					<p class="col_desc">이 곳은 설명 부분입니다.</p>
					<!-- -->

					<!-- // -->
				</article>
				<!-- //col5 -->
				<article class="column col6">
					<h4 class="col_tit">Title</h4>
					<p class="col_desc">이 곳은 설명 부분입니다.</p>
					<!-- -->

					<!-- // -->
				</article>
				<!-- //col6 -->
			</section>


				<!-- Banner -->
					<section class="banner">
						<h2> 이벤트 모아 <br />
						이벤트 모아 </h2>
						<ul class="actions special">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>

				<!-- One -->
					<section id="one" class="wrapper spotlight">
						<div class="content">
							<div class="inner">
								<h2>Magna veroeros</h2>
								<p>Praesent dapibus, neque id cursus faucibus, tortor neque ege tas augue, eu vulputate magna eros eu erat. Aliquam erat et volutpat. Nam dui mi, tincidunt quis, accumsan porttitor tempus.</p>
								<ul class="actions">
									<li><a href="#" class="button">Learn More</a></li>
								</ul>
							</div>
						</div>
						<ul class="grid-icons">
							<li>
								<div class="inner">
									<span class="icon solid fa-cog major"></span>
									<h3>Sed tempus</h3>
								</div>
							</li>
							<li>
								<div class="inner">
									<span class="icon solid fa-desktop major"></span>
									<h3>Aenean lorem</h3>
								</div>
							</li>
							<li>
								<div class="inner">
									<span class="icon solid fa-signal major"></span>
									<h3>Felis aliquam</h3>
								</div>
							</li>
							<li>
								<div class="inner">
									<span class="icon solid fa-check major"></span>
									<h3>Dui volutpat</h3>
								</div>
							</li>
						</ul>
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

				<!-- Four -->
					<section id="four" class="wrapper style3 spotlight alt">
						<div class="content">
							<div class="inner">
								<h2>Quis adipiscing</h2>
								<p>Praesent dapibus, neque id cursus faucibus, tortor neque ege tas augue, eu vulputate magna eros eu erat. Aliquam erat et volutpat. Nam dui mi, tincidunt quis, accumsan porttitor tempus.</p>
								<ul class="actions">
									<li><a href="#" class="button">Learn More</a></li>
								</ul>
							</div>
						</div>
						<div class="image">
							<img src="images/pic04.jpg" data-position="top right" alt="" />
						</div>
					</section>

				<!-- Five -->
					<section id="five" class="wrapper special">
						<h2>Accumsan praesent</h2>
						<p>Praesent dapibus, neque id cursus faucibus, tortor neque ege tas augue, eu vulputate magna eros eu erat. Aliquam erat et volutpat. Nam dui mi, tincidunt quis, accumsan porttitor tempus lorem ipsum dolor sit amet consequat.</p>
						<ul class="faces">
							<li>
								<span class="image"><img src="images/pic05.jpg" alt="" /></span>
								<h3>Jane Doe</h3>
								<p>"Aliquam erat et volutpat. Nam dui mi, tincidunt quis, porttitor magna etiam lorem tempus."</p>
							</li>
							<li>
								<span class="image"><img src="images/pic06.jpg" alt="" /></span>
								<h3>John Anderson</h3>
								<p>"Aliquam erat et volutpat. Nam dui mi, tincidunt quis, porttitor magna etiam lorem tempus."</p>
							</li>
							<li>
								<span class="image"><img src="images/pic07.jpg" alt="" /></span>
								<h3>Kate Smith</h3>
								<p>"Aliquam erat et volutpat. Nam dui mi, tincidunt quis, porttitor magna etiam lorem tempus."</p>
							</li>
						</ul>
					</section>

			</div>

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
 <script src="${pageContext.request.contextPath}/assets/js/slick.min.js"></script>
	</body>
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
</html>