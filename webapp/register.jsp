<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  		
  		<div class="container-fluid">
		<a class="navbar-brand" href="main.jsp">JSP 게시판</a>
    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      		<span class="navbar-toggler-icon"></span>
		</button>
		
    	<div class="collapse navbar-collapse" id="navbarNav">
      		<ul class="nav nav-pills">
        		<li class="nav-item">
          			<a class="nav-link" aria-current="page" href="main.jsp">메인</a>
       		 	</li>
       		 	<li class="nav-item">
       		 		 <a class="nav-link" href="bbs.jsp">게시판</a>
       		 	</li>
				<li class="nav-item dropdown">
          			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           			 	접속하기
          			</a>
          			<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            			<li><a class="dropdown-item" href="login.jsp">로그인</a></li>
            			<li><a class="dropdown-item active" href="register.jsp">회원가입</a></li>
          			</ul>
       		 	</li>
     	 	</ul>
    	</div>
   	
  		</div>
  		
	</nav>
	
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" >
				<form method="POST" action="registerJoin.jsp">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"	name="userID" maxlength="20">
					</div>
					<br>
					<div>
						<input type="password" class="form-control" placeholder="비밀번호"	name="userPW" maxlength="20">
					</div>
					<br>
					<div>
						<input type="text" class="form-control" placeholder="이름"	name="userName" maxlength="20">
					</div>
					<br>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group">
						
							<input type="radio" class="btn-check" name="userGender" id="option1" autocomplete="off"	value="남자">
							<label class="btn btn-primary" for="option1">남자</label>
							<input type="radio" class="btn-check" name="userGender" id="option2" autocomplete="off"	value="여자">
							<label class="btn btn-primary" for="option2">여자</label>
						</div>
					</div>
					<br>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
					</div>
					<br>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	
</body>
</html>