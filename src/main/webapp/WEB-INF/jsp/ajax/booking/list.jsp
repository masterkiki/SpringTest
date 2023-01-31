<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <title>ajax test 통나무팬션</title>
       
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
        crossorigin="anonymous">
        </script>

        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script> 

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        <link rel="stylesheet" href="/ajax/booking/style.css" type="text/css">

    </head>
    
    <body>
        <div id="wrap">
            <header class="d-flex justify-content-center align-items-center">
                <div class="display-4">통나무 팬션</div>
            </header>
            <nav class="main-menu">
                <ul class="nav nav-fill">
                    <li class="nav-item"><a href="#" class="nav-link text-white">팬션소개</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white">객실보기</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white">예약안내</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white">커뮤니티</a></li>
                </ul>
            </nav>

            <section class="contents">
            
            	<article>
            		<h2 class="text-center mt-4">예약 목록 보기</h2>
            		<table class="table text-center">
            			<thead>
 							<tr>
 								<th>이름</th>
 								<th>예약날짜</th>
 								<th>숙박일수</th>
 								<th>숙박인원</th>
 								<th>전화번호</th>
 								<th>예약상태</th>
 							</tr>
 							           			
            			</thead>
            			
            			<tbody>
            				<c:forEach var="bookinglist" items="${bookinglist }">
            				<tr>
            					<td>${bookinglist.name}</td>
            					<td>${bookinglist.date}</td>
            					<td>${bookinglist.day}</td>
            					<td>${bookinglist.headcount}</td>
            					<td>${bookinglist.phoneNumber}</td>
            					<c:choose>
            						<c:when test="${fn:startWith(bookinglist.state, '대기중' }">
            					<td>${bookinglist.state}</td>
            					</c:choose>
            					<td><button type="button" class="btn btn-danger">삭제</button></td>
            				</tr>
            				</c:forEach>
            			</tbody>
            			
            		
            		</table>
            	</article>
            
            
            <footer class="samll text-secondary">
            
            

                <div>
                    제주특별자치도 제주시 애월읍<br>
                    사업자등록번호 : 111-22-255222 / 농어촌민박사업자지정/ 대표:김동욱<br>
                    CopyRight 2025 tongnammu All right reserved
                </div>
            </footer>

        </div>


    </body>
</html>
