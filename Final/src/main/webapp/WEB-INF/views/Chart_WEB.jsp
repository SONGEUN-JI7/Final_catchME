<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <style>

        @font-face {
    font-family: 'SUIT-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
* {
   /*font-family: 'SUIT-Regular';*/
   font-family: "Open Sans", Helvetica, Arial, sans-serif;
   
}

        /* ----------------------------------------------------------------- */

        /* Updated styles for the chart tooltip */
        #chartjs-tooltip th {
          font-weight: bold;
          background-color: #f9f9f9;
          padding: 8px;
          color: #333; /* Text color for the tooltip header */
        }
        
        #chartjs-tooltip td {
          padding: 6px;
          border-bottom: 1px solid #ddd;
          text-align: center;
          color: #333; /* Text color for the tooltip content */
        }
        /* Tooltip Styling */
        #chartjs-tooltip {
          background-color: #fff;
          border: 1px solid #ccc;
          border-radius: 5px;
          box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.15);
          padding: 8px;
          max-width: 300px;
        }
        
        #chartjs-tooltip table {
          width: 100%;
          border-collapse: collapse;
        }
        
        #chartjs-tooltip th {
          font-weight: bold;
          background-color: #f9f9f9;
          padding: 8px;
        }
        
        #chartjs-tooltip td {
          padding: 6px;
          border-bottom: 1px solid #ddd;
          text-align: center;
        }
        
        #chartjs-tooltip td:first-child {
          text-align: left;
        }
        
        #header {
          margin-bottom: 120px;
        }
        #center {
          height: 88vh;
          width: 94vw;
          background-color: #f8f6f4;
          margin: auto;
          margin-top: 2.8%;
          box-shadow: 0 0 10px rgba(57, 57, 57, 0.402);
          border-radius: 10px;
          border: 5px solid rgb(39, 41, 60);
        }
        
        hr {
          background-color: #eae7e4;
          height: 1.5px;
          border: 0;
          box-shadow: 0 0 15px rgba(159, 151, 151, 0.326);
        }
        
        /*홈 아이콘*/
        
.homeicon { /*홈 아이콘*/
    width: 120px;
   height: 120px;
   margin-top: 2px;
   /* margin-left:35px;
            margin-bottom: 20px; */
   filter: brightness(1);
   transition: 0.5s;
   filter: drop-shadow(3px 3px 3px #c3c3c3);
}

.homeicon:hover {
   /* transition: 0.5s ease-out;
            opacity : 0.5; */
   filter: brightness(0.2);
}

.myicon { /*마이 아이콘*/
   width: 120px;
   height: 120px;
   margin-top: 2px;
   margin-left: 484px;
   filter: brightness(1);
   transition: 0.5s;
   filter: drop-shadow(3px 3px 3px #c3c3c3);
}

.myicon:hover {
   /* transition: 0.5s ease-out;
            opacity : 0.5; */
   filter: brightness(0.2);
}
        
/*드롭다운*/
.dropbtn {
   background-color: transparent;
   border: 0;
   /* padding: 16px; */
   /* cursor: pointer; 커서가 손가락 모양으로 바뀜*/
}

.dropdown {
   position: relative;
   display: inline-block;
}
.dropdown-content {
   display: none;
   position: absolute;
   background-color: #f9f9f9;
   min-width: 180px;
   /* min-height: 180px; */
   height: 150px;
   box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
   z-index: 1;
   right: 0;
   /* text-align: center; */
   /*font: 20px "SUIT-Regular";*/
   font-size: 20px;
}

.dropdown-content a {
   color: black;
   padding: 18px 22px;
   text-decoration: none;
   display: block;
   filter: drop-shadow(1px 1px 1px #c3c3c3);
}

        
.dropdown-content a:hover {
   /* background-color: #f1f1f1; */
   /* background-color: #dee1ea; */
   background-color: #e5e5e5;
   filter: drop-shadow(3px 3px 3px #c3c3c3);
}

.dropdown:hover .dropdown-content {
   display: block;
}
       
        
        /* -----------------------------------------------------------------------------------------*/ /* 외관 틀 */
        /* 그래프 툴팁 시 열리는 테이블 틀 잡는 코드 */
        /*table,
        th,
        tr,
        td {
          border: 1px solid black;
          border-collapse: collapse;
        }
        
        th,
        td {
          padding: 5px;
        }
        
        td {
          text-align: center;
        }
        */
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
          background-color: #212a3e;
          overflow-y: scroll;
        }
        
        a,
        a:visited {
          text-decoration: none;
          color: #00ae68;
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
          position: relative; /* 위치 지정을 위해 position 속성을 추가합니다. */
          top: -0.7cm;
        }
        
        .wrapper {
          width: 600px;
          margin: 20px auto;
        }
        
        .container {
          text-align: center;
          padding-top: 1em;
          margin-top: 1em;
          border-top: solid 1px #ccc;
        }
        
        .button-container {
          display: flex;
          justify-content: center;
          align-items: center;
          flex-wrap: wrap;
          margin: 5px;
          position: relative;
          /* border: 2px solid black; */
        }
        
        a.button {
          display: block;
          position: relative;
          float: left;
          width: 120px;
          padding: 0;
          margin: 10px;
          font-weight: 600;
          text-align: center;
          line-height: 50px;
          color: #fff;
          border-radius: 5px;
          transition: all 0.2s;
        }
        @keyframes showTwoSec {
          0% {
            opacity: 0;
          }
          5% {
            opacity: 1;
          }
          95% {
            opacity: 1;
          }
          100% {
            opacity: 0;
          }
        }
        
        .activeBtn {
          animation: showTwoSec 2s;
        }
      
        .alertSetting {
          width: 100%;
          display: flex;
          align-items: center;
          justify-content: center;
          position: absolute;
        
          top: 200px;
        }
        #buttonAlert {
          width: 400px;
          margin: 0 auto;
          height: 50px;
          display: flex;
          align-items: center;
          justify-content: center;
          opacity: 0%;
          color: #212a3e;
          z-index: 1;
          font-size: 18px;
          background-color: #f6efcd;
          border-radius: 10px;
          font-weight: bold;
          margin: calc(0cm - 4.7cm) auto 0 auto;
        }
        
        .btnBlueGreen {
          background: #00ae68;
        }
        
        .btnLightBlue {
          background: #5dc8cd;
        }
        
        .btnOrange {
          background: #ffaa40;
        }
        
        .btnPurple {
          background: #a74982;
        }
        
        .btnBrown {
          background: #74542d;
        }
        
        .btnBlueGreen.btnPush {
          box-shadow: 0px 5px 0px 0px #007144;
        }
        
        .btnLightBlue.btnPush {
          box-shadow: 0px 5px 0px 0px #1e8185;
        }
        
        .btnOrange.btnPush {
          box-shadow: 0px 5px 0px 0px #a66615;
        }
        
        .btnPurple.btnPush {
          box-shadow: 0px 5px 0px 0px #6d184b;
        }
        
        .btnBrown.btnPush {
          box-shadow: 0px 5px 0px 0px #382816;
        }
        
        .btnPush:hover {
          margin-top: 15px;
          margin-bottom: 5px;
        }
        
        .btnBlueGreen.btnPush:hover {
          box-shadow: 0px 0px 0px 0px #007144;
        }
        
        .btnLightBlue.btnPush:hover {
          box-shadow: 0px 0px 0px 0px #1e8185;
        }
        
        .btnOrange.btnPush:hover {
          box-shadow: 0px 0px 0px 0px #a66615;
        }
        
        .btnPurple.btnPush:hover {
          box-shadow: 0px 0px 0px 0px #6d184b;
        }
        .btnBrown.btnPush:hover {
          box-shadow: 0px 0px 0px 0px #382816;
        }
        
        .homeicon {
          margin: 28px 0;
          width: 17%;
          height: 17%;
          margin-right: 70%;
        }
        
        .myicon {
          width: 20%;
          height: 20%;
          margin: 18px 25px;
          margin-left: 75%;
        }
        
        .dropbtn {
          background-color: transparent;
          border: 0;
        }
        
        .dropdown {
          position: relative;
          display: inline-block;
        }
        
        .dropdown-content {
          display: none;
          position: absolute;
          background-color: #f9f9f9;
          min-width: 160px;
          box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
          z-index: 1;
          right: 0;
        }
        
        .dropdown-content a {
          color: black;
          padding: 12px 16px;
          text-decoration: none;
          display: block;
        }
        
        .dropdown-content a:hover {
          background-color: #f1f1f1;
        }
        
        .dropdown:hover .dropdown-content {
          display: block;
        }
        
        .hidden {
          display: none;
        }
        
        .joinForm {
          position: absolute;
          width: 50%;
          height: 120%;
          max-width: 780px;
          max-height: 370px;
          padding: 30px;
          /*  background-color: #f8f6f4;*/
          background-color: #fff;
          text-align: center;
          top: calc(50% + 3cm);
          /* 변경된 부분: 10cm에서 5cm로 변경 (숫자가 커질수록 joinForm 이 내려감) */
          left: 50%;
          transform: translate(-50%, -50%);
          border-radius: 15px;
          border: 4px solid #33cccc;
        }
        button {
          border: none;
          outline: none;
          cursor: pointer;
        }
        
        #prev-button {
          margin-right: 20px;
          height: 50px;
          display: inline-flex;
          align-items: center;
          background: transparent;
        }
        
        #next-button {
          margin-left: 20px;
          height: 50px;
          display: inline-flex;
          align-items: center;
          background: transparent;
        }
        
        #chartList {
          margin-bottom: 20px;
        }
        
        #prev-button {
          margin-right: 20px;
          height: 50px;
          display: inline-flex;
          align-items: center;
          border: none;
          outline: none;
          background: transparent;
          cursor: pointer;
        }
        
        #next-button {
          margin-left: 20px;
          height: 50px;
          display: inline-flex;
          align-items: center;
          border: none;
          outline: none;
          background: transparent;
          cursor: pointer;
        }
        
        #prev-button:hover,
        #next-button:hover {
          background-color: #ececec;
        }
        
        .button a {
          margin: 5px;
        }
        
        .chart-container {
          position: relative;
          height: 50vh;
          width: 80vw;
          margin: 0 auto;
        }
        
        :root {
          --color1: rgba(75, 192, 192, 0.6);
          --color2: rgba(255, 159, 64, 0.6);
          --color3: rgba(153, 102, 255, 0.6);
          --color4: rgba(255, 205, 86, 0.6);
          --color5: rgba(201, 203, 207, 0.6);
        }
        .chart-container {
          position: relative;
          height: 90vh;
          width: 100vw;
        }
        .chart-container {
          position: relative;
          height: 80vh;
          width: 90vw;
        }
        
        .table-list {
          margin-top: 20px;
          padding: 10px;
          background-color: #f9f9f9;
          border: 1px solid #ccc;
          border-radius: 5px;
          box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.15);
          max-width: 300px;
        }
        
        .table-list h2 {
          text-align: center;
          font-size: 1.2em;
          margin-bottom: 10px;
        }
        
        .table-list table {
          width: 100%;
          border-collapse: collapse;
          margin-bottom: 10px;
        }
        
        .table-list th,
        .table-list td {
          padding: 6px;
          border-bottom: 1px solid #ddd;
          text-align: center;
        }
        
        .table-list th {
          font-weight: bold;
          background-color: #f9f9f9;
        }
        
        .table-list td:first-child {
          text-align: left;
        }

        #chart-message{
            font-size: 25px;
        }
        </style>
</head>

<body>
    <div id="center">
        <div id="header">
            <div class="dropdown" style="float: left;" id="gomain">
                <button class="dropbtn">
                    <a href="/web"><img class="homeicon" src="resources/img/home (2).png"></a>
                </button>
            </div>

            <div class="dropdown" style="float: right">
                <button class="dropbtn">
                    <button class="dropbtn"><img class="myicon" src="resources/img/user (2).png"></button> 
                </button>
                <div class="dropdown-content" style="width: auto; height: auto;">
                    <!-- 우측 상단 메뉴바 -->
                    <a href="photo">라이브러리</a>
                    <a href="logout">로그아웃</a>
                    <a href="#">회원탈퇴</a>
                </div>
            </div>
        </div>

        <!-- ----------------------------------------------------------------------------------------------- -->
        <h1 class="articleTitle">WEEK-REPORT</h1>
        <input type="hidden" value="${user_data.id }" id="username" />

        <div class="chart-container">
            <div class="button-container">
                <button id="prev-button" class="arrow-button">◄</button>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(1,1); return false;">1월 1주차</a>
                <a href="javascript:void(0);" title="Buttoan push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(1,2); return false;">1월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(1,3); return false;">1월 3주차</a>

                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(1,4); return false;">1월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(1,5); return false;">1월 5주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(2,1); return false;">2월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(2,2); return false;">2월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(2,3); return false;">2월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(2,4); return false;">2월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(2,5); return false;">2월 5주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(3,1); return false;">3월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(3,2); return false;">3월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(3,3); return false;">3월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(3,4); return false;">3월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(3,5); return false;">3월 5주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(4,1); return false;">4월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(4,2); return false;">4월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(4,3); return false;">4월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(4,4); return false;">4월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(4,5); return false;">4월 5주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(5,1); return false;">5월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(5,2); return false;">5월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(5,3); return false;">5월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(5,4); return false;">5월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(5,5); return false;">5월 5주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(6,1); return false;">6월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(6,2); return false;">6월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(6,3); return false;">6월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(6,4); return false;">6월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(6,5); return false;">6월 5주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(7,1); return false;">7월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(7,2); return false;">7월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(7,3); return false;">7월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(7,4); return false;">7월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(7,5); return false;">7월 5주차</a>
                    <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(7,6); return false;">7월 6주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(8,1); return false;">8월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(8,2); return false;">8월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(8,3); return false;">8월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(8,4); return false;">8월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(8,5); return false;">8월 5주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(9,1); return false;">9월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(9,2); return false;">9월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(9,3); return false;">9월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(9,4); return false;">9월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(9,5); return false;">9월 5주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(10,1); return false;">10월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(10,2); return false;">10월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(10,3); return false;">10월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(10,4); return false;">10월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(10,5); return false;">10월 5주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(11,1); return false;">11월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(11,2); return false;">11월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(11,3); return false;">11월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(11,4); return false;">11월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(11,5); return false;">11월 5주차</a>

                <a href="javascript:void(0);" title="Button push blue/green" class="button btnPush btnBlueGreen"
                    onclick="mon_week(12,1); return false;">12월 1주차</a>
                <a href="javascript:void(0);" title="Button push lightblue" class="button btnPush btnLightBlue"
                    onclick="mon_week(12,2); return false;">12월 2주차</a>
                <a href="javascript:void(0);" title="Button push orange" class="button btnPush btnOrange"
                    onclick="mon_week(12,3); return false;">12월 3주차</a>
                <a href="javascript:void(0);" title="Button push purple" class="button btnPush btnPurple"
                    onclick="mon_week(12,4); return false;">12월 4주차</a>
                <a href="javascript:void(0);" title="Button push Brown" class="button btnPush btnBrown"
                    onclick="mon_week(12,5); return false;">12월 5주차</a>

                <button id="next-button" class="arrow-button">►</button>
            </div>
            <hr style="border-width: 5px; border-color: black;" > 
            <div class="clear"></div>
            <div class="alertSetting">
                <div id="buttonAlert"></div>
            </div>
        </div>
        <form action="#" class="joinForm" onsubmit="">
            <div style="width: 100%; height: 100%">
                <h1 id="chart-message">차트를 보시려면 위 버튼을 클릭하시오!!</h1>
                <canvas id="myChart"></canvas>
            </div>
        </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    
    <script type="text/javascript" language="javascript">

        /* ----------------------------------------------------------------- */

        let username = document.getElementById('username').value;
        const CHARTMESSAGE = document.getElementById('chart-message');
        let ALERTTEXT = document.getElementById('buttonAlert');
        let myChartInstance= null;
        let chartCounter = 0;

        var event_count = [];
        var event_day_count = [];
        var day_date = [];
        function formatDate(timestamp) {
            var dateddddd = new Date(timestamp);
            var year = dateddddd.getFullYear();
            var month = String(dateddddd.getMonth() + 1).padStart(2, '0');
            var day = String(dateddddd.getDate()).padStart(2, '0');
            return year + '-' + month + '-' + day;
        }

        function mon_week(mon, week) {
            console.log('버튼이 클릭되었습니다! 정보:', mon, week);

            ALERTTEXT.innerText = mon + '월 ' + week + '주차 차트입니다.';
            ALERTTEXT.classList.add('activeBtn');
            setTimeout(() => {
                ALERTTEXT.classList.remove('activeBtn');
            }, 2000);
            CHARTMESSAGE.style.display = 'none';

            // Destroy the previous chart if it exists
            if (myChartInstance) {
                myChartInstance.destroy();
                myChartInstance = null;
            }

            // Call the function to update the chart data and create the new chart
            updateChartData(mon, week);
        }


        function updateChartData(mon, week) {
            $.ajax({
                url: 'mon_week',
                type: 'post',
                data: { mon: mon, week: week, username: username },
                success: function (data) {
                    console.log('차트데이터불러오기성공');
                    console.log('FRI 값: ' + data.fri_sleep);
                    event_count = [
                        data.sun,
                        data.mon,
                        data.tue,
                        data.wed,
                        data.thu,
                        data.fri,
                        data.sat,
                    ];
                    event_day_count = [
                        data.sun_sleep,
                        data.sun_nolook,
                        data.mon_sleep,
                        data.mon_nolook,
                        data.tue_sleep,
                        data.tue_nolook,
                        data.wed_sleep,
                        data.wed_nolook,
                        data.thu_sleep,
                        data.thu_nolook,
                        data.fri_sleep,
                        data.fri_nolook,
                        data.sat_sleep,
                        data.sat_nolook,
                    ];

                    // day_date에 날짜 형식으로 변환된 데이터를 담기
                    day_date = [
                        formatDate(data.sun_dates),
                        formatDate(data.mon_dates),
                        formatDate(data.tue_dates),
                        formatDate(data.wed_dates),
                        formatDate(data.thu_dates),
                        formatDate(data.fri_dates),
                        formatDate(data.sat_dates),
                    ];

                    console.log(event_day_count[3]);
                    console.log(day_date);

                    // Call the function to create or update the chart
                    useEventData();
                },
                error: function () {
                    console.log('차트데이터불러오기실패');
                },
            });
        }

        // 화살표 누르면 버튼이 넘어가는 기능을 가진 script 코드
        const buttonContainer = document.querySelectorAll('.button');
        //alert("test: " + buttonContainer.length);

        let currentMonthIndex = 0;
        const buttonsPerSet = 5;

        function showCurrentSetButtons() {
            buttonContainer.forEach((ind, index) => {
                ind.style.display =
                    index >= currentMonthIndex &&
                        index < currentMonthIndex + buttonsPerSet
                        ? 'block'
                        : 'none';
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

        document
            .getElementById('prev-button')
            .addEventListener('click', showPreviousButtons);
        document
            .getElementById('next-button')
            .addEventListener('click', showNextButtons);

        const ctx = document.getElementById('myChart');
        

        function useEventData() {
            var week_label = [
                '일요일',
                '월요일',
                '화요일',
                '수요일',
                '목요일',
                '금요일',
                '토요일',
            ];
            // 알림 명
            var event_label = '감지횟수';
            // 날짜 지정
//            var week_day = '2023-07-23';

            // X축 레이블에 요일명 사용하기
            myChartInstance =new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: week_label, // 숫자를 요일명으로 변환하여 사용
                    datasets: [
                        {
                            label: event_label,
                            data: event_count,
                            backgroundColor: [
                                '#BE81F7',
                                '#F3F781',
                                '#FF8000',
                                '#2ECCFA',
                                '#00FF40',
                                '#FA5858',
                                '#FF8000',
                            ],
                            borderWidth: 1,
                        },
                    ],
                },
                options: {
                    plugins: {
                        tooltip: {
                            external: function (context) {
                                // 툴팁 요소
                                let tooltipEl = document.getElementById('chartjs-tooltip');

                                // 첫 번째 렌더링 시에 요소를 생성하는 코드
                                if (!tooltipEl) {
                                    tooltipEl = document.createElement('div');
                                    tooltipEl.id = 'chartjs-tooltip';
                                    tooltipEl.innerHTML = '<table>';
                                    document.body.appendChild(tooltipEl);
                                }

                                const tooltipModel = context.tooltip;
                                if (tooltipModel.opacity === 0) {
                                    tooltipEl.style.opacity = 0;
                                    return;
                                }

                                tooltipEl.classList.remove('above', 'below', 'no-transform');
                                if (tooltipModel.yAlign) {
                                    tooltipEl.classList.add(tooltipModel.yAlign);
                                } else {
                                    tooltipEl.classList.add('no-transform');
                                }

                                function getBody(bodyItem) {
                                    return bodyItem.lines;
                                }

                                if (tooltipModel.body) {
                                    var dayIndex = tooltipModel.dataPoints[0].dataIndex;
                                    console.log(
                                        '마우스를 올린 데이터의 x축(index) 값:',
                                        dayIndex
                                    );

                                    // 해당 인덱스를 사용하여 요일명을 얻음
                                    var day_label = week_label[dayIndex];
                                    console.log('요일명:', day_label);

                                    var innerHtml = '';

                                    var event_types = ['졸음운전 - ', '주시태만 -'];

                                    // day_label에 따라 툴팁 컨텐츠 구성
                                    if (day_label === '일요일') {
                                        innerHtml +=
                                            '<tr><th colspan=3>' + day_date[0] + '</th></tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[0] + '</td>';
                                        innerHtml += '<td>' + event_day_count[0] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[1] + '</td>';
                                        innerHtml += '<td>' + event_day_count[1] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + '   총   ' + '</td>';
                                        innerHtml +=
                                            '<td>' +
                                            (parseInt(event_day_count[0]) +
                                                parseInt(event_day_count[1])) +
                                            '회</td>';
                                        innerHtml += '</tr>';
                                    } else if (day_label === '월요일') {
                                        innerHtml +=
                                            '<tr><th colspan=3>' + day_date[1] + '</th></tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[0] + '</td>';
                                        innerHtml += '<td>' + event_day_count[2] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[1] + '</td>';
                                        innerHtml += '<td>' + event_day_count[3] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + '   총   ' + '</td>';
                                        innerHtml +=
                                            '<td>' +
                                            (parseInt(event_day_count[2]) +
                                                parseInt(event_day_count[3])) +
                                            '회</td>';
                                        innerHtml += '</tr>';
                                    } else if (day_label === '화요일') {
                                        innerHtml +=
                                            '<tr><th colspan=3>' + day_date[2] + '</th></tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[0] + '</td>';
                                        innerHtml += '<td>' + event_day_count[4] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[1] + '</td>';
                                        innerHtml += '<td>' + event_day_count[5] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + '   총   ' + '</td>';
                                        innerHtml +=
                                            '<td>' +
                                            (parseInt(event_day_count[4]) +
                                                parseInt(event_day_count[5])) +
                                            '회</td>';
                                        innerHtml += '</tr>';
                                    } else if (day_label === '수요일') {
                                        innerHtml +=
                                            '<tr><th colspan=3>' + day_date[3] + '</th></tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[0] + '</td>';
                                        innerHtml += '<td>' + event_day_count[6] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[1] + '</td>';
                                        innerHtml += '<td>' + event_day_count[7] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + '   총   ' + '</td>';
                                        innerHtml +=
                                            '<td>' +
                                            (parseInt(event_day_count[6]) +
                                                parseInt(event_day_count[7])) +
                                            '회</td>';
                                        innerHtml += '</tr>';
                                    } else if (day_label === '목요일') {
                                        innerHtml +=
                                            '<tr><th colspan=3>' + day_date[4] + '</th></tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[0] + '</td>';
                                        innerHtml += '<td>' + event_day_count[8] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[1] + '</td>';
                                        innerHtml += '<td>' + event_day_count[9] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + '   총   ' + '</td>';
                                        innerHtml +=
                                            '<td>' +
                                            (parseInt(event_day_count[8]) +
                                                parseInt(event_day_count[9])) +
                                            '회</td>';
                                        innerHtml += '</tr>';
                                    } else if (day_label === '금요일') {
                                        innerHtml +=
                                            '<tr><th colspan=3>' + day_date[5] + '</th></tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[0] + '</td>';
                                        innerHtml += '<td>' + event_day_count[10] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[1] + '</td>';
                                        innerHtml += '<td>' + event_day_count[11] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + '   총   ' + '</td>';
                                        innerHtml +=
                                            '<td>' +
                                            (parseInt(event_day_count[10]) +
                                                parseInt(event_day_count[11])) +
                                            '회</td>';
                                        innerHtml += '</tr>';
                                    } else if (day_label === '토요일') {
                                        innerHtml +=
                                            '<tr><th colspan=3>' + day_date[6] + '</th></tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[0] + '</td>';
                                        innerHtml += '<td>' + event_day_count[12] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + event_types[1] + '</td>';
                                        innerHtml += '<td>' + event_day_count[13] + '회</td>';
                                        innerHtml += '</tr>';
                                        innerHtml += '<tr>';
                                        innerHtml += '<td>' + '   총   ' + '</td>';
                                        innerHtml +=
                                            '<td>' +
                                            (parseInt(event_day_count[12]) +
                                                parseInt(event_day_count[13])) +
                                            '회</td>';
                                        innerHtml += '</tr>';
                                    }
                                    let tableRoot = tooltipEl.querySelector('table');
                                    tableRoot.style.border = 'none';
                                    tableRoot.innerHTML = innerHtml;

                                    const position =
                                        context.chart.canvas.getBoundingClientRect();
                                    const bodyFont = Chart.helpers.toFont(
                                        tooltipModel.options.bodyFont
                                    );

                                    // 폰트 표시, 배치, 스타일 설정코드
                                    tooltipEl.style.opacity = 1;
                                    tooltipEl.style.position = 'absolute';
                                    tooltipEl.style.left =
                                        position.left +
                                        window.pageXOffset +
                                        tooltipModel.caretX +
                                        'px';
                                    tooltipEl.style.top =
                                        position.top +
                                        window.pageYOffset +
                                        tooltipModel.caretY +
                                        'px';
                                    tooltipEl.style.font = bodyFont.string;
                                    tooltipEl.style.padding =
                                        tooltipModel.padding +
                                        'px ' +
                                        tooltipModel.padding +
                                        'px';
                                    tooltipEl.style.pointerEvents = 'none';
                                }
                            },
                        },
                    },
                },
            });
        }
    </script>
</body>

</html>