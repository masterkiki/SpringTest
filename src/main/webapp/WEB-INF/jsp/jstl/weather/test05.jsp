<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
  <link rel="stylesheet" href="/jstl/weather/style.css" type="text/css">
  
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<section class="contents d-flex">
			<nav class="main-menu">
				<div class="logo d-flex justify-content-center mt-3">
					<img style="width:100px" src="https://www.kma.go.kr/kma/resources/images/sub/sig2.png">
				</div>
				
				
				<div class="menu mt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link text-white font-weight-bold" href="#">날씨</a></li>
						<li class="nav-item"><a class="nav-link text-white font-weight-bold" href="#">날씨입력</a></li>
						<li class="nav-item"><a class="nav-link text-white font-weight-bold" href="#">테마날씨</a></li>
						<li class="nav-item"><a class="nav-link text-white font-weight-bold" href="#">관측 기후</a></li>
					</ul>
				</div>
				</nav>
			<article class="main-contents pl-3 pt-3">
				<div>
					<h2>과거날씨</h2>
					<table class="table text-center">
						<thead>
							<tr>
								<th>날짜</th>
								<th>날씨</th>
								<th>기온</th>
								<th>강수량</th>
								<th>미세먼지</th>
								<th>풍속</th>
							</tr>
						</thead>
						<tbody>
						<tr>
							<td>2015년 7월 1일</td>
							<td><img style="width:40px"src="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg"></td>
							<td>2015년 7월 1일</td>
							<td>2015년 7월 1일</td>
							<td>2015년 7월 1일</td>
							<td>2015년 7월 1일</td>
						</tr>
						</tbody>
					</table>
				</div>
			
			
			</article>
		</section>
		
		<footer class="d-flex">
			<div class="logo d-flex align-items-center justify-content-center"><img width="150" src="https://www.weather.go.kr/plus/resources/image/foot_logo.png"></div>
			<div class="copyright d-flex align-items-center">
				<div class="text-secondary small ml-4">(07062) 서울시 동작구 여의대방로 16길 61길<br>Copyright@2020 KMA. All Rights RESERVED.</div>
			</div>
		</footer>
	</div>
</body>
</html>