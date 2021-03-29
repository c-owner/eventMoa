<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
페이지 프레임 입니다.
편하게 복사해서 작업하세요.
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

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
			
				<div class="contents">
					<form action="/" method="POST" id="form__wrap">
						<div class="terms__check__all">
							<input type="checkbox" name="checkAll" id="checkAll"/>
							<label for="checkAll">
								모두 동의합니다.
							</label>
						</div>
						<ul class="terms__list">
							<li class="terms__box">
								<div class="input__check">
									<input type="checkbox" name="agreement" id="termsOfService" value="termsOfService" required />
									<label for="termsOfService" class="required">이용약관 동의</label>
								</div>
								<div class="terms__content">
								어쩌구 저ㅈ쩌구 
								</div>
							</li>
							<li class="terms__box">
								<div class="input__check">
									<input type="checkbox" name="agreement" id="privacyPolicy" value="privacyPolicy" required />
									<label for="privacyPolicy" class="required">개인 정보 수집 및 이용 동의</label>
								</div>
								<div class="terms__content">
									어쩌구 저쩌구 
								</div>
							</li>
							<li class="terms__box">
								<div class="input__check">
									<input type="checkbox" name="agreement" id="allowPromotions" value="allowPromotions"/>
									<label for="allowPromotions">프로모션 정보 수신 동의</label>
								</div>
								<div class="terms__contents">
									프로모션 어쩌구 저쩌구 이벤트 동위
								</div>
							</li>
						</ul>
						<button type="submit" class="next-button" disabled>확인</button>
					</form>
				</div>



			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
		
		<script>
			const form = document.querySelector('#form__wrap');
			const checkAll = document.querySelector('.terms__check__all input');
			const checkBoxes = document.querySelectorAll('.input__check input');
			const submitButton = document.querySelector('button');

			const agreements = {
				termsOfService: false,
				privacyPolicy: false,
				allowPromotions: false,
			};

			form.addEventListener('submit', (e) => e.preventDefault()); 

			checkBoxes.forEach((item) => item.addEventListener('input', toggleCheckbox));	
			 
			function toggleCheckbox(e){
				const {	checked, id	} = e.target; 
				agreements[id] = checked;
				this.parentNode.classList.toggle('active');
				checkAllStatus();
				toggleSubmitButton();
			}

			function checkAllStatus() {
				const { termsOfService, privacyPolicy, allowPromotions } = agreements;
				if ( termsOfService && privacyPolicy && allowPromotions ) {
					checkAll.checked = true;
				} else {
					checkAll.checked = false;
				}
			}

			function toggleSubmitButton() {
				const { termsOfService, privacyPolicy } = agreements;
				if ( termsOfService && privacyPolicy) {
					submitButton.disabled = false;
				} else {
					submitButton.disabled = true;
				}
			}
			
		 	checkAll.addEventListener('click', (e) => {
				const { checked } = e.target;
				if(checked) {
					checkBoxes.forEach((item) => {
						item.checked = true;
						agreements[item.id] = true;
						item.parentNode.classList.add('active');
					});
				} else {
					checkBoxes.forEach((item) => {
						item.checked = false;
						agreements[item.id] = false;
						item.parentNode.classList.remove('active');
					});
				}
				toggleSubmitButton();
			});

		</script>	
	</body>
</html>