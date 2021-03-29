<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
   Phantom by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
 	<head>
		<title> 이용약관 | 이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		
		<style>
		</style>
		
	</head>
	<body class="is-preload">
		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

				<!-- Header -->
					<!-- Header -->
						<span class="logo"></span>		
            <!-- Main -->
               <div id="main">
                  <div class="inner">
                     
                     <h4 style="width: 70%; margin: 0 auto;">리뷰 작성하기</h4>
                     <br>
                     <hr style="width: 70%; margin: 0 auto;">
                     <br>
                     <br>
                     <form>
                        <div style="width: 60%; margin: 0 auto;">                     
                           <label style="font-size: 12px; text-align: left;">아이디</label>
                           <input type="text" name="demo-name" id="demo-name" value="" placeholder="tesdId" style="height: 2em;" readonly/>
                           <br>
                           <label style="font-size: 12px; text-align: left;">리뷰 내용</label>
                           <textarea name="demo-message" id="demo-message" 
                           rows="10" cols="5000" style="resize: none; overflow: hidden;"></textarea>
                           <br>
                           <div>
                              <ul class="actions" style="margin-bottom: 0;">
                                 <li>
                                    <label class="button" for="file-upload">사진 첨부</label>
                                    <input type="file" id="file-upload" style="display: none;">
                                    <label style="font-size: 12px; text-align: left;">첨부 파일은 최대 N개, 00MB까지 등록이 가능합니다.</label>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </form>
                     <hr style="width: 70%; margin: 0 auto;">
                     <br>
                     <div>
                        <ul class="actions" style="text-align: center;">
                           <li style="margin: 0 auto; width: 60%;"><a href="#" class="button">Default</a></li>
                        </ul>
                     </div>
                  </div>
               </div>

            <!-- Footer -->
               <footer id="footer">
                  <div class="inner">
                     <section>
                        <h2>Get in touch</h2>
                        <form method="post" action="#">
                           <div class="fields">
                              <div class="field half">
                                 <input type="text" name="name" id="name" placeholder="Name" />
                              </div>
                              <div class="field half">
                                 <input type="email" name="email" id="email" placeholder="Email" />
                              </div>
                              <div class="field">
                                 <textarea name="message" id="message" placeholder="Message"></textarea>
                              </div>
                           </div>
                           <ul class="actions">
                              <li><input type="submit" value="Send" class="primary" /></li>
                           </ul>
                        </form>
                     </section>
                     <section>
                        <h2>Follow</h2>
                        <ul class="icons">
                           <li><a href="#" class="icon brands style2 fa-twitter"><span class="label">Twitter</span></a></li>
                           <li><a href="#" class="icon brands style2 fa-facebook-f"><span class="label">Facebook</span></a></li>
                           <li><a href="#" class="icon brands style2 fa-instagram"><span class="label">Instagram</span></a></li>
                           <li><a href="#" class="icon brands style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
                           <li><a href="#" class="icon brands style2 fa-github"><span class="label">GitHub</span></a></li>
                           <li><a href="#" class="icon brands style2 fa-500px"><span class="label">500px</span></a></li>
                           <li><a href="#" class="icon solid style2 fa-phone"><span class="label">Phone</span></a></li>
                           <li><a href="#" class="icon solid style2 fa-envelope"><span class="label">Email</span></a></li>
                        </ul>
                     </section>
                     <ul class="copyright">
                        <li>&copy; Untitled. All rights reserved</li>
                     </ul>
                  </div>
               </footer>

         </div>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
         
         <script>
      // Forms.
         var $form = $('form');

         // Auto-resizing textareas.
            $form.find('textarea').each(function() {

               var $this = $(this),
                  $wrapper = $('<div class="textarea-wrapper"></div>'),
                  $submits = $this.find('input[type="submit"]');

               $this
                  .wrap($wrapper)
                  .attr('rows', 1)
                  .css('overflow', 'hidden')
                  .css('resize', 'none')
                  .on('keydown', function(event) {

                     if (event.keyCode == 13
                     &&   event.ctrlKey) {

                        event.preventDefault();
                        event.stopPropagation();

                        $(this).blur();

                     }

                  })
                  .on('blur focus', function() {
                     $this.val($.trim($this.val()));
                  })
                  .on('input blur focus --init', function() {

                     $wrapper
                        .css('height', $this.height());

                     $this
                        .css('height', 'auto')
                        .css('height', $this.prop('scrollHeight') + 'px');

                  })
                  .on('keyup', function(event) {

                     if (event.keyCode == 9)
                        $this
                           .select();

                  })
                  .triggerHandler('--init');

               // Fix.
                  if (browser.name == 'ie'
                  ||   browser.mobile)
                     $this
                        .css('max-height', '10em')
                        .css('overflow-y', 'auto');

            });
         </script>
   </body>
</html>