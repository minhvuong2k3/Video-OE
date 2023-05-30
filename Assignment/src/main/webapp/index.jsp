<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OE</title>
<link rel="stylesheet" href="./style/css/index.css">
<script src="https://kit.fontawesome.com/f6131b4c65.js" crossorigin="anonymous"></script>
</head>
<body>
	<section class="header" id="header">
		<div class=banner>
			<div id="navbar" class="navbar">
				<img src="./style/img/logo.png" class="logo"/>
				<ul class="menu">
					<li><a href="#header">Home</a></li>
					<li><a href="#introduce">About</a></li>
					<li><a href="#cta">Contact us</a></li>
					<c:if test="${empty user}">
						<li><a href="/Assignment/login/index">Sign in</a></li>
					</c:if>
					<c:if test="${not empty user}">
						<c:if test="${user.fullname != null}">
							<li><a href="/Assignment/login/index">${user.fullname}</a></li>
						</c:if>
						<c:if test="${user.fullname == null}">
							<li><a href="/Assignment/login/index">${user.id}</a></li>
						</c:if>
					</c:if>
				</ul>
			</div>
			<div class="content">
				<h1>CHOOSE YOUR SKITS</h1>
				<p>OE - The leading entertainment service provider.</p>
				<div>
					<form action="/Assignment/watch-product/index" method="post">
						<button type="submit"><span></span>WATCH MORE</button>
					</form>
				</div>
			</div>
		</div>
	</section>

	<section class="introduce" id="introduce">
		<h1>Videos We Offer</h1>
		<p>Please experience and rate our service.</p>

		<div class="row">
			<div class="introduce-col">
				<h3>Music</h3>
				<p>We provide the most popular music in Vietnam and the world.</p>
			</div>
			<div class="introduce-col">
				<h3>Comedy</h3>
				<p>We provide hilarious comedy skits and highly entertaining snippets.</p>
			</div>
			<div class="introduce-col">
				<h3>Movies</h3>
				<p>We offer a wide range of trending blockbusters, the latest and greatest movies.</p>
			</div>
		</div>
	</section>

	<section class="corporate-landscape" id="corporate-landscape">
		<h1>Our Corporate Landscape</h1>
		<p>The perfect environment always brings out the best.</p>

		<div class="row">
			<div class="corporate-landscape-col">
				<img src="./style/img/corporate-landscape_1.jpg"/>
				<div class="layer">
					<h3>HA NOI</h3>
				</div>
			</div>
			<div class="corporate-landscape-col">
				<img src="./style/img/corporate-landscape_2.jpg"/>
				<div class="layer">
					<h3>HO CHI MINH</h3>
				</div>
			</div>
			<div class="corporate-landscape-col">
				<img src="./style/img/corporate-landscape_3.jpg"/>
				<div class="layer">
					<h3>DA NANG</h3>
				</div>
			</div>
		</div>
	</section>

	<section class="testimonials" id="testimonials">
		<h1>What Our Partner Says</h1>
		<p>We always respect our partners' contributions.</p>

		<div class="row">
			<div class="testimonial-col">
				<img src="./style/img/user_1.jpg"/>
				<div>
					<p>OE gave me an absolutely amazing service, they provided me with everything I needed quickly.</p>
					<h3>Christine BerkLey</h3>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-half-o"></i>
				</div>
			</div>
			<div class="testimonial-col">
				<img src="./style/img/user_2.jpg"/>
				<div>
					<p>OE's staff is really great, they are friendly, enthusiastic and work extremely quickly. I had a great experience here.</p>
					<h3>David Byer</h3>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
			</div>
		</div>
	</section>

	<section class="cta" id="cta">
		<h1>Enroll Our Various Online Services Anywhere In The World</h1>
		<button type="button"><span></span>CONTACT US</button>
	</section>

	<section class="footer">
		<h4>About us</h4>
		<p>With a team of professional staff we always bring customers the best experience.</p>
		<div class="icons">
			<i class="fa fa-facebook"></i>
			<i class="fa fa-twitter"></i>
			<i class="fa fa-instagram"></i>
			<i class="fa fa-linkedin-in"></i>
		</div>
		<p>Made with <i class="fa fa-heart-o"></i> by Minh Vuong Coder</p>
	</section>


	<script src="./js/index.js"></script>
</body>
</html>