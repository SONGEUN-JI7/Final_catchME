// 위도경도 캐시 지우기.
function clearGeolocationCache() {
	navigator.geolocation = null;
}

// 위치 에러 함수
function showError(error) {
	console.log("위치모르겠음" + error.message);
}

//위치기반 졸음쉼터 찾는 함수
function findNearestRestArea() {
clearGeolocationCache();
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(function(position) {
			const lat = position.coords.latitude;
			const lng = position.coords.longitude;
			const nearestRestAreaElement = document.getElementById("nearestRestArea");
			const restarea_infoElement1 = document.getElementById("restarea_info1");
			const restarea_infoElement2 = document.getElementById("restarea_info2");
			const restarea_infoElement3 = document.getElementById("restarea_info3");
			const restarea_infoElement4 = document.getElementById("restarea_info4");
			nearestRestAreaElement.style.visibility = "visible";

			const xhr = new XMLHttpRequest();
			const url = "/web/distance?lat=" + lat + "&lng=" + lng;
			xhr.open("GET", url, true);
			xhr.onreadystatechange = function() {
				if (xhr.readyState === 4 && xhr.status === 200) {
					const response = JSON.parse(xhr.responseText);
					const firstRestArea = "가까운 쉼터는  " + response[0].ra_name + "쉼터입니다.";
					const firstRestAreaDistance = "거리는 " + (response[0].distance / 1000).toFixed(1) + "km입니다.";
					const secondRestArea = "가까운 쉼터는  " + response[1].ra_name + "쉼터입니다.";
					const secondRestAreaDistance = "거리는 " + (response[1].distance / 1000).toFixed(1) + "km입니다.";

					restarea_infoElement1.textContent = firstRestArea;
					restarea_infoElement2.textContent = firstRestAreaDistance;
					restarea_infoElement3.textContent = secondRestArea;
					restarea_infoElement4.textContent = secondRestAreaDistance;

					setTimeout(function() {
						nearestRestAreaElement.textContent = "";
					}, 30000);
				}
			};
			xhr.send();
		}, showError);
	} else {
		console.log("쉼터알림실패");
	}
}

document.addEventListener("click", function() {
	const nearestRestAreaElement = document.getElementById("nearestRestArea");
	nearestRestAreaElement.style.visibility = "hidden";
});