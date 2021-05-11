<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>freshbsSlider.jsp</title>
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"> 
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 
<script>
	$(document).ready(function() {
		$('.slider').bxSlider({ //
			auto: true, //�ڵ����� �۵��ϴ°� ���̴�
			speed: 1000, //1�ʸ��� ������ �ѱ�
			pause: 2500, //2.5���� ȭ�� ����
			mode: 'fade', //���� ��ũ�� ����� ����Ұ��̴�
			pager: true, //������ �翷 �����ư�� ���̰� �Ұ��ΰ�
			autoHover: true //���콺�� �ø��� ���߰� �ϱ�
		});
	});
</script>
</head>
<body>
	<div class="title">
		<nav id="header">
			<div class="header_menu">
				<ul class="header_menu">
					<li class="header_menu_item"><a href="./�Խ��Ǹ����/src/main/webapp/login.jsp">�α���</a></li>
					<li class="header_menu_item1"><a>ȸ������</a></li>
					<li class="header_menu_item2"><a>������</a></li>
				</ul>
			</div>
		</nav>
		
		<div class="logo_search">
			<div class="header_logo">
				<a href="/main"> <img src="images/logo.png" class="logo"> </a>
			</div>
		</div>
	</div>
	
	<div class="menu">
		<div class="navbar">
			<div class="navbar_menu">
				<ul class="navbar_menu_ul">
					<li><a href="/main"> 
						<img src="images/ham.png" class="ham"> ��ü��ǰ</a>
						<ul>
							<li><a> ä�� </a>
								<ul>
									<li><a href="/shop/list?c=11&l=10"> ä�� </a></li>
								</ul>
							</li>
							<li><a> ���ϡ��߰����� </a>
								<ul>
									<li><a href="/shop/list?c=21&l=20"> ��ö���� </a></li>
									<li><a href="/shop/list?c=22&l=20"> ���� </a></li>
									<li><a href="/shop/list?c=23&l=20"> �߰��� </a></li>
									<li><a href="/shop/list?c=24&l=20"> �ҡ���� </a></li>
								</ul>
							</li>
							<li><a> ���ꡤ�Ǿ </a>
								<ul>
									<li><a href="/shop/list?c=31&l=30"> ��ö���� </a></li>
									<li><a href="/shop/list?c=32&l=30"> ������ </a></li>
									<li><a href="/shop/list?c=33&l=30"> ������ </a></li>
									<li><a href="/shop/list?c=34&l=30"> ��ü�� </a></li>
									<li><a href="/shop/list?c=35&l=30"> ������ </a></li>
									<li><a href="/shop/list?c=36&l=30"> �Ǿ </a></li>
								</ul></li>
							<li><a> ��������� </a>
								<ul>
									<li><a href="/shop/list?c=41&l=40"> �Ұ�� </a></li>
									<li><a href="/shop/list?c=42&l=40"> ������� </a></li>
									<li><a href="/shop/list?c=43&l=40"> �ߡ����� </a></li>
									<li><a href="/shop/list?c=44&l=40"> ����� </a></li>
								</ul>
							</li>
						</ul></li>
					<li> <a href="/shop/list?c=11&l=10"> ��깰 </a> </li>
                    <li> <a href="/shop/list?c=35&l=30"> ���깰 </a> </li>
                    <li> <a href="/shop/list?c=41&l=40"> ��깰 </a> </li>
                    <li> <a href="#benefit_item"> �˶���� </a> </li>
				</ul>
				<div class="search">
					<input type="text" name="keyword" class="search_text"
						placeholder="�ż��� �ٸ��԰Ÿ�" value="${pageMaker.cri.keyword}">
					<input type="image" src="images/search.png"
						class="btn_search">
				</div>
			</div>
		</div>
	</div>

	<div class="slider">
		<div><a href="#"><img src="images/main_banner_1.jpg"></a></div>
		<div><a href="#"><img src="images/main_banner_2.jpg"></a></div>
		<div><a href="#"><img src="images/main_banner_3.gif"></a></div>
		<div><a href="#"><img src="images/main_banner_4.gif"></a></div>
		<div><a href="#"><img src="images/main_banner_5.gif"></a></div>
		<div><a href="#"><img src="images/main_banner_6.gif"></a></div>
		<div><a href="#"><img src="images/main_banner_7.jpg"></a></div>
		<div><a href="#"><img src="images/main_banner_8.gif"></a></div>
	</div>
</body>
</html>
