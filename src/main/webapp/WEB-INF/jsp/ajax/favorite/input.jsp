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
			<div class="d-flex">
				<input type="text" class="form-control" name="url" id="urlInput">
				<button class="btn btn-info" type="button" id="isdupilcateBtn">중복확인</button> <br>
			</div>
			<div class="small text-danger d-none" id="duplicateDiv">중복된 url 입니다.</div>
			<div class="small text-info d-none" id="availableDiv">저장 가능한 url 입니다.</div>
			<br>
			<button class="btn btn-success btn-block" type="button" id="addBtn">추가</button>
			
			
		<!--  </form> -->
	</div>
	
	<script>
		$(document).ready(function(){
			
		
				
				// 중복 체크 여부 확인 변수 
				var isChecked = false;
				
				// url 중복상태 저장 변수 
				var isDuplicate = true;
				
				
				$("#urlInput").on("input", function() {
					// 중복체크 여부 과정을 모두 취소한다. 
					isChecked = false;
					isDuplicate = true;
					
					$("#duplicateDiv").addClass("d-none");
					$("#availableDiv").addClass("d-none");
				
				});
			
			
			
			$("#isdupilcateBtn").on("click", function(){
					
				let url = $("#urlInput").val();
				
				
				// https:// , http://
				// http 로 시작하지 않고 https로 시작하지 않으면
				//if(!url.startsWith("http://") && !url.startsWith("https://")){
				if(!(url.startsWith("http://") || url.startsWith("https://"))){
					alert("주소 형식이 잘못 되었습니다.")
					return;
				}
				
				$.ajax({
					type:"post"
					, url:"/ajax/favorite/is_duplicate"
					, data:{"url":url}
					, success:function(data){
					
						// 중복 체크 완료
						isChecked = true;
							
						if(data.is_duplicate) {  // 중복됨
							$("#duplicateDiv").removeClass("d-none");
							$("#availableDiv").addClass("d-none");
							isDuplicate = true;
						} else { // 사용가능
							$("#availableDiv").removeClass("d-none");
							$("#duplicateDiv").addClass("d-none");
							isDuplicate = false;
							
						}
					}
					
					,error:function() {
						alert("에러 발생")
					}
					
				});
				
			});
			
			
			
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