<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.smhrd.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% User user = (User)session.getAttribute("user_data");
   String secheck = (user != null) ? user.getName() : null; %>
<link rel="stylesheet" type="text/css" href="resources/css/navicover.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/main.css"/>
</head>
<body>
    <div id="center">
        <div id="header">
            <div class="dropdown" style="float: left;">
                <button class="dropbtn" id="gomain" onclick="GoMain()">
                    <img class="homeicon" src="resources/img/home (2).png">
                </button>
                <!-- <div class="dropdown-content" style="left: 0;">
                    <a href="#">링크#1</a>
                </div> -->
            </div>
            <span id="logo">Catch you</span>
            <span id="logo_un">Whenever, Wherever </span>
            <div class="dropdown">
                <button class="dropbtn"><img class="myicon" src="resources/img/user (2).png"></button>
                
                <div class="dropdown-content" style="width: auto; height: auto;">
					
					<% if (secheck == null) { %>
						<a href="movelogin">로그인</a>
					<% } else { %>
						<a href="photo">라이브러리</a>
						<a href="logout">로그아웃</a>
						<a href="#">회원탈퇴</a>
					<% } %>
                    
                </div>
            </div>    
        </div>
        <br><hr>
        <!-- 여기서 작업하면됨 -->
        <div class="main_area">
            <div class="record_btn">
	            <% if (secheck == null) { %>
					<a href="movelogin"><img src="resources/img/video-projector.png" onmouseover="this.src='resources/img/video-projector-unscreen.gif'" onmouseout="this.src='resources/img/video-projector.png'"></a>
				<% } else { %>
					<a href="record"><img src="resources/img/video-projector.png" onmouseover="this.src='resources/img/video-projector-unscreen.gif'" onmouseout="this.src='resources/img/video-projector.png'"></a><!-- 녹화 -->
				<% } %>
				<p class="button">녹화</p>
			</div>
            <p style="border-left: 1px solid #eae7e4; box-shadow:0 0 15px rgba(159, 151, 151, 0.326);"></p>
            <div class="drive_record_btn">
            	<% if (secheck == null) { %><!-- 주행기록 -->
					<a href="movelogin"><img src="resources/img/bar-chart.png" onmouseover="this.src='resources/img/bar-chart-1--unscreen.gif'" onmouseout="this.src='resources/img/bar-chart.png'"></a>
				<% } else { %>
					<a href="chart"><img src="resources/img/bar-chart.png" onmouseover="this.src='resources/img/bar-chart-1--unscreen.gif'" onmouseout="this.src='resources/img/bar-chart.png'"></a>
				<% } %>
				<p class="button" style="text-align: center; margin-left: 95px;">통계</p>
            </div>
            <p style="border-left: 1px solid #eae7e4;"></p>
            <div class="setting_btn" style="border: 0;">
                <% if (secheck == null) { %><!-- 설정 -->
					<a href="movelogin"><img src="resources/img/settings.png" onmouseover="this.src='resources/img/settings-unscreen.gif'" onmouseout="this.src='resources/img/settings.png'"></a>
				<% } else { %>
					<a href="setting"><img src="resources/img/settings.png" onmouseover="this.src='resources/img/settings-unscreen.gif'" onmouseout="this.src='resources/img/settings.png'"></a>
				<% } %>
				<p class="button">설정</p>
            </div>
        </div>
  </div>

	<script>
		function GoMain() {
			location.href="/web";
		}
	</script>
</body>
</html>