<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<style>
body {
	background-color: #F3EBF6;
	font-family: 'Ubuntu', sans-serif;
	margin: 0;
}

.main {
	background-color: #FFFFFF;
	width: 400px;
	height: 400px;
	margin: 7em auto;
	border-radius: 1.5em;
	box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
}

.sign {
	padding-top: 40px;
	color: #8C55AA;
	font-family: 'Ubuntu', sans-serif;
	font-weight: bold;
	font-size: 23px;
}

.un {
	width: 76%;
	color: rgb(38, 50, 56);
	font-weight: 700;
	font-size: 14px;
	letter-spacing: 1px;
	background: rgba(136, 126, 126, 0.04);
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	outline: none;
	box-sizing: border-box;
	border: 2px solid rgba(0, 0, 0, 0.02);
	margin-bottom: 50px;
	margin-left: 46px;
	text-align: center;
	margin-bottom: 27px;
	font-family: 'Ubuntu', sans-serif;
}

form.form1 {
	padding-top: 40px;
}

.pass {
	width: 76%;
	color: rgb(38, 50, 56);
	font-weight: 700;
	font-size: 14px;
	letter-spacing: 1px;
	background: rgba(136, 126, 126, 0.04);
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	outline: none;
	box-sizing: border-box;
	border: 2px solid rgba(0, 0, 0, 0.02);
	margin-bottom: 50px;
	margin-left: 46px;
	text-align: center;
	margin-bottom: 27px;
	font-family: 'Ubuntu', sans-serif;
}

.un:focus, .pass:focus {
	border: 2px solid rgba(0, 0, 0, 0.18) !important;
}

.submit {
	cursor: pointer;
	border-radius: 5em;
	color: #fff;
	background: linear-gradient(to right, #9C27B0, #E040FB);
	border: 0;
	padding-left: 40px;
	padding-right: 40px;
	padding-bottom: 10px;
	padding-top: 10px;
	font-family: 'Ubuntu', sans-serif;
	font-size: 13px;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
	margin-bottom: 20px; /* 간격 조절 */
}

.forgot {
	text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
	color: #E1BEE7;
	padding-top: 15px;
}

a {
	text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
	color: #E1BEE7;
	text-decoration: none
}

@media ( max-width : 600px) {
	.main {
		background-color: #FFFFFF;
		width: 400px;
		height: 400px;
		margin: 3em auto; /* 간격 조절 */
		border-radius: 1.5em;
		box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
	}
}

#menu {
	margin: 0;
	background-color: #E1BEE7;
	font-size: 16px;
	font-family: Tahoma, Geneva, sans-serif;
	font-weight: bold;
	text-align: left;
	padding: 8px;
	border-radius: 8px;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	-o-border-radius: 8px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0 16px;
	margin-bottom: 1cm; /* 간격 조절 */
}

#menu ul {
	margin: 0;
	padding: 8px 0;
	list-style: none;
	height: auto;
	display: flex;
}

#menu li {
	display: block;
	padding: 8px;
	margin-right: 8cm; /* 간격 조절  (Home, My, Settings 간격 조절해주는 코드 */
}

#menu a {
	color: #FFF;
	padding: 10px;
	text-decoration: none;
}

#menu a:hover {
	background-color: #1B191B;
	color: #FFF;
	border-radius: 20px;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	-o-border-radius: 20px;
}

#menu li .active {
	background-color: #1B191B;
	color: #FFF;
	border-radius: 20px;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	-o-border-radius: 20px;
}

.logo {
	margin-right: 10cm; /* 간격 조절 */
}

.button-group {
	display: flex;
	justify-content: space-between;
	margin: 0 auto;
	width: 295px;
}

.button-group .submit {
	width: 70px;
	margin-left: -0.2cm;
	display: inline-block;
	text-align: center;
	line-height: 24px;
	border-radius: 5em;
	color: #fff;
	background: linear-gradient(to right, #9C27B0, #E040FB);
	border: 0;
	padding: 6px 12px;
	font-family: 'Ubuntu', sans-serif;
	font-size: 12px;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
	margin-bottom: 20px; /* 간격 조절 */
}

.forgot a {
	white-space: pre;
}
</style>

</head>
<body>
	<div id="menu">
		<div class="logo"></div>
		<ul>
			<li><a href="#">Home</a></li>
			<!--class="active"-->
			<li><a href="#">My</a></li>
			<li><a href="#">Settings</a></li>
		</ul>
	</div>

	<div class="main">
		<p class="sign" align="center">Sign in</p>
		<form action="login" class="form1" method="post">
			<input name="id" class="un" type="text" align="center"
				placeholder="Username">
			<!--      <input class="pass" type="password" align="center" placeholder="Password">-->
			<input name="pw" class="pass" type="password" align="center"
				placeholder="Password" onfocus="this.placeholder = ''"
				onblur="if(this.value === '') { this.placeholder = 'Password'; }">


			<div class="button-group" align="center">
				<a class="submit" onClick="location.href='./regi'">회원가입</a>
				<button type="submit" class="submit" style="margin-left: 0.1cm">로그인</button>
			</div>
			<p class="forgot">
				<a href="findPw"> 비밀번호를 잃어버렸습니까? </a>
			</p>
		</form>
		
	</div>
	<script type="text/javascript">
	var successMessage = decodeURIComponent('<%=request.getParameter("successMessage")%>');
	var failMessage = decodeURIComponent('<%=request.getParameter("failMessage")%>');
		if (successMessage && successMessage.trim() !== ""&& document.referrer.includes("regi")) {
			alert(successMessage);
		} else if (failMessage && failMessage.trim() !== ""&& document.referrer.includes("regi")) {
			alert(failMessage);
		}
	</script>
</body>
</html>