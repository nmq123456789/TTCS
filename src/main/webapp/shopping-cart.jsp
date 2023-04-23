<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Male-Fashion</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
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
				alt=""></a> <a href="#"><img src="img/icon/heart.png" alt=""></a>
			<a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
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
							<li class="active"><a href="/TTCS/products">Cửa hàng</a></li>
							<li><a href="#">Chi tiết</a>
								<ul class="dropdown">
									<li><a href="show">Giỏ hàng</a></li>
									<li><a href="checkout.jsp">Thanh toán</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3 col-md-3">
					<div class="header__nav__option">
						<a href="#" class="search-switch"><img
							src="img/icon/search.png" alt=""></a> <a href="#"><img
							src="img/icon/heart.png" alt=""></a> <a href="#"><img
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

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>Giỏ hàng</h4>
						<div class="breadcrumb__links">
							<a href="/TTCS/products">Cửa hàng</a> <a href="#">Giỏ hàng</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shopping Cart Section Begin -->
	<section class="shopping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="shopping__cart__table">
						<table>
							<thead>
								<tr>
									<th>Sản phẩm</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:set var="o" value="${requestScope.cart}"></c:set>
								<c:forEach items="${o.items}" var="i">
									<tr>
										<td class="product__cart__item">
											<div class="product__cart__item__pic">
												<img width="90rem" height="auto" src="${i.product.anh}"
													alt="">
											</div>
											<div class="product__cart__item__text">
												<h6>${i.product.ten}</h6>
												<h5>$${i.product.gia}</h5>
											</div>
										</td>
										<td class="quantity__item">
											<div class="quantity">
												<div>
													<button>
														<a style="color: red;" href="process?num=-1&id=${i.product.id}">-</a>
													</button>
													${i.quantity}
													<button>
														<a style="color: red;" href="process?num=1&id=${i.product.id}">+</a>
													</button>
												</div>
											</div>
										</td>
										<td class="cart__price">$${i.product.gia * i.quantity}</td>
										<td class="cart__close">
											<form name ="f" action="process" method="post">
												<input type="hidden" name="id" value="${i.product.id}"/>
												<button style="border: 0px ;padding: 0px; display: flex; justify-content: center; align-items: center; border-radius: 50%;" onclick="close()"><i style="color: red;" class="fa fa-close"></i></button>
											</form>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6"></div>
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="continue__btn update__btn">
								<a href="products"><i class="fa fa-spinner"></i>Tiếp tục mua sắm</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="cart__discount">
						<h6>Mã giảm giá</h6>
						<form action="#">
							<input type="text" placeholder="Coupon code">
							<button type="submit">Áp dụng</button>
						</form>
					</div>
					<div class="cart__total">
						<h6>Hoá đơn</h6>
						<ul>
							<li>Tổng phụ<span>$${o.getTotalMoney()}</span></li>
							<li>Thành tiền <span>$${o.getTotalMoney()}</span></li>
						</ul>
						<a href="#" class="primary-btn">Thanh toán</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shopping Cart Section End -->

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
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<p>
							@
							<script>
								document.write(new Date().getFullYear());
							</script>
							Ngô Minh Quang
						</p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
</body>
<script>
	function close() {
		document.f.submit();
	}
</script>
</html>