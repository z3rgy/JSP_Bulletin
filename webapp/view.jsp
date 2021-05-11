<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
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
	<%
	String userID = null;
			if (session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
			}
			int bbsID = 0;
			if (request.getParameter("bbsID") !=null){
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
			}
			if (bbsID == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
			}
			Bbs bbs = new BbsDAO().getBbs(bbsID);
	%>
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
       		 		 <a class="nav-link active" href="bbs.jsp">게시판</a>
       		 	</li>
       		 	<%
					if(userID == null){
				%>
				<li class="nav-item dropdown">
          			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           			 	접속하기
          			</a>
          			<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            			<li><a class="dropdown-item" href="login.jsp">로그인</a></li>
            			<li><a class="dropdown-item" href="register.jsp">회원가입</a></li>
          			</ul>
       		 	</li>
       		 	<%
					} else {
       		 	%>
				<li class="nav-item dropdown">
          			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           			 	회원관리
          			</a>
          			<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            			<li><a class="dropdown-item" href="logout.jsp">로그아웃</a></li>
          			</ul>
       		 	</li>
       		 	<%
					}
       		 	%>
     	 	</ul>
    	</div>
   	
  		</div>
  		
	</nav>
	
	<div class="container">
		<div class="row">

			<table class="table table-striped" style="text-align:center; border: 1px soild #dddddd">
				
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글보기</th>

					</tr>
				</thead>
				
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%= bbs.getUserID() %></td>
					</tr>
					<tr>
						<td>작성일</td>
						<td><%= bbs.getBbsDate().substring(0,11)+bbs.getBbsDate().substring(11, 13)+"시"+bbs.getBbsDate().substring(14, 16)+"분" %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 300px; text-align:left"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
				</tbody>
		
			</table>

			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<a href="bbs.jsp" class="btn btn-info">목록</a>
				<%
					if (userID != null && userID.equals(bbs.getUserID())){
				%>
					<a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-warning">수정</a>
					<a onclick="return confirm('정말로 삭제하시 겠습니까?')" href="delete.jsp?bbsID=<%= bbsID %>" class="btn btn-danger">삭제</a>
				<%
					}
				%>
				
			</div>

		</div>
	</div>
	
</body>
</html>