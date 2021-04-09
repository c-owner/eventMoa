<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>이벤트 등록</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/board/css/writeForm.css">

		<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> -->
		<link href="${pageContext.request.contextPath}/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<!-- <link href="${pageContext.request.contextPath}/dist/css/datepicker.css" rel="stylesheet" type="text/css" media="all"> -->

		 <!-- script -->
		
	</head>
	
	<body class="is-preload">

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		<p></p>

		
		
		<!-- Main -->
		<div id="main">
			<div class="tagManager">
				<nav class="tagNav">
					<div class="tagNav-div1">
						<a class="tagNav-div-a" href="${pageContext.request.contextPath}/board/eventWrite.jsp">이벤트등록</a>
					</div>
					<div class="tagNav-div2">
						<a class="tagNav-div-a" href="${pageContext.request.contextPath}/board/eventWrite.jsp">이벤트관리</a>
					</div>
				</nav>
			</div>
			
			<div class="mainManager">
				<main class="mainClass">
					<section class="mainSection">
						<form name="writeEventForm" action="${pageContext.request.contextPath}/board/eventWrite.bo" method="post" >
						<h2>기본정보<span>*필수항목</span></h2>
						<ul class="ulSection">
							<li class="liSection"> 
								<div class="imgDiv">
										 이미지
										<span>*</span>
										<small>({i}/10)</small>
								</div>
								 <div class="sc-div">
									<ul class="imgDiv2-ul">
										<li class="imgDiv2-li">
												<input type="file" class="image_inputType_file" id="image" accept="image/*" onchange="setThumbnail(event);" multiple/> 
												<button class="browse-btn">이미지 등록</button>
												<input type="button" onclick="cancleFile('boardFile3')" value="첨부 삭제">

										</li>
										<li class="imgDiv2-li">
												이미지 대표
										</li>
									</ul>
										<div id="image_container">
											<div class="leaderImg">대표이미지</div>
											<button type="button" class="deleteImg"></button>
										</div>
										<div class="imgDiv2 guideText">
											<b>* 게시글에 올릴 사진을 올려주세요.</b>
											<br>큰 이미지일 경우 업로드가 안될 수도 있습니다.
											<br>같은 이미지를 여러번 올릴 수 없습니다.
										</div>
									</div>
							</li>
							<li class="liSection">
									<div class="titleDiv">
										제목
										<span>*</span>
										<small id="leng"></small>
									</div>
									<div class="sc-div">
										<div class="titleDiv2-a">
											<div class="titleDiv2-b">
												<input type="text" name="titleName" id="titleName" class="titleName" placeholder="이벤트 제목을 입력해주세요. 최대 40자" maxlength="40" onKeyup="keyup()"/>
											</div>
												 
										</div>
									</div>
							</li>

							<li class="liSection">
								<div class="contentDiv">
									내용
									<span>*</span>
								</div>
								<div class="sc-div">
									<div class="contentDiv2">
										<!-- <textarea name="textarea" id="textarea" onkeyup="xSize(this)" rows="10" -->
										<textarea name="textarea" id="textarea" onkeyup="xSize(this)" rows="10"
													style="resize:inherit;width:100%;height:200px;overflow-y:hidden" ></textarea>
									</div>
								</div>
							</li>

							<li class="liSection">
								<div class="locationDiv">
									이벤트 지역
									<span>*</span>
								</div>
								<div class="sc-div">
									<div class="locationBtn">
										<ul class="actions" style="display: flex; margin-left: auto; margin-right: auto; margin-bottom: auto; margin-bottom: auto;">
											<p>
												<input type="text" name="user_Zipcode" id="user_Zipcode" class="postcodify_postcode5" value="" placeholder="우편번호" readonly/>
											</p>
												<input type="button" id="postcodify_search_button" style="height: 35px;" value="검색"/>
											</ul>
											<p>
												<input type="text" name="user_Address" id="user_Address" class="postcodify_address" value="" placeholder="주소" readonly/>
											</p>
											<p>
												<input type="text" name="user_Address_DETAIL" id="user_Address_DETAIL" class="postcodify_details" autocomplete="off" required/>
												<label for="user_Address_DETAIL" style="color: silver;"><span>상세주소</span></label>
											</p>
											<p>
												<input type="text" name="user_Address_Etc" id="user_Address_Etc" class="postcodify_extra_info" value="" placeholder="참고항목" readonly/>
											</p>
									</div>
									<br>
								</div>
							</li>
							<li class="liSection">
								<div class="locationDiv">
									기간 설정
									<span>*</span>
								</div>
								<div class="sc-div">
									<div class="dayDiv">
										<!-- <span id="dayText">시작 날짜  </span>
										<font id="mola"> 	~ 		</font> 
										<span id="dayText2">종료 날짜 </span> -->
										<!-- <font id="mola"> 	~ 		</font>  -->
										<div class="dayDiv2">
											<!-- <label for="datepicker1">시작 날짜 </label>
											<input type='text' id="datepicker1" data-position="right top" /> 
											<span style="float: left; color: black;">&nbsp; ~ &nbsp;</span>
											<label for="datepicker2">종료 날짜 </label>
										<input type="text" name="datepicker2" id="datepicker2"/> -->
										
											시작 날짜: <input type="text" id="datepicker">
											종료 날짜: <input type="text" id="datepicker2">
										</div>
									</div>
									<br>
								</div>
							</li>
									
								<div class="col-12">
									<br>
									<ul class="actions">
										<li style="margin: 0 auto;">
										<a href="javascript:formSubmit()" class="button primary" type="submit">등록하기</a>
										</li>
										
									</ul>
								</div> 
								
						 
						</ul>
						</form>
					</section>
				</main>
			</div>


		</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

	<!-- script -->
	<!-- <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.js"></script> -->

	<!-- <sciprt src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></sciprt>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> -->

	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- <script src="{pageContext.request.contextPath}/dist/js/datepicker.js"></script>-->
	<!-- <script src="{pageContext.request.contextPath}/dist/js/datepicker.ko.js"></script>  -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
<script>


function addBoard(){
			boardform.submit();
		}
		
		function cancleFile(fileTagName){
			if($.browser.msie){//ie일 때
				$("input[name='" + fileTagName + "']").replaceWith($("input[name='" + fileTagName + "']").clone(true));
			}else{//그 외 브라우저
				$("input[name='" + fileTagName + "']").val("");
			}
		}
	
// --------------------------------------------------------------------
	const browseBtn = document.querySelector('.browse-btn');
	
	const fileInput = document.querySelector('.image_inputType_file');
	fileInput.style.display = "none";

	$('.browse-btn').click(function (e) {
		e.preventDefault();
		$('#image').click();
	});

function setThumbnail(event) {
    var reader = new FileReader();
    reader.onload = function(event) {
        var img = document.createElement("img");
        img.setAttribute("src", event.target.result); //
        document.querySelector("div#image_container").appendChild(img);
    };
    reader.readAsDataURL(event.target.files[0]);
}
//--------------------------------------------------------------------------
 
// ----------------------------------------------------------------------------
</script>
 
<!-- 두번째 날짜 들어가기 -->
 <script>
  

 $(function() {
            //모든 datepicker에 대한 공통 옵션 설정
            $.datepicker.setDefaults({
                dateFormat: 'yy-mm-dd' //Input Display Format 변경
                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                ,changeYear: true //콤보박스에서 년 선택 가능
                ,changeMonth: true //콤보박스에서 월 선택 가능                
                // ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
                // ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
                ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                ,maxDate: "+1Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
				,nextText: '다음 달'
				,prevText: '이전 달'
            });
 
            //input을 datepicker로 선언
            $("#datepicker").datepicker();                    
            $("#datepicker2").datepicker();
            
            //From의 초기값을 오늘 날짜로 설정
            $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
            //To의 초기값을 내일로 설정
            $('#datepicker2').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        });
   
 </script>
	</body>
</html>