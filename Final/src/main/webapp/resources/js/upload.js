function uploadFile() {
	const fileInput = document.getElementById('fileInput');
	const file = fileInput.files[0];
	console.log(file);


	if (!file) {
		alert('파일을 선택해주세요.');
		return;
	}

	const formData = new FormData();
	formData.append('id', username);
	formData.append('file', file);

	fetch('http://121.179.7.41:3000/upload', {
		method: 'POST',
		body: formData
	})
		.then(response => response.json())
		.then(data => {
			console.log('app.js로 넘어감');
			console.log('서버에서 받은 응답 데이터:', data);
			alert('알림음 변경 완료!');
			console.log(username);
			sessionUpdate(username);
			
		})
		.catch(error => console.error('업로드 에러:', error));
}

function sessionUpdate(username) {
	$.ajax({
		url: "sessionUpdate",
		type: "post",
		data: { username: username },
		success: function() {
			console.log("세션업데이트 성공")
		}, error: function() {
			console.log("세션 업데이트 실패")
		}
	})
}

