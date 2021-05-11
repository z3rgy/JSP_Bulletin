<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"/> 
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$('.slider').bxSlider({ //
			auto: true, //자동으로 작동하는게 참이다
			speed: 1000, //1초만에 페이지 넘김
			pause: 2500, //2.5동안 화면 멈춤
			mode: 'fade', //수평 스크롤 방식을 사용할것이다
			pager: true, //페이지 양옆 방향버튼을 보이게 할것인가
			autoHover: true, //마우스를 올리면 멈추게 하기
         
		});
	});
</script>
<style>
    *{
        margin:0;
        padding:0;
    }
    img{
        border:none 0;
        vertical-align:top;
    }
    #slider{
        position:relative;
    
        margin:0 auto;
        padding-left:80px;
    }
</style>

<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">

		<div class="container-fluid">
			<a class="navbar-brand" href="main.jsp">JSP 게시판</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="nav nav-pills">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="main.jsp">메인</a></li>
					<li class="nav-item"><a class="nav-link" href="bbs.jsp">게시판</a>
					</li>
					<%
					if (userID == null) {
					%>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 접속하기 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="login.jsp">로그인</a></li>
							<li><a class="dropdown-item" href="register.jsp">회원가입</a></li>
						</ul></li>
					<%
					} else {
					%>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 회원관리 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="logout.jsp">로그아웃</a></li>
						</ul></li>
					<%
					}
					%>
				</ul>
			</div>

		</div>

	</nav>
	<div class="container">
		<div class="bg-light p-5 rounded-lg m-3">
			<div class="container">
				<h1>웹사이트 소개</h1>
				<p>JSP 연습으로 만든 웹사이트. <br> 부트스트랩을 더 연습해야겠음.</p>
				<p><a class="btn btn-primary btn-pull" href="#" role="button">자세히 알아보기</a></p>
			</div>
		</div>
	</div>
		<div class="slider">
		<div class="slide"><img src="images/1.jpg"></div>
		<div class="slide"><img src="images/2.jpg"></div>
		<div class="slide"><img src="images/3.jpg"></div>
		<div class="slide"><img src="images/4.jpg"></div>
		<div class="slide"><img src="images/5.jpg"></div>
		<div class="slide"><img src="images/6.jpg"></div>
	</div>
</body>
</html>