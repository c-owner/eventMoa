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
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
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
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>