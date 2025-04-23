<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹에 넣어주려고 사용 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- bootstrap.css를 홈페이지에서 사용하겠다 명시 -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>첫 번째 - JSP 게시판 웹 사이트(메인 화면)</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") !=null){
			userID = (String) session.getAttribute("userID");
		}
	%>
	<!-- 네비게이션 구현 -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if(userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">						
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1>첫 번째 - JSP 게시판 웹 사이트</h1>
			<br/>
			<p>이 웹 사이트는 최소한의 간단한 로직만을 구현한 게시판 사이트로, 
			<br/>디자인 템플릿으로는 부트스트랩을 이용했습니다.
			<br/>
			<br/>
			<a class="btn btn-primary bit-pull" href="https://drive.google.com/file/d/1Y2U7xBXPkwEoy61aYWg-eFL_4NRL4Ll4/view?usp=drive_link" role="button">개인 포트폴리오</a></p>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" ></li>
				<li data-target="#myCarousel" data-slide-to="2" ></li>
				<li data-target="#myCarousel" data-slide-to="3" ></li>
				<li data-target="#myCarousel" data-slide-to="4" ></li>
				<li data-target="#myCarousel" data-slide-to="5" ></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/맹구.jpeg">
				</div>
				<div class="item">
					<img src="images/짱구.jpeg">
				</div>
				<div class="item">
					<img src="images/철수.jpeg">
				</div>
				<div class="item">
					<img src="images/훈이.jpeg">
				</div>
				<div class="item">
					<img src="images/유리.jpeg">
				</div>
				<div class="item">
					<img src="images/수지.jpeg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<!-- jquery를 특정 홈페이지에서 가져오고 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- js파일도 참조 -->
	<script src="js/bootstrap.js"></script>
</body>
</html>