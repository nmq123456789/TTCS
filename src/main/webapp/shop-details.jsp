<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Male-Fashion</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"rel="stylesheet">

<!-- Css Styles -->
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
	<link rel="stylesheet" href="css/nice-select.css" type="text/css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/test.css">
	<link href="https://fonts.googleapis.com/css?family=Bentham|Playfair+Display|Raleway:400,500|Suranna|Trocchi" rel="stylesheet">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="offcanvas-menu-wrapper">
		<div class="offcanvas__option">
			<div class="offcanvas__links">
				<a href="#">Đăng nhập</a>
			</div>
			<div class="offcanvas__top__hover">
				<span>Usd <i class="arrow_carrot-down"></i></span>
				<ul>
					<li>USD</li>
					<li>EUR</li>
					<li>USD</li>
				</ul>
			</div>
		</div>
		<div class="offcanvas__nav__option">
			<a href="#" class="search-switch"><img src="img/icon/search.png"
				alt="#"></a> <a href="#"><img src="img/icon/heart.png" alt=""></a>
			<a href="show"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
			<div class="price">$0.00</div>
		</div>
		<div id="mobile-menu-wrap"></div>
		<div class="offcanvas__text">
			<p>Miễn phí vận chuyển, bảo đảm đổi trả hoặc hoàn tiền trong 30 ngày.</p>
		</div>
	</div>
	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-7">
						<div class="header__top__left">
							<p>Miễn phí vận chuyển, bảo đảm đổi trả hoặc hoàn tiền trong 30 ngày.</p>
						</div>
					</div>
					<div class="col-lg-6 col-md-5">
						<div class="header__top__right">
							<div class="header__top__links">
								<a href="#">Đăng nhập</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="header__logo">
						<a href="products"><img src="img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<nav class="header__menu mobile-menu">
						<ul>
							<li class="active"><a href="products">Cửa hàng</a></li>
							<li><a href="#">Chi tiết</a>
								<ul class="dropdown">
									<li><a href="show">Giỏ Hàng</a></li>
									<li><a href="./checkout.jsp">Thanh toán</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3 col-md-3">
					<div class="header__nav__option">
						<a href="#" class="search-switch"><img
							src="img/icon/search.png" alt=""></a> <a href="#"><img
							src="img/icon/heart.png" alt=""></a> <a href="show"><img
							src="img/icon/cart.png" alt=""> <span>0</span></a>
						<div class="price">$0.00</div>
					</div>
				</div>
			</div>
			<div class="canvas__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<!-- Shop Details Section Begin -->
	<section class="shop-details">
		<div class="product__details__pic" style="margin: 0px">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="product__details__breadcrumb" style="margin-bottom: 0px">
							<a href="products">Cửa hàng</a> <a href="#">Chi tiết sản phẩm</a> 
						</div>
					</div>
				</div>
				<div class="wrapper">
					<c:set var="c" value="${requestScope.products}"></c:set>
					<div class="product-img" style="background-image: url('${c.anh}');"></div>
					<div class="product-info">
						<div class="product-text">
							<h1>${c.ten}</h1>
							<p style="font-size: 20px">
								${c.mieuta}
							</p>
						</div>
						<div class="product-price-btn">
							<p>
								<span>${c.gia}</span>$
							</p>
							<form action="" name="f" method="post">
								<button onclick="buy(${c.id})" type="button" class="bubbly-button" ><span style="font-size: 17px">+Giỏ Hàng</span></button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Section Begin -->
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="footer__about">
							<div class="footer__logo">
								<a href="#"><img src="img/footer-logo.png" alt=""></a>
							</div>
							<p>Khách hàng là trung tâm của mô hình kinh doanh độc đáo của chúng tôi, bao gồm cả thiết kế.</p>
							<a href="#"><img src="img/payment.png" alt=""></a>
						</div>
					</div>
					<div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
						<div class="footer__widget">
							<h6>Mua sắm</h6>
							<ul>
								<li><a href="#">Cửa hàng quần áo</a></li>
								<li><a href="#">Xu hướng</a></li>
								<li><a href="#">Phụ kiện</a></li>
								<li><a href="#">Giảm giá</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-sm-6">
						<div class="footer__widget">
							<h6>Mua sắm</h6>
							<ul>
								<li><a href="#">Liên hệ</a></li>
								<li><a href="#">Thanh toán</a></li>
								<li><a href="#">Vận chuyển</a></li>
								<li><a href="#">Trả lại & Trao đổi</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
						<div class="footer__widget">
							<h6>Tin tức</h6>
							<div class="footer__newslatter">
								<p>Hãy là người đầu tiên biết về những người mới đến, tìm kiếm, bán hàng và khuyến mãi!</p>
								<form action="#">
									<input type="text" placeholder="Your email">
									<button type="submit">
										<span class="icon_mail_alt"></span>
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="footer__copyright__text">
							<p>
								@
								<script>
									document.write(new Date().getFullYear());
								</script>
								Ngô Minh Quang
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- Footer Section End -->

		<!-- Search Begin -->
		<div class="search-model">
			<div class="h-100 d-flex align-items-center justify-content-center">
				<div class="search-close-switch">+</div>
				<form class="search-model-form">
					<input type="text" id="search-input" placeholder="Search here.....">
				</form>
			</div>
		</div>
		<!-- Search End -->

		<!-- Js Plugins -->
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>
		<script src="js/jquery.nicescroll.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/jquery.countdown.min.js"></script>
		<script src="js/jquery.slicknav.js"></script>
		<script src="js/mixitup.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/main.js"></script>
		<script type="text/javascript">
		var animateButton = function(e) {

			  e.preventDefault;
			  //reset animation
			  e.target.classList.remove('animate');
			  
			  e.target.classList.add('animate');
			  setTimeout(function(){
			    e.target.classList.remove('animate');
			  },700);
			};

			var bubblyButtons = document.getElementsByClassName("bubbly-button");

			for (var i = 0; i < bubblyButtons.length; i++) {
			  bubblyButtons[i].addEventListener('click', animateButton, false);
			}
		</script>
</body>
<script>
	function buy(id) {
		var m = 1;
		document.f.action = "buy?id="+id+"&num="+m;
		document.f.submit();
	}
</script>

</html>