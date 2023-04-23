<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<title>Thời trang</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">
<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
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
                <a href="#">Ngôn ngữ</a>
            </div>
        </div>
        <div class="offcanvas__nav__option">
            <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
            <a href="#"><img src="img/icon/heart.png" alt=""></a>
            <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
            <div class="price">$0.00</div>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__text">
            <p>Miễn phí vận chuyển, đổi trả trong 30 ngày hoặc đảm bảo hoàn tiền.</p>
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
							<p>Miễn phí vận chuyển, đổi trả trong 30 ngày hoặc đảm bảo hoàn tiền.</p>
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
						<a href="/TTCS/products"><img src="img/logo.png" alt=""></a>
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
							<li><a href="#">Thuật toán</a>
								<ul class="dropdown">
									<li><a href="bfsttcs.html">Thuật toán BFS</a></li>
									<li><a href="ucsttcss.html">Thuật toán UCS</a></li>
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
						<h4>Cửa hàng</h4>
						<div class="product__details__breadcrumb" style="margin-bottom: 0px">
							<a href="products">Cửa hàng</a>  
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shop Section Begin -->
	<section class="shop spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="shop__sidebar">
						<div class="shop__sidebar__search">
							<form action="products">
								<input style="border: 1px solid black; color: black;"
									type="text" placeholder="Search..." name="key">
								<button type="submit">
									<span style="color: black;" class="icon_search"></span>
								</button>
							</form>
						</div>
						<div class="shop__sidebar__accordion">
							<div class="accordion" id="accordionExample">
								<div class="card">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseOne">Thể loại</a>
									</div>
									<div id="collapseOne" class="collapse show"
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__brand">
												<ul class="nice-scroll">
													<c:forEach var="c" items="${requestScope.data}">
														<li><a style="color: black;"
															href="products?cid=${c.id}">${c.ten}</a></li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-9">
					<form action="" name="f" method="post">
						<div class="row">
							<c:forEach var="c" items="${requestScope.products}">
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg" data-setbg="${c.anh}">
											<ul class="product__hover">
												<li><a href="#"><img src="img/icon/heart.png"
														alt=""></a></li>
												<li><a href="#"><img src="img/icon/compare.png"
														alt=""></a></li>
												<li><a href="details?id=${c.id}"><img
														src="img/icon/search.png" alt=""><span>Chi tiết</span></a></li>
											</ul>
										</div>
										<div class="product__item__text">
											<h6>${c.ten}</h6>
											<a href="#" class="add-cart" onclick="buy(${c.id})">+ Giỏ hàng</a>
											<div class="rating">
												<i style="color: #f7941d;" class="fa fa-star"></i> <i
													style="color: #f7941d;" class="fa fa-star"></i> <i
													style="color: #f7941d;" class="fa fa-star"></i> <i
													style="color: #f7941d;" class="fa fa-star"></i> <i
													style="color: #f7941d;" class="fa fa-star"></i>
											</div>
											<h5>$${c.gia}</h5>
											<div class="product__color__select">
												<label for="pc-4"> <input type="radio" id="pc-4">
												</label> <label class="active black" for="pc-5"> <input
													type="radio" id="pc-5">
												</label> <label class="grey" for="pc-6"> <input type="radio"
													id="pc-6">
												</label>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<div class="product__pagination">
									<a class="active" href="#">1</a> 
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__logo">
							<a href="#"><img src="img/footer-logo.png" alt=""></a>
						</div>
						<p>Khách hàng là trung tâm của mô hình kinh doanh độc đáo của chúng tôi, bao gồm thiết kế.</p>
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
</body>

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

<script>
	function buy(id) {
		var m = 1;
		document.f.action = "buy?id="+id+"&num="+m;
		document.f.submit();
	}
</script>
</html>