//문자보내기 함수
function sendSms() {
	$.ajax({
		url: "smscontroller",
		type: "get",
		data: { username: username },
		success: function(data) {
			console.log("sendSms 아이디 넘김");
		},
		error: function() {
			console.log("sendSms 아이디 못넘김");
		}
	});
}

//문자내역 기록 함수
function smsRecord() {
	$.ajax({
		url: "smsRecord",
		type: "post",
		data: { username: username },
		success: function(data) {
			console.log("smsRecord 아이디 넘김");
		},
		error: function() {
			console.log("smsRecord 아이디 못넘김");
		}
	});
}
// notify호출 함수 --> 졸음운전 이벤트 db추가
function callNotifyController(img_path) {
	$.ajax({
		url: "notify_sleep",
		type: "post",
		data: { "img_path": img_path, "username": username },
		success: function(data) {
			console.log("notify호출 성공")
		},
		error: function() {
			console.log("notify호출 실패")
		}
	})
}
// nolook호출 함수 --> 주시테만 이벤트 db추가
function noLookController(img_path) {
	$.ajax({
		url: "noLook",
		type: "post",
		data: { "img_path": img_path, "username": username },
		success: function(data) {
			console.log("noLook호출 성공")
		},
		error: function() {
			console.log("noLook호출 실패")
		}
	})
}
// 음악재생 함수
function playNotifySound() {
	const audioElement = document.getElementById('notifySound');
	audioElement.play();
}
// 음악종료 함수
function stopNotifySound() {
	const audioElement = document.getElementById('notifySound');
	audioElement.pause();
}

// 화면 클릭하면 음악종료
document.addEventListener("click", function(event) {
	const audioElement = document.getElementById('notifySound');
	if (!audioElement.paused) {
		stopNotifySound();
	}
});