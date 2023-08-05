<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="assets/css/bootstrap.css">
   <script src="assets/js/bootstrap.bundle.js"></script>
   
   <style>
        *{
            font-size: 20px;
        }
        #backgroundArea {  /*전체화면*/
            height: 98vh;
            /* margin-bottom: 50px; */
            display: flex;
            /* justify-content: space-between; */
            /* background-color: rgb(243, 243, 229); */
        }
        #leftPage{    /*왼쪽 화면*/
            width: 35%;
        }
        #phon{ /*핸드폰 모양 큰 틀*/
            width: 30%;
            align-items: center;
            box-shadow:0 0 35px rgba(0,0,0, 0.5);
            border-radius:35px;
            border: 5px solid rgb(60, 60, 60);
            background: black;
        }
        #centerPage{ /*가운데 화면*/
            height: 95vh;
            background-color: rgb(255, 255, 255);
            align-items: center;
            border-radius:20px;
            margin: 2%;
        }
        #rightPage{ /*오른쪽 화면*/
            width: 35%;
        }
        
        .photo{ /*핸드폰 카메라 모양*/
            border-radius:0 0 15px 15px;
            background:black;
            width:18%;
            height:6%;
            position: absolute;
            left: 50%;
            top: 0%;
            transform: translateX(-50%);
            z-index:1;
            display:flex;
            align-items:center;
            justify-content:center;
            flex-direction:row-reverse;
            margin-top: 1%;
            
            &:after{
                content: '';
                width: 40%;
                padding-bottom: 4%;
                border-radius: 20px;
                background: #191919;
                border: 2px solid #191919;
                display: block;
                margin-left: 6%;
            }
            
            &:before{
                content: '';
                width: 7%;
                padding-bottom: 7%;
                border-radius: 50%;
                background: rgba(255, 255, 255, 0.3);
                border: 2px solid #212121;
                display:block;
                margin-left:10px;
            }
        }
        #time{ /*핸드폰 시간*/
            /* margin: top, right, bottom, left; */
            margin-left: 2%;
            /* z-index: 1; */
        }
        
        .phon_header{ /* 핸드폰 화면 윗부분*/
            /* margin-top: 3%; */
            /* text-align: center; */
            background-color: #606C5D;
            border-top-left-radius : 15px;
            border-top-right-radius : 15px;
            width: 100%;
            height: 12%;
        }
        .header{ /* 가운데 화면 윗부분*/
            margin-top: 6%;
            /* height: 12%; */
            /* margin-bottom: 20px; */

        }
        .myp_button{ /*마이페이지 버튼*/
            width: 7%;
            height: 7%;
            margin-left: 100px;
            /* margin-top: 20px; */
            /* margin-bottom: 20px; */
            
        }
        .record_button{ /*녹화에 대한 버튼*/
            text-align: right;
            margin-right: 2%;
        }
        .record_area{ /*녹화 화면*/
            /* background-color: rgba(48, 29, 32, 0.2); */
            
            width: 450px;
            height: 500px;
            margin: 0 auto;
            box-shadow:0 0 10px rgba(0,0,0, 0.2);
            background-color: rgba(0, 0, 0, 0.496);
        }
        .content_area{ /*이상현상 감지를 나타내는 화면*/
            background-color: rgba(243, 243, 229, 0.353);
            border-radius: 2%;
            box-shadow:0 0 10px rgba(0,0,0, 0.2);
            width: 450px;
            height: 150px;
            margin: 0 auto;
        }
        </style>
</head>
<body>

<div id="backgroundArea">
        <div id="leftPage">

        </div>

        <div id="phon">
		    <div id="centerPage">
                <div class="phon_header">
                    <span id="time" class="hour"></span>
                    
                
                    <div class="photo"></div>
                    <div class="header">
                        <a class="oth_button" href="#"><img class="myp_button" src=""></a>
                        <a class="logo" href="#">ccu</a>
                        <a class="myp_button" href="#"><img class="myp_button" src="image/free-icon-man-user-74472.png"></a>
                    </div>
                </div>
                

                <!-- <hr> -->
                <div class="main_area">&emsp;
                    <div class="record_button">
                        <button>start</button>
                        <button>end</button>
                    </div>&emsp;
                    
                    <div class="record_area">영상 녹화</div>&emsp;
                    <div class="content_area">


                    </div>

                </div>
            </div>
        </div>
        
        <div id="rightPage"s>

        </div>
    </div>

    <script>
        function updateClock() {
        var now = new Date(), // current date
            time = now.getHours() + ':' + now.getMinutes(),
            target = document.getElementById('time');

        // set the content of the element with the ID time to the formatted string
        target.innerHTML = [time];

        // call this function again in 1000ms
        setTimeout(updateClock, 1000);
        } updateClock(); // init function
        
        var successMessage = "${successMessage}";
        if (successMessage) {
          alert(successMessage);
        }
        var failMessage = "${failMessage}";
        if(failMessage){
        	alert(failMessage);
        }
    </script>
</body>
</html>