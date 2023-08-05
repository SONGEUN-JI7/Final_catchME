<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>chart_repo</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>

            
            #center{
            height: 88vh;
            width: 94vw;
            /* background-color: rgba(65, 65, 72, 0.807); */
            /* background-color: rgba(253, 253, 255, 0.275); */
            background-color: #F8F6F4;
            /* background-color: #f5f5f5; */
            margin: auto;
            margin-top: 2.8%;
            box-shadow:0 0 10px rgba(57, 57, 57, 0.402);
            border-radius:10px;
            border: 5px solid rgb(39, 41, 60);
        }

        hr{
            /* background-color: rgba(86, 86, 88, 0.904); */
            background-color: #eae7e4;
            height:1.5px;
            border:0;
            /* box-shadow:0 0 5px rgba(33, 31, 31, 0.326); */
            box-shadow:0 0 15px rgba(159, 151, 151, 0.326);
        }

        /*홈 아이콘*/
        .homeicon{
            margin: 28px 0;
            width: 17%;
            height: 17%;
            margin-right: 70%;
        }
        /*마이 아이콘*/
        .myicon{
            width: 20%;
            height: 20%;
            margin: 18px 25px;
            /* margin: 18px 0; */
            margin-left: 75%;

        }

        /*드롭다운 메뉴바*/
        .dropbtn{
            background-color:transparent;
            border: 0;
            /* padding: 16px; */
            /* cursor: pointer; 커서가 손가락 모양으로 바뀜*/ 
        }
        .dropdown{
            position: relative;
            display: inline-block;
        }
        .dropdown-content{
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            right: 0;
        }
        .dropdown-content a{
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover{
            background-color: #f1f1f1;
        }
        .dropdown:hover .dropdown-content{
            display: block;
        }
        /* .dropdown:hover .dropbtn{
            background-color: #3e8e41;
        } */

    /* -----------------------------------------------------------------------------------------*/ /* 외관 틀 */
    /* 그래프 툴팁 시 열리는 테이블 틀 잡는 코드 */
        table, th, tr, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        th, td {
            padding: 5px;
        }

        td {
            text-align: center;
        }

        .forgot a {
            white-space: pre;
        }

        /* -----------------------------------------------------------------------------------------*/
        @import url(https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700);

        body {
            font-family: 'Josefin Slab', serif;
            font-size: 20px;
            line-height: 24px;
            color: #333;
            background-color: #212A3E;
            overflow-y: scroll;
        }

        a,
        a:visited {
            text-decoration: none;
            color: #00AE68;
        }

        .clear {
            clear: both;
        }

        .articleTitle {
            font-size: 1.15em;
            font-weight: 700;
            line-height: 1em;
            color: #222;
            text-align: center;
        }

        .wrapper {
            width: 600px;
            margin: 20px auto;
        }

        .container {
            text-align: center;
            padding-top: 1em;
            margin-top: 1em;
            border-top:
                solid 1px #CCC;
        }

        .button-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin: 5px;
        }

        a.button {
            display: block;
            position: relative;
            float: left;
            width: 120px;
            padding: 0;
            margin: 10px 20px 10px 0;
            font-weight: 600;
            text-align: center;
            line-height: 50px;
            color: #FFF;
            border-radius: 5px;
            transition: all 0.2s;
        }

        .btnBlueGreen {
            background: #00AE68;
        }

        .btnLightBlue {
            background: #5DC8CD;
        }

        .btnOrange {
            background: #FFAA40;
        }

        .btnPurple {
            background: #A74982;
        }

        .btnBlueGreen.btnPush {
            box-shadow: 0px 5px 0px 0px #007144;
        }

        .btnLightBlue.btnPush {
            box-shadow: 0px 5px 0px 0px #1E8185;
        }

        .btnOrange.btnPush {
            box-shadow: 0px 5px 0px 0px #A66615;
        }

        .btnPurple.btnPush {
            box-shadow: 0px 5px 0px 0px #6D184B;
        }

        .btnPush:hover {
            margin-top: 15px;
            margin-bottom: 5px;
        }

        .btnBlueGreen.btnPush:hover {
            box-shadow: 0px 0px 0px 0px #007144;
        }

        .btnLightBlue.btnPush:hover {
            box-shadow: 0px 0px 0px 0px #1E8185;
        }

        .btnOrange.btnPush:hover {
            box-shadow: 0px 0px 0px 0px #A66615;
        }

        .btnPurple.btnPush:hover {
            box-shadow: 0px 0px 0px 0px #6D184B;
        }

        .hidden {
            display: none;
        }

        .joinForm {
            position: absolute;
            width: 100%;
            height: 100%;
            max-width: 700px;
            max-height: 370px;
            padding: 30px;
            background-color: #FFFFFF;
            text-align: center;
            top: calc(50% + 5cm);
            /* 변경된 부분: 10cm에서 5cm로 변경 (숫자가 커질수록 joinForm 이 내려감) */
            left: 50%;
            transform: translate(-50%, -50%);
            border-radius: 15px;
        }

        #prev-button {
            margin-right: 20px;
            height: 50px;
            display: inline-flex;
            /* Display the buttons in a row */
            align-items: center;
            border: none;
            /* Remove the border */
            outline: none;
            /* Remove the outline */
            background: transparent;
            /* Make the background transparent */
            cursor: pointer;
        }

        #next-button {
            margin-left: 20px;
            height: 50px;
            /* Match the height of the buttons */
            display: inline-flex;
            /* Display the buttons in a row */
            align-items: center;
            border: none;
            /* Remove the border */
            outline: none;
            /* Remove the outline */
            background: transparent;
            /* Make the background transparent */
            cursor: pointer;
        }

        #prev-button:hover,
        #next-button:hover {
            background-color: #ececec;
            /* Add a background color on hover */
        }

        .button a {
            margin: 5px;
            /* Add spacing between buttons */
        }
    </style>
     <div id="center">
        <div id="header">
            <div class="dropdown" style="float: left;">
                <button class="dropbtn">
                    <img class="homeicon" src="./image/free-icon-home-1828864.png">
                </button>
                <!-- <div class="dropdown-content" style="left: 0;">
                    <a href="#">링크#1</a>
                </div> -->
            </div>
            <div class="dropdown" style="float: right;">
                <button class="dropbtn"><img class="myicon" src="./image/free-icon-user-5264565.png"></button>
                <div class="dropdown-content"> <!-- 우측 상단 메뉴바 -->
                    <a href="#">개인정보수정</a>
                    <a href="#">문자 발송 내역</a>
                    <a href="#">로그아웃</a>
                    <a href="#">회원탈퇴</a>
                </div>
            </div>    
        </div>
        <br><br><br><br><br><br><br><hr>
        <!-- 여기서 작업하면됨 -->
  </head>
  <body>

   

   <!-- ----------------------------------------------------------------------------------------------- -->
   <h3 class="articleTitle">WEEK-REPORT</h3> 
   
   <div class="container">
       
        <div class="button-container">
            <button id="prev-button" class="arrow-button">◄ </button>
    
            <!-- 느낌 상, 05,06 버튼도 추가해야함(아니면 1월, 2월, 3월 ... 로 가는 방법도 고려) -->
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(1,1)>1월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(1,2)>1월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(1,3)>1월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(1,1)>1월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(2,1)>2월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(2,2)>2월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(2,3)>2월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(2,4)>2월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(3,1)>3월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(3,2)>3월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(3,3)>3월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(3,4)>3월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(4,1)>4월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(4,2)>4월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(4,3)>4월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(4,4)>4월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(5,1)>5월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(5,2)>5월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(5,3)>5월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(5,4)>5월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(6,1)>6월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(6,2)>6월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(6,3)>6월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(6,4)>6월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(7,1)>7월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(7,2)>7월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(7,3)>7월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(7,4)>7월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(8,1)>8월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(8,2)>8월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(8,3)>8월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(8,4)>8월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(9,1)>9월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(9,2)>9월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(9,3)>9월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(9,4)>9월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(10,1)>10월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(10,2)>10월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(10,3)>10월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(10,4)>10월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(11,1)>11월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(11,2)>11월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(11,3)>11월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(11,4)>11월 4주차</a>
            
            <a href="" title="Button push blue/green" class="button btnPush btnBlueGreen" onclick=mon_week(12,1)>12월 1주차</a>
            <a href="" title="Button push lightblue" class="button btnPush btnLightBlue" onclick=mon_week(12,2)>12월 2주차</a>
            <a href="" title="Button push orange" class="button btnPush btnOrange" onclick=mon_week(12,3)>12월 3주차</a>
            <a href="" title="Button push purple" class="button btnPush btnPurple" onclick=mon_week(12,4)>12월 4주차</a>
    
            <button id="next-button" class="arrow-button">►</button>
        </div>
        <div class="clear"></div>
    </div>
    
    <form action="#" class="joinForm">
        <div>
            <canvas id="myChart"  ></canvas>
        </div>
    </form>
    
    <script>
    
    function mon_week(month, week) {
    	console.error("버튼이 클릭되었습니다! 정보:", month, week);
    	$.ajax({
    		url : "mon_week",
    		type: "post",
    		data:{month:month,week:week},
    		success:function(){
    			
    		}, error : function(){
    			
    		}
    	});
    }
        
    // 화살표 누르면 버튼이 넘어가는 기능을 가진 script 코드
    const buttonContainer = document.querySelectorAll(".button");
    //alert("test: " + buttonContainer.length);
    
    let currentMonthIndex = 0;
    const buttonsPerSet = 5;
    
    function showCurrentSetButtons() {
    buttonContainer.forEach((ind, index) => {
    ind.style.display = (index >= currentMonthIndex && index < currentMonthIndex + buttonsPerSet ? 'block' : 'none');
    });
    }
    
    function showPreviousButtons() {
    currentMonthIndex -= buttonsPerSet;
    if (currentMonthIndex < 0) {
    currentMonthIndex = 0;
    }
    showCurrentSetButtons();
    }
    
    function showNextButtons() {
    currentMonthIndex += buttonsPerSet;
    if (currentMonthIndex >= buttonContainer.length) {
    currentMonthIndex = buttonContainer.length - buttonsPerSet;
    }
    showCurrentSetButtons();
    }
    
    showCurrentSetButtons();
    
    document.getElementById('prev-button').addEventListener('click', showPreviousButtons);
    document.getElementById('next-button').addEventListener('click', showNextButtons);
    
    
    <!-- ----------------------------------------------------------------------------------------------- -->
    
<!--
    <div>
        <canvas id="myChart"></canvas>
      </div>-->
      
      
        const ctx = document.getElementById('myChart');

        var week_label = new Array('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
        //알림 명
        var event_label = '금일 알림 수';
        //알림 수
        var event_count = new Array(4, 7, 3, 5, 2, 3, 2);
        //날짜 지정
        var week_day ='2023-07-25';
        //시작 시간 명
        var start_label = '시작 시간';
        //시작 시간
        var start_time = '13:00';
        //종료 시간 명
        var end_label = '종료 시간';
        //종료 시간
        var end_time = '17:00';
        //발생 시간 명
        var event_label = '발생 시간';
        //발생 시간
        var event_time = '15:30';
        //발생 이유 명
        var reason_label = '발생 이유';
        //발생 이유
        var reason_name = '졸음'


        new Chart(ctx, {
          type: 'bar',
          data: {
            labels: week_label,
            datasets: [
                {
                    label: event_label,
                    data: event_count,
                    borderWidth: 1
                },
            ],
          },
          options: {
            plugins: {
                tooltip: {
                    // "on-canvas tooltip"을 비활성화
                    enabled: false,

                    external: function(context) {
                        // 툴팁 요소
                        let tooltipEl = document.getElementById('chartjs-tooltip');

                        // 첫 번째 렌더링 시에 요소를 생성하는 코드
                        if (!tooltipEl) {
                            tooltipEl = document.createElement('div');
                            tooltipEl.id = 'chartjs-tooltip';
                            tooltipEl.innerHTML = '<table></table>';
                            document.body.appendChild(tooltipEl);
                        }

                        // 툴팁이 없는 경우에는 해당 요소를 숨겨라!!
                        const tooltipModel = context.tooltip;
                        if (tooltipModel.opacity === 0) {
                            tooltipEl.style.opacity = 0;
                            return;
                        }

                        // 특정 입력 요소 내에서 커서 위치 설정하는 코드
                        tooltipEl.classList.remove('above', 'below', 'no-transform');
                        if (tooltipModel.yAlign) {
                            tooltipEl.classList.add(tooltipModel.yAlign);
                        } else {
                            tooltipEl.classList.add('no-transform');
                        }

                        function getBody(bodyItem) {
                            return bodyItem.lines;
                        }

                        // 특정 요소의 텍스트 내용을 설정하는 코드
                        if (tooltipModel.body) {
                            const titleLines = tooltipModel.title || [];
                            const bodyLines = tooltipModel.body.map(getBody);
							// 툴팁 관련 정의된 변수들 있는 위치
                            let innerHtml = '';
                            titleLines.forEach(function(title) {
                                innerHtml += '<tr><th colspan=5>'+ week_day + ' (' + title + ')' + '</th></tr>';
                            });
                            innerHtml += '<tr><th>순번</th><th>'+start_label+'</th><th>'+end_label+'</th><th>'+event_label+'</th><th>'+reason_label+'</th></tr>';
                            

                            bodyLines.forEach(function(body, i) {
                                const colors = tooltipModel.labelColors[i];
                                let style = '';
                                style += ' border-color:' + colors.borderColor;
                                style += '; border-width: 2px';
                                const span = '<span style="' + style + '">' + body + '</span>';
                                
                                var regex = /[^0-9]/g;            // 숫자가 아닌 문자열을 선택하는 정규식
                                var result = body[0].replace(regex, "");
                                
                                for(var j=1; j<=result; j++){ // j=순번  
                                    innerHtml += '<tr>';
                                    innerHtml += '<td>'+'<span style="' + style + '">' + j + '</span>'+'</td>';
                                    innerHtml += '<td>'+'<span style="' + style + '">' + start_time + '</span>'+'</td>';
                                    innerHtml += '<td>'+'<span style="' + style + '">' + end_time + '</span>'+'</td>';
                                    innerHtml += '<td>'+'<span style="' + style + '">' + event_time + '</span>'+'</td>';
                                    innerHtml += '<td>'+'<span style="' + style + '">' + reason_name + '</span>'+'</td>';
                                    innerHtml += '</tr>';
                                }
                                 
                            });
                             

                            let tableRoot = tooltipEl.querySelector('table');
                            tableRoot.innerHTML = innerHtml;
                        }

                        const position = context.chart.canvas.getBoundingClientRect();
                        const bodyFont = Chart.helpers.toFont(tooltipModel.options.bodyFont);

                        //  폰트 표시, 배치, 스타일 설정코드
                        tooltipEl.style.opacity = 1;
                        tooltipEl.style.position = 'absolute';
                        tooltipEl.style.left = position.left + window.pageXOffset + tooltipModel.caretX + 'px';
                        tooltipEl.style.top = position.top + window.pageYOffset + tooltipModel.caretY + 'px';
                        tooltipEl.style.font = bodyFont.string;
                        tooltipEl.style.padding = tooltipModel.padding + 'px ' + tooltipModel.padding + 'px';
                        tooltipEl.style.pointerEvents = 'none';
                    }
                }
            }
         }
        });
      </script>
  </body>
</html>