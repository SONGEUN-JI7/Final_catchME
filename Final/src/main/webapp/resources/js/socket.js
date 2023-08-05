const serverAddress = 'ws://121.179.7.41:3000';
let socket = null;
let isConnected = false;
connectWebSocket();
setInterval(checkWebSocketConnection, 5000);
function connectWebSocket() {
	socket = new WebSocket(serverAddress);

	socket.onopen = () => {
		console.log('소켓 연결됨');
		isConnected = true;
	};

	socket.onmessage = (event) => {
		console.log('소켓메세지:', event.data);
	};

	socket.onclose = () => {
		console.log('소켓 끊김');
		isConnected = false;
	};
}

function checkWebSocketConnection() {
	if (!isConnected) {
		console.log('소켓 다시연결 중....');
		connectWebSocket();
	}
}