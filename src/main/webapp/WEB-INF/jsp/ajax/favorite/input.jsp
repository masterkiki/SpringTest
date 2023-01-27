<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
		<h2>즐겨찾기 추가하기</h2>
		<!--  <form method="get" action="/ajax/favorite/add">-->
			
			<label>제목</label> <br>
			<input type="text" class="form-control" name="name" id="nameInput"> <br>
			<label>주소</label> <br>
			<input type="text" class="form-control" name="url" id="urlInput"> <br>
			<button class="btn btn-success btn-block" type="button" id="addBtn">추가</button>
			
			
		<!--  </form> -->
	</div>
	
	<script>
		$(document).ready(function(){
			
			$("#addBtn").on("click",function(){
				
				let name = $("#nameInput").val();
				let url = $("#urlInput").val();
				
				if(name == ""){
					alert("이름을 입력하세요");
					return;
				} 

				if(url == ""){
					alert("주소를 입력하세요");
					return;
				}
				
				$.ajax({
					type:"Post"
					, url:"/ajax/favorite/add"
					, data:{"name":name , "url": url}
					, success:function(data){
						
						//성공시 : {"result": "success"}
						//성공시 : {"result": "success"}
						
						if(data.result == "success"){
							location.href="/ajax/favorite/list";
						} else{
							alert("추가 실패");
						}
					}
					, error:function(){
						alert("에러 발생");
					}
					
				});
				
			});
			
			
		});
	</script>

</body>
</html>