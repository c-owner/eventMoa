<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>이벤트 모아 Elements</title>
		<meta charset="utf-8" />
	</head>
	<body class="is-preload">

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		 
		<!-- Main -->
			<div id="main">

		<!-- Header -->		<!-- search-bar -->
		<jsp:include page="${pageContext.request.contextPath}/searchBar.jsp"></jsp:include>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>

				<!-- Content -->
					<section id="content" class="wrapper">

						<section>
							<h2>Text</h2>
							<p>This is <b>bold</b> and this is <strong>strong</strong>. This is <i>italic</i> and this is <em>emphasized</em>.
							This is <sup>superscript</sup> text and this is <sub>subscript</sub> text.
							This is <u>underlined</u> and this is code: <code>for (;;) { ... }</code>. Finally, <a href="#">this is a link</a>.</p>
							<h3>Blockquote</h3>
							<blockquote>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan faucibus. Vestibulum ante ipsum primis in faucibus lorem ipsum dolor sit amet nullam adipiscing eu felis.</blockquote>
							<h3>Preformatted</h3>
							<pre><code>i = 0;

while (!deck.isInOrder()) {
    print 'Iteration ' + i;
    deck.shuffle();
    i++;
}

print 'It took ' + i + ' iterations to sort the deck.';</code></pre>
						</section>

						<section>
							<h2>Lists</h2>
							<div class="row">
								<div class="col-6 col-12-medium">
									<h3>Unordered</h3>
									<ul>
										<li>Dolor pulvinar etiam.</li>
										<li>Sagittis adipiscing.</li>
										<li>Felis enim feugiat.</li>
									</ul>
									<h3>Alternate</h3>
									<ul class="alt">
										<li>Dolor pulvinar etiam.</li>
										<li>Sagittis adipiscing.</li>
										<li>Felis enim feugiat.</li>
									</ul>
								</div>
								<div class="col-6 col-12-medium">
									<h3>Ordered</h3>
									<ol>
										<li>Dolor pulvinar etiam.</li>
										<li>Etiam vel felis viverra.</li>
										<li>Felis enim feugiat.</li>
										<li>Dolor pulvinar etiam.</li>
										<li>Etiam vel felis lorem.</li>
										<li>Felis enim et feugiat.</li>
									</ol>
									<h3>Icons</h3>
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
									</ul>
								</div>
							</div>
							<h3>Actions</h3>
							<div class="row">
								<div class="col-6 col-12-medium">
									<ul class="actions">
										<li><a href="#" class="button primary">Default</a></li>
										<li><a href="#" class="button">Default</a></li>
									</ul>
									<ul class="actions small">
										<li><a href="#" class="button primary small">Small</a></li>
										<li><a href="#" class="button small">Small</a></li>
									</ul>
									<ul class="actions stacked">
										<li><a href="#" class="button primary">Default</a></li>
										<li><a href="#" class="button">Default</a></li>
									</ul>
									<ul class="actions stacked">
										<li><a href="#" class="button primary small">Small</a></li>
										<li><a href="#" class="button small">Small</a></li>
									</ul>
								</div>
								<div class="col-6 col-12-medium">
									<ul class="actions stacked">
										<li><a href="#" class="button primary fit">Default</a></li>
										<li><a href="#" class="button fit">Default</a></li>
									</ul>
									<ul class="actions stacked">
										<li><a href="#" class="button primary small fit">Small</a></li>
										<li><a href="#" class="button small fit">Small</a></li>
									</ul>
								</div>
							</div>
						</section>

						<section>
							<h2>Table</h2>
							<h3>Default</h3>
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>Name</th>
											<th>Description</th>
											<th>Price</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Item One</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Two</td>
											<td>Vis ac commodo adipiscing arcu aliquet.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Three</td>
											<td> Morbi faucibus arcu accumsan lorem.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Four</td>
											<td>Vitae integer tempus condimentum.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Five</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="2"></td>
											<td>100.00</td>
										</tr>
									</tfoot>
								</table>
							</div>

							<h3>Alternate</h3>
							<div class="table-wrapper">
								<table class="alt">
									<thead>
										<tr>
											<th>Name</th>
											<th>Description</th>
											<th>Price</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Item One</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Two</td>
											<td>Vis ac commodo adipiscing arcu aliquet.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Three</td>
											<td> Morbi faucibus arcu accumsan lorem.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Four</td>
											<td>Vitae integer tempus condimentum.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Five</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="2"></td>
											<td>100.00</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</section>

						<section>
							<h2>Buttons</h2>
							<ul class="actions">
								<li><a href="#" class="button primary">Primary</a></li>
								<li><a href="#" class="button">Default</a></li>
							</ul>
							<ul class="actions">
								<li><a href="#" class="button large">Large</a></li>
								<li><a href="#" class="button small">Small</a></li>
							</ul>
							<ul class="actions fit">
								<li><a href="#" class="button fit">Fit</a></li>
								<li><a href="#" class="button primary fit">Fit</a></li>
								<li><a href="#" class="button fit">Fit</a></li>
							</ul>
							<ul class="actions fit small">
								<li><a href="#" class="button primary fit small">Fit + Small</a></li>
								<li><a href="#" class="button fit small">Fit + Small</a></li>
								<li><a href="#" class="button primary fit small">Fit + Small</a></li>
							</ul>
							<ul class="actions">
								<li><a href="#" class="button primary icon solid fa-download">Icon</a></li>
								<li><a href="#" class="button icon solid fa-download">Icon</a></li>
							</ul>
							<ul class="actions">
								<li><span class="button primary disabled">Disabled</span></li>
								<li><span class="button disabled">Disabled</span></li>
							</ul>
						</section>

						<section>
							<h2>Form</h2>
							<form method="post" action="#">
								<div class="row gtr-uniform">
									<div class="col-6 col-12-xsmall">
										<label for="demo-name">Name</label>
										<input type="text" name="demo-name" id="demo-name" value="" />
									</div>
									<div class="col-6 col-12-xsmall">
										<label for="demo-email">Email</label>
										<input type="email" name="demo-email" id="demo-email" value="" />
									</div>
									<div class="col-12">
										<label for="demo-category">Category</label>
										<select name="demo-category" id="demo-category">
											<option value="">-</option>
											<option value="1">Manufacturing</option>
											<option value="1">Shipping</option>
											<option value="1">Administration</option>
											<option value="1">Human Resources</option>
										</select>
									</div>
									<div class="col-4 col-12-small">
										<input type="radio" id="demo-priority-low" name="demo-priority" checked>
										<label for="demo-priority-low">Low Priority</label>
									</div>
									<div class="col-4 col-12-small">
										<input type="radio" id="demo-priority-normal" name="demo-priority">
										<label for="demo-priority-normal">Normal Priority</label>
									</div>
									<div class="col-4 col-12-small">
										<input type="radio" id="demo-priority-high" name="demo-priority">
										<label for="demo-priority-high">High Priority</label>
									</div>
									<div class="col-6 col-12-small">
										<input type="checkbox" id="demo-copy" name="demo-copy">
										<label for="demo-copy">Email me a copy</label>
									</div>
									<div class="col-6 col-12-small">
										<input type="checkbox" id="demo-human" name="demo-human" checked>
										<label for="demo-human">Not a robot</label>
									</div>
									<div class="col-12">
										<label for="demo-message">Message</label>
										<textarea name="demo-message" id="demo-message" rows="6"></textarea>
									</div>
									<div class="col-12">
										<ul class="actions">
											<li><input type="submit" value="Send Message" class="primary" /></li>
											<li><input type="reset" value="Reset" /></li>
										</ul>
									</div>
								</div>
							</form>
						</section>

						<section>
							<h2>Image</h2>
							<h3>Fit</h3>
							<div class="box alt">
								<div class="row gtr-uniform">
									<div class="col-12"><span class="image fit"><img src="images/pic08.jpg" alt="" /></span></div>
									<div class="col-4"><span class="image fit"><img src="images/pic02.jpg" alt="" /></span></div>
									<div class="col-4"><span class="image fit"><img src="images/pic03.jpg" alt="" /></span></div>
									<div class="col-4"><span class="image fit"><img src="images/pic04.jpg" alt="" /></span></div>
									<div class="col-4"><span class="image fit"><img src="images/pic04.jpg" alt="" /></span></div>
									<div class="col-4"><span class="image fit"><img src="images/pic02.jpg" alt="" /></span></div>
									<div class="col-4"><span class="image fit"><img src="images/pic03.jpg" alt="" /></span></div>
									<div class="col-4"><span class="image fit"><img src="images/pic03.jpg" alt="" /></span></div>
									<div class="col-4"><span class="image fit"><img src="images/pic04.jpg" alt="" /></span></div>
									<div class="col-4"><span class="image fit"><img src="images/pic02.jpg" alt="" /></span></div>
								</div>
							</div>
							<h3>Left &amp; Right</h3>
							<p><span class="image left"><img src="images/pic05.jpg" alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien. Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan.</p>
							<p><span class="image right"><img src="images/pic06.jpg" alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum porttitor mollis id vel diam. Praesent sit amet posuere risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui eget interdum. Fusce lectus magna, sagittis at facilisis vitae, pellentesque at etiam. Quisque posuere leo quis sem commodo, vel scelerisque nisi scelerisque. Suspendisse id quam vel tortor tincidunt suscipit. Nullam auctor orci eu dolor consectetur, interdum ullamcorper ante tincidunt. Mauris felis nec felis elementum varius. Nam sapien ante, varius in pulvinar vitae, rhoncus id massa. Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam, semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum nisl. Aenean erat diam, tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut. Phasellus rutrum cursus velit, eget condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh quis pulvinar.</p>
						</section>


					</section>

<!-- backUp section -->
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

</body>
</html>