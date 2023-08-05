<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        html {
            height: 100%;
        }

        body {
            width: 100%;
            height: 100%;
            margin: 0;
            /* padding-top: 200px;
            padding-bottom: 40px; */
            font-family: "Nanum Gothic", arial, helvetica, sans-serif;
            background-repeat: no-repeat;
            background-color: #212A3E;
            font-size: 20px;

        }

        .card {
            margin: 0 auto;
            /* Added */
            float: none;
            /* Added */
            margin-bottom: 10px;
            /* Added */
        }

        #btn-Yes {
            background: linear-gradient(to right, #9C27B0, #E040FB);
            border: none;
        }

        .form-signin .form-control {
            position: relative;
            height: auto;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 10px;
            font-size: 16px;
        }

        .card-title {
            margin-left: 30px;
        }


        a {
            color: #E040FB;
            text-decoration: none;
        }

        .links {
            text-align: center;
            margin-bottom: 10px;
        }

        .checks {
            color: red;
        }

        /* --------------------------------------------------------------------- */
        #center {
            height: 88vh;
            width: 94vw;
            /* background-color: rgba(65, 65, 72, 0.807); */
            /* background-color: rgba(253, 253, 255, 0.275); */
            background-color: #F8F6F4;
            /* background-color: #f5f5f5; */
            margin: auto;
            margin-top: 2.8%;
            box-shadow: 0 0 10px rgba(57, 57, 57, 0.402);
            border-radius: 10px;
            border: 5px solid rgb(39, 41, 60);
        }

        hr {
            /* background-color: rgba(86, 86, 88, 0.904); */
            background-color: #eae7e4;
            height: 1.5px;
            border: 0;
            /* box-shadow:0 0 5px rgba(33, 31, 31, 0.326); */
            box-shadow: 0 0 15px rgba(159, 151, 151, 0.326);
        }

		.dropdown {
			margin-left: 40px;
			margin-top: 21px;
			filter: brightness(1);
			transition: 0.5s;
			filter: drop-shadow(3px 3px 3px #c3c3c3);
		}
		
		img {
			width: 160px;
			height: 160px;
		}

    </style>
</head>
<body>
    <div id="center">
    	<div class="dropdown" style="float: left;" id="gomain">
        	<a href="/web/movelogin"><img src="resources/img/login_b.png" onmouseover="this.src='resources/img/login_a.png'" onmouseout="this.src='resources/img/login_b.png'"></a>
        </div>
        
        <div class="card align-middle" style="width:25rem; margin-top: 100px;">
            <div class="card-title" style="margin-top:30px;">
    
    
            </div>
            <!-- <div class="card align-middle" style="width:25rem; margin-top: 100px;"> -->
            <div class="card-title" style="margin-top:30px;">
                <h2 style="font-weight: bold;">비밀번호 변경</h2>
                <hr>
            </div>
            <div class="card-body">
                <form class="form-signin">
                    <input type="password" name="new_password" id="new_password" class="form-control" placeholder="새로운 비밀번호"
                        required><br>
                    <input type="password" name="confirm_password" id="confirm_password" class="form-control"
                        placeholder="비밀번호 확인" required><br>
                    <p class="checks" id="checks"></p><br />
                    <button id="btn-Change" onclick="modify()" class="btn btn-lg btn-primary btn-block"
                        type="button">변경</button>
                </form>
            </div>
            <!--  </div>-->
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        function modify() {
            let modpw = $("#new_password").val();
            let modpwch = $("#confirm_password").val();
            let idpara = new URL(location.href).searchParams;
            let userId = idpara.get('id');
            console.log(modpw, modpwch, userId)

            if (modpw == modpwch) {
                $.ajax({
                    url: "ChangePw",
                    method: "post",
                    data: {
                        userId: userId,
                        modpw: modpw
                    },
                    success: function (data) {
                        if (data == 1) {
                            alert("변경하였습니다.")
                            location.href = "movelogin"
                        }
                    },
                    error: function () {
                        console.log()
                    }
                });
            }
            else {
                alert("일치하지 않습니다.")
            }
        };
    </script>
</body>

</html>