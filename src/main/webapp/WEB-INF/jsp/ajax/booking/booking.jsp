<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <title>test06s</title>
       
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
            
            
                <article class="main-banner">
                    <img id="mainBanner" src="http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg">
                </article>
                <article class="main-info d-flex">
                    <div class="reservation col-4 d-flex justify-content-center align-items-center">
                        <div class="display-4 text-white">
                            실시간<br>예약 하기
                        </div>
                    </div>
                    <div class="confirm col-5 p-4">
                        <div class="d-flex align-items-end text-white">
                            <h3 class="mr-3">예약확인</h3>
                            <label>회원<input type="radio" name="member" value="member" checked></label>
                            <label class="ml-2">비회원<input type="radio" name="member" value="nonMember"></label>
                            
                        </div>
                        <div class="text-white mt-3" id="memberInput">
                            <div class="d-flex" >
                                <label class="col-3">아이디 : </label>
                                <input type="text" class="form-control cal-9 mb-3" id="idInput">
                            </div>
                            <div class="d-flex">
                                <label class="col-3">비밀번호 : </label>
                                <input type="text" class="form-control col-9" id="passwordInput">
                            </div>
                        </div>

                        <div class="text-white d-none" id="nonMemberInput">
                            <div class="d-flex">
                                <label class="col-3">이름 : </label>
                                <input type="text" class="form-control cal-9 mb-3" id="nameInput">
                            </div>
                            <div class="d-flex mt-2">
                                <label class="col-3">전화번호 : </label>
                                <input type="text" class="form-control cal-9 mb-3" id="phoneNumberInput">
                            </div>
                            <div class="d-flex mt-2">
                                <label class="col-3">날짜 : </label>
                                <input type="text" class="form-control cal-9 mb-3" id="date">
                            </div>
                        </div>

                        <div class="d-flex justify-content-end mt-3">
                            <button type="button" class="btn btn-success"id="lookUpBtn">조회하기</button>
                        </div>

                    </div>
                    <div class="contact col-3 d-flex justify-content-center align-items-center">
                        <div class="text-white">
                            <h2>예약문의</h2>
                            <h1>010-<br>000-1111</h1>
                        </div>
                    </div>
                </article>
            </section>
            <footer class="samll text-secondary">
            
            

                <div>
                    제주특별자치도 제주시 애월읍<br>
                    사업자등록번호 : 111-22-255222 / 농어촌민박사업자지정/ 대표:김동욱<br>
                    CopyRight 2025 tongnammu All right reserved
                </div>
            </footer>

        </div>

        <script>
            $(document).ready(function(){



                $("#date").datepicker({
                    minDate:0,
                    dateFormat:"yy년 mm월 dd일"
                });
                
                var imageList = [
                    "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg",
                    "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner2.jpg",
                    "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner3.jpg",
                    "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner4.jpg",
                ];

                var currentIndex = 0;

                setInterval(function() {
                    currentIndex++;
                    if(currentIndex == 4){
                        currentIndex = 0;
                    }
                    $("#mainBanner").attr("src",imageList[currentIndex]);
                    
                }, 3000);


                $("#lookUpBtn").on("click", function(){
                    
                    let id = $("#idInput").val();
                    let password = $("#passwordInput").val();
                    let name = $("#nameInput").val();
                    let phoneNumber = $("#phoneNumberInput").val();
                    let date = $("#date").val();

                    // 회원이 선택된 경우
                    let type = $("input[name='member']:checked").val();
                    
                   
                    if(type == "member"){
                        if(id == ""){
                            alert("아이디를 입력하세요");
                            return;
                        }
    
                        if(password == ""){
                            alert("비밀번호를 입력하세요");
                            return;
                        }
                    } else{ // 비회원이 선택된 경우
                        
                        if(name == ""){
                            alert("이름을 입력하세요");
                            return;
                        }
    
                        if(phoneNumber == ""){
                            alert("전회번호를 입력하세요");
                            return;
                        }


                        // 010으로 시작하지 않을때
                        if(!phoneNumber.startsWith("010")){
                            alert("010으로 시작하는 번호만 입력 가능합니다.")
                            return;
                        }
    
                        if(date == ""){
                            alert("날짜를 선택하세요");
                            return;
                        }
                    }
                    
                    $.ajax({
                    	type:"get"
                    	, url:"/ajax/booking/confirm"
                    	, data:{"name":name, "phoneNumber":phoneNumber}
                    
                    
                    
                    	, success:function(data){
	                    	if(data.result == "fail"){
	                    		alert("조회대상이 없습니다.");
	                    	} else{
	                    		alert("이름 : " + data.booking.name + 
	                    				"\n날짜 : " + data.booking.date.substring(0, 10) + 
	                    				"\n일수 : " + data.booking.day +
	                    				"\n인원 : " + data.booking.headcount +
	                    				"\n상태 : " + data.booking.state
	                     		);
	                    		
	                    	}
                    	}
                    	, error:function(){
                    		alert("에러 발생");
                    	}
                    	
                    	
                    });
                    




                });

                $("input[name='member']").on("change", function(){
                    // 선택된 input tag 가져오기
                    let type = $(this).val();

                    if(type == "member"){
                        // 멤버 인풋 보여주고
                        $("#memberInput").removeClass("d-none");
                        // 논 멤버 인풋 숨긴다
                        $("#nonMemberInput").addClass("d-none");
                    } else{
                        //논 멤버 인풋 보여주고
                        $("#nonMemberInput").removeClass("d-none");
                        // 멤버 인풋 숨긴다.
                        $("#memberInput").addClass("d-none");
                    }
                    
                });
            });

        </script>
    </body>
</html>
