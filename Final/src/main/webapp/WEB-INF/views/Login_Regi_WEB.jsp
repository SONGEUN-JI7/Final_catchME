<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" type="text/css" href="resources/css/login_regi.css"/>
	<style type="text/css">
		/* 이미지 전 설정 */
		.img:before {
			content: "";
			position: absolute;
			right: 0;
			top: 0;
			width: 1804px; /*고정 인제 수정 금지ㅠㅠㅠ*/
			height: 100%;
			background-image: url("resources/img/car-gb74fda5ff_1280.jpg");
			background-size: cover;
			transition: transform 1.2s ease-in-out;
		}
	</style>
</head>
<!-- <script src="./1.회원가입 성공,실패 확인.html"></script> -->
<body>
    <div class="center" style="position: relative;">
        <div class="dropdown" style="float: left;">
            <button class="dropbtn" id="gomain" onclick="GoMain()">
                <img class="homeicon" src="resources/img/home (2).png">
            </button>
        </div>

        <div class="form sign-in">
            <h2 style="color: #212A3E;">Welcome</h2>
            <form action="login" method="post">
                    <p>
                      <input type="text" name="id" id="id" autocomplete="off" required>
                      <label for="id"><span>아이디</span></label>
                    </p>  
                    <p>
                        <input type="password" name="pw" id="password" autocomplete="off" required>
                        <label for="password"><span>비밀번호</span></label>
                    </p> 
                <a href="findPw" style="text-decoration-line: none;"><p class="forgot-pass">비밀번호를 잃어버렸나요?</p></a>
                <button type="submit" class="submit">로그인</button>
            </form>
        </div>

        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h2>Catch you</h2>
                    <p>가입을 통해 Catch you에서 더 다양한 서비스를 만나보세요!</p>
                </div>
                <div class="img__text m--in">
                    <h2 style="font-size: 55px;">Whenever, Wherever</h2>
                    <p>반갑습니다! Catch you의 슬로건과 같이 언제 어디서든 서비스를 만나보세요!</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">회원가입</span>
                    <span class="m--in">로그인</span>
                </div>
            </div>
            <div class="form sign-up" style="margin-left: 600px;" >
                <h2 class="sign_text" style="font-size: 55px; color: #212A3E;">회원가입</h2>

                <form action="sign_up">
                    <p>
                      <input name="id" type="text" id="userid" autocomplete="off" required oninput="checkID()">
                      <label for="id"><span>아이디</span></label>
                    </p>
                    <!-- ID ajax 중복체크 -->
                    <span class="id_ok">사용 가능한 아이디입니다.</span>
                    <span class="id_already">사용중인 아이디입니다!</span>
                    <p>
                        <input type="password" id="user_pw" autocomplete="off" required>
                        <label for="password"><span>비밀번호</span></label>
                    </p> 
                    <p>
                        <input type="text" id="user_name" autocomplete="off" required>
                        <label for="user_name"><span>이름</span></label>
                    </p> 
                    <p>
                        <input type="text" id="user_phon" autocomplete="off" required>
                        <label for="user_phon"><span>핸드폰번호</span></label>
                    </p>
                    <p>
                        <input type="text" id="user_email" autocomplete="off" required>
                        <label for="user_email"><span>이메일</span></label>
                    </p>
                    <button type="button" class="submit" onclick="userRegi()">회원가입</button>
                </form>
            </div>
        </div>
    </div>
    <!-- 회원가입 성공/실패 메시지 -->
    <div class="success_check">
        <div class="success" style="margin-top: -750px;">
            <img src="resources/img/Icon-Reward-unscreen.gif"><br>
            <span>회원가입이 되었습니다!</span>
            <button class="success_btn" type="button" onclick="regiche('succ')">CONTINUE</button>
            
        </div>
        <div class="fail" style="margin-top: -750px; margin-left: 1010px;">
            <img src="resources/img/Loading-fail-unscreen.gif"><br>
            <span>회원가입을 실패했습니다.</span><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <span style="margin-left: 190px;">다시 입력해주세요!</span>

            <!-- <button class="fail_btn" onclick="ondisplay()">TRY AGAIN</button>
            <button class="fail_btn" onclick="offdisplay()">TRY AGAIN</button> -->
            <button class="fail_btn" type="button" onclick="regiche('fail')">TRY AGAIN</button>


              
        </div>
    </div>
    <!-- 여기까지 -->
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
	    function GoMain() {
			location.href="/web";
		}
        // 로그인&회원가입 버튼 눌렀을 때 효과
        document.querySelector('.img__btn').addEventListener('click', function () {
            document.querySelector('.center').classList.toggle('s--signup');
            $('.id_ok').css("display", "none");
            $('.id_already').css("display", "none");
            $("#id").val("");
            $("#password").val("");
            $("#userid").val("");
            $("#user_pw").val("");
            $("#user_name").val("");
            $("#user_email").val("");
            $("#user_phon").val("");
        });

        // 실시간 id 중복 확인
        function checkID(){
        var id = $('#userid').val(); //id값이 "id"인 입력란의 값을 저장
        $.ajax({
            url:'idcheck', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data:{
            	id : id
            },
            success:function(data){ //컨트롤러에서 넘어온 cnt값을 받는다 
                if(data == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                    $('.id_ok').css("display","inline-block"); 
                    $('.id_already').css("display", "none");
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $('.id_already').css("display","inline-block");
                    $('.id_ok').css("display", "none");
                    $('#id').val('');
                }
            },
            error:function(){
                alert("에러입니다");
            }
        });
        };
        function userRegi() {
            // 폼 데이터를 직렬화합니다.
            var formData = {
                id: $("#userid").val(),
                pw: $("#user_pw").val(),
                name: $("#user_name").val(),
                email: $("#user_email").val(),
                phone: $("#user_phon").val()
            };

            // 비동기적으로 회원가입 요청을 서버로 전송합니다.
            $.ajax({
                url: 'join',
                type: 'POST',
                data: formData,
                dataType: "json",
                success: function (data) {
                    if (data != 0) {
                        $('.success').css("display","block");
                        $('.id_ok').css("display", "none");
                        $("#userid").val("");
                        $("#user_pw").val("");
                        $("#user_name").val("");
                        $("#user_email").val("");
                        $("#user_phon").val("");
                        // 회원가입 성공시 처리 (원하는 동작 추가)
                    } else {
                        $('.fail').css("display","block");
                        // 회원가입 실패시 처리 (원하는 동작 추가)
                    }
                },
                error: function (error) {
                    console.log('Error:', error);
                    $('.fail').css("display","block");
                    // 오류 처리 (원하는 동작 추가)
                }
            });
        }
        function regiche(check) {
        	console.log(check)
        	if (check == "succ") {
        		$('.success').css("display","none");
        		$('.center').removeClass('s--signup');
        	}
        	else {
        		$('.fail').css("display","none");
        	}
        }
    </script>
</body>

</html>