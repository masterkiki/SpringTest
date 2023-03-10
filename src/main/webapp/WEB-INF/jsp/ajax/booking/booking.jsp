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
                <div class="display-4">????????? ??????</div>
            </header>
            <nav class="main-menu">
                <ul class="nav nav-fill">
                    <li class="nav-item"><a href="#" class="nav-link text-white">????????????</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white">????????????</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white">????????????</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white">????????????</a></li>
                </ul>
            </nav>

            <section class="contents">
            
            
                <article class="main-banner">
                    <img id="mainBanner" src="http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg">
                </article>
                <article class="main-info d-flex">
                    <div class="reservation col-4 d-flex justify-content-center align-items-center">
                        <div class="display-4 text-white">
                            ?????????<br>?????? ??????
                        </div>
                    </div>
                    <div class="confirm col-5 p-4">
                        <div class="d-flex align-items-end text-white">
                            <h3 class="mr-3">????????????</h3>
                            <label>??????<input type="radio" name="member" value="member" checked></label>
                            <label class="ml-2">?????????<input type="radio" name="member" value="nonMember"></label>
                            
                        </div>
                        <div class="text-white mt-3" id="memberInput">
                            <div class="d-flex" >
                                <label class="col-3">????????? : </label>
                                <input type="text" class="form-control cal-9 mb-3" id="idInput">
                            </div>
                            <div class="d-flex">
                                <label class="col-3">???????????? : </label>
                                <input type="text" class="form-control col-9" id="passwordInput">
                            </div>
                        </div>

                        <div class="text-white d-none" id="nonMemberInput">
                            <div class="d-flex">
                                <label class="col-3">?????? : </label>
                                <input type="text" class="form-control cal-9 mb-3" id="nameInput">
                            </div>
                            <div class="d-flex mt-2">
                                <label class="col-3">???????????? : </label>
                                <input type="text" class="form-control cal-9 mb-3" id="phoneNumberInput">
                            </div>
                            <div class="d-flex mt-2">
                                <label class="col-3">?????? : </label>
                                <input type="text" class="form-control cal-9 mb-3" id="date">
                            </div>
                        </div>

                        <div class="d-flex justify-content-end mt-3">
                            <button type="button" class="btn btn-success"id="lookUpBtn">????????????</button>
                        </div>

                    </div>
                    <div class="contact col-3 d-flex justify-content-center align-items-center">
                        <div class="text-white">
                            <h2>????????????</h2>
                            <h1>010-<br>000-1111</h1>
                        </div>
                    </div>
                </article>
            </section>
            <footer class="samll text-secondary">
            
            

                <div>
                    ????????????????????? ????????? ?????????<br>
                    ????????????????????? : 111-22-255222 / ??????????????????????????????/ ??????:?????????<br>
                    CopyRight 2025 tongnammu All right reserved
                </div>
            </footer>

        </div>

        <script>
            $(document).ready(function(){



                $("#date").datepicker({
                    minDate:0,
                    dateFormat:"yy??? mm??? dd???"
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

                    // ????????? ????????? ??????
                    let type = $("input[name='member']:checked").val();
                    
                   
                    if(type == "member"){
                        if(id == ""){
                            alert("???????????? ???????????????");
                            return;
                        }
    
                        if(password == ""){
                            alert("??????????????? ???????????????");
                            return;
                        }
                    } else{ // ???????????? ????????? ??????
                        
                        if(name == ""){
                            alert("????????? ???????????????");
                            return;
                        }
    
                        if(phoneNumber == ""){
                            alert("??????????????? ???????????????");
                            return;
                        }


                        // 010?????? ???????????? ?????????
                        if(!phoneNumber.startsWith("010")){
                            alert("010?????? ???????????? ????????? ?????? ???????????????.")
                            return;
                        }
    
                        if(date == ""){
                            alert("????????? ???????????????");
                            return;
                        }
                    }
                    
                    $.ajax({
                    	type:"get"
                    	, url:"/ajax/booking/confirm"
                    	, data:{"name":name, "phoneNumber":phoneNumber}
                    
                    
                    
                    	, success:function(data){
	                    	if(data.result == "fail"){
	                    		alert("??????????????? ????????????.");
	                    	} else{
	                    		alert("?????? : " + data.booking.name + 
	                    				"\n?????? : " + data.booking.date.substring(0, 10) + 
	                    				"\n?????? : " + data.booking.day +
	                    				"\n?????? : " + data.booking.headcount +
	                    				"\n?????? : " + data.booking.state
	                     		);
	                    		
	                    	}
                    	}
                    	, error:function(){
                    		alert("?????? ??????");
                    	}
                    	
                    	
                    });
                    




                });

                $("input[name='member']").on("change", function(){
                    // ????????? input tag ????????????
                    let type = $(this).val();

                    if(type == "member"){
                        // ?????? ?????? ????????????
                        $("#memberInput").removeClass("d-none");
                        // ??? ?????? ?????? ?????????
                        $("#nonMemberInput").addClass("d-none");
                    } else{
                        //??? ?????? ?????? ????????????
                        $("#nonMemberInput").removeClass("d-none");
                        // ?????? ?????? ?????????.
                        $("#memberInput").addClass("d-none");
                    }
                    
                });
            });

        </script>
    </body>
</html>
