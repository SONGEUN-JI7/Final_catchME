package kr.smhrd.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.Event;
import kr.smhrd.entity.Sms;
import kr.smhrd.entity.User;
import kr.smhrd.mapper.Mapper;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

@org.springframework.web.bind.annotation.RestController
public class SmsController {
	@Autowired
	private Mapper mapper;
	
	@RequestMapping("/smscontroller") // urlMapping
	public String list(@RequestParam("username")String username) {
		User user = mapper.sendSms(username);
		String name = user.getName();
		String receiver = user.getSms_receiver();
		receiver = receiver.replace("-", "");
		
		
	
		String hostNameUrl = "https://sens.apigw.ntruss.com"; // api 기본 주소
		String requestUrl = "/sms/v2/services/"; // 추가 주소
		String requestUrlType = "/messages"; // 보내는 종류
		String accessKey = "N8KbSauZR7HR1T6fDeq5"; // 접근 키
		String secretKey = "o6Z2Q41sU7Fgb5GJ3v15wQMJ9ExfPuSZm2Ft9x0e"; // 비밀키
		String serviceId = "ncp:sms:kr:311761740502:f_project"; // api id
		String method = "POST"; // 문자 보내는 메소드 타입
		String timestamp = Long.toString(System.currentTimeMillis()); // 시간 기록
		requestUrl += serviceId + requestUrlType; // 주소에 비밀키 넣기
		String apiUrl = hostNameUrl + requestUrl; // 주소 완전히 합치기

		JSONObject bodyJson = new JSONObject(); // JSON body 사용하기
		JSONObject toJson = new JSONObject(); // JSON 사용하기
		JSONArray toArr = new JSONArray(); // JSON

		// JSON으로 객체 데이터 저장
		toJson.put("content", name+"님이 졸음운전 중입니다."); //보내는 내용
		toJson.put("to", receiver); // 받는 사람
		toArr.put(toJson);

		bodyJson.put("type", "sms");
		bodyJson.put("contentType", "COMM");
		bodyJson.put("countryCode", "82");
		bodyJson.put("from", "01092539506"); //보내는사람
		bodyJson.put("content", "07.18test_test");
		bodyJson.put("messages", toArr);

		String body = bodyJson.toString(); // JSON 객체 문자열로 변환 후 저장

		try {
			URL url = new URL(apiUrl); // 요청을 보낼 URL 생성

			// URL 연결하는 객체 생성
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setUseCaches(false); // 캐시 비활성화
			con.setDoOutput(true); // 입/출력 가능하도록 설정
			con.setDoInput(true);
			// api 요청 url 헤더에 json 형식 데이터 전송 필드 생성
			con.setRequestProperty("content-type", "application/json");
			con.setRequestProperty("x-ncp-apigw-timestamp", timestamp);
			con.setRequestProperty("x-ncp-iam-access-key", accessKey);
			con.setRequestProperty("x-ncp-apigw-signature-v2",
					makeSignature(requestUrl, timestamp, method, accessKey, secretKey));
			con.setRequestMethod(method); // HTTP에 요청 메서드 설정
			con.setDoOutput(true);
			// con을 이용해 객체 wr 생성
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());

			wr.write(body.getBytes()); // body 데이터를 wr을 통해 전송
			wr.flush(); // 버퍼에 있는 데이터 전송
			wr.close(); // 출력 스트림 닫기

			// 서버에서 응답 코드를 받아 responseCode에 저장
			int responseCode = con.getResponseCode();
			BufferedReader br; // 스트림을 읽기 위한 br 생성
			if (responseCode == 202) { // 응답 코드가 성공 코드인지 확인
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			}

			String inputLine; // 데이터 저장할 변수
			// 서버 모든 데이터 저장할 객체
			StringBuffer response = new StringBuffer();
			// 서버에서 받은 데이터 한개 씩 객체에 저장
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			br.close(); // br 닫기

		} catch (Exception e) {
			System.out.println("오류!! " + e);
		}
				
		return "location";
	}

	public static String makeSignature(String url, String timestamp, String method, String accessKey, String secretKey)
			throws NoSuchAlgorithmException, InvalidKeyException {

		String space = " ";
		String newLine = "\n";

		String message = new StringBuilder().append(method).append(space).append(url).append(newLine).append(timestamp)
				.append(newLine).append(accessKey).toString();

		SecretKeySpec signingKey;
		String encodeBase64String;

		try {
			signingKey = new SecretKeySpec(secretKey.getBytes("UTF-8"), "HmacSHA256");
			Mac mac = Mac.getInstance("HmacSHA256");
			mac.init(signingKey);
			byte[] rawHmac = mac.doFinal(message.getBytes("UTF-8"));
			encodeBase64String = Base64.getEncoder().encodeToString(rawHmac);

		} catch (UnsupportedEncodingException e) {
			encodeBase64String = e.toString();
		}

		return encodeBase64String;
	}

}