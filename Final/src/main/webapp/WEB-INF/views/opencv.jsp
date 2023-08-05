<%@page import="kr.smhrd.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>

<!DOCTYPE html>
<html>
<head>
<script async src="https://docs.opencv.org/3.4/opencv.js"></script>
<style>
  #notifySound {
    display: none;
  }
</style>
</head>
<body onload="setSize()">
	<% User user_data = (User) session.getAttribute("user_data");
		String alarm_full_path = user_data.getAlarm();
		String alarm_select_path = alarm_full_path.substring(alarm_full_path.lastIndexOf("\\") + 1);
		String music_url = "http://121.179.7.41:3000/music/"+alarm_select_path;
	%>
	<a>${user_data.id}</a>
	<a><%=alarm_select_path %></a>
	<input type = "hidden" value = "${user_data.id }" id = "username">
	<input type = "hidden" value = "${user_data.alarm }" id = "alarm_info">
	<a href='record'>녹화페이지</a>
	<a href='location'>문자보내기test</a>
	<br>
	<h3 id="nearestRestArea"></h3>
	<br>
	<button id="toggleStream" class="start-rec-button" onclick="toggleStream()">Play</button>
	<!-- 	<button id="stopStream" class='end-rec-button' onclick="stopStream()"
		style="visibility: hidden;">Stop</button> -->
	<br>
	<br>
	
	<input type="file" accept="video/*" id="videoInput">
    <video id="video" controls></video>
    <button onclick="startSendingFrames()">프레임 보내기 시작</button>
	<br>
	<br>
	<audio id = "notifySound" controls>
	  <source src="<%=music_url %>" type="audio/mpeg"> <!-- 확인 ~-->
	</audio>
	<button id = "stopSound" onclick="stopNotifySound()" style="visibility: hidden;">음악 종료</button>
	<br>	
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="resources/js/alarm.js"></script>
	<script src="resources/js/socket.js"></script>
	<script>
	let width, height;
	let video;
	let streaming = false;
	let stream, interval;
	let username = document.getElementById('username').value;
	function setSize() {
		if (window.orientation === 0) {
			width = 480;
			height = 640;
		} else {
			width = 640;
			height = 480;
		}

		video = document.getElementById("video");
		video.width = width;
		video.height = height;
	}
	
	


	



    </script>
</body>
</html>