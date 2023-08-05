package kr.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.smhrd.entity.Event;
import kr.smhrd.entity.User;
import kr.smhrd.mapper.Mapper;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Base64;
import java.util.List;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private Mapper mapper;
	//첫페이지 컨트롤러
	@RequestMapping("/")
	public String Movemain() {
		return "Main_WEB_DB";
	}
	//회원가입 컨트롤러
	@RequestMapping("/regi")
	public String Registerpage() {
		return "Regi_WEB";
	}
	
	// 로그인페이지 이동
	@RequestMapping("/movelogin")
	public String Loginpage() {
		return "Login_Regi_WEB";
	}
	// 설정 이동
	@RequestMapping("/setting")
	public String MoveMypg() {
		return "Setting_WEB";
	}

	@RequestMapping("/main")
	public String Mainpage() {
		return "Main_WEB_DB";
	}
	
	// 녹화 페이지
	@RequestMapping("/record")
	public String record() {
		return "Record_WEB";
	}

	// 주행 기록 페이지
	@RequestMapping("/chart")
	public String Recordpage() {
		return "Chart_WEB";
	}
	
	// photo 페이지
	@RequestMapping("/photo")
	public String Photo(@SessionAttribute("user_data") User user_data, Model model) {
		 List<Event> nolook_img = mapper.nolook_Img(user_data.getId());
		    for (Event event : nolook_img) {
		    	String localFilePath = event.getEvent_img();
		        String filename = localFilePath.substring(localFilePath.lastIndexOf("\\") + 1);
		        String imageUrl = "http://121.179.7.41:3000/music/" + filename;
		        String formattedDateTime = formatEventDateTime(event.getEvent_img());
		        event.setEvent_img(imageUrl);
		        event.setFormattedDateTime(formattedDateTime);
		    }
		    
		    List<Event> sleep_img = mapper.sleep_img(user_data.getId());
		    for (Event event : sleep_img) {
		    	String localFilePath = event.getEvent_img();
		        String filename = localFilePath.substring(localFilePath.lastIndexOf("\\") + 1);
		        String imageUrl = "http://121.179.7.41:3000/music/" + filename;
		        String formattedDateTime = formatEventDateTime(event.getEvent_img());
		        event.setEvent_img(imageUrl);
		        event.setFormattedDateTime(formattedDateTime);
		    }
		    model.addAttribute("nolook_img", nolook_img);
		    model.addAttribute("sleep_img", sleep_img);
		return "Photo";
	}
	private String encodeImageToBase64(String event_img) {
		try {
			Path imagePath = Paths.get(event_img);
			byte[] imageBytes = Files.readAllBytes(imagePath);
			return Base64.getEncoder().encodeToString(imageBytes);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	private String formatEventDateTime(String event_img) {
	    String fileName = event_img.substring(event_img.lastIndexOf("\\") + 1); 
	    String dateTimePart = fileName.substring(0, fileName.lastIndexOf("_")); 

	    if (dateTimePart.length() >= 15) {
	        String year = dateTimePart.substring(2, 4);
	        String month = dateTimePart.substring(4, 6);
	        String day = dateTimePart.substring(6, 8);
	        String hour = dateTimePart.substring(9, 11);
	        String minute = dateTimePart.substring(11, 13);
	        String second = dateTimePart.substring(13, 15);
	        
	        return year + "." + month + "." + day + ". " + hour + ":" + minute + ":" + second;
	    } else {
	        return dateTimePart;
	    }
	}
	
	
	// 쉼터알려주기 테스트용, 문자보내기 테스트, 이미지 쭉 보여주는거.
	@RequestMapping("/location")
	public String getLocation(@SessionAttribute("user_data") User user_data, Model model) {
	    List<Event> nolook_img = mapper.nolook_Img(user_data.getId());
	    for (Event event : nolook_img) {
	        String nolook_img_coding = encodeImageToBase64(event.getEvent_img());
	        event.setBase64Image(nolook_img_coding);
	        String formattedDateTime = formatEventDateTime(event.getEvent_img());
	        event.setFormattedDateTime(formattedDateTime);
	    }
	    
	    List<Event> sleep_img = mapper.sleep_img(user_data.getId());
	    for (Event event : sleep_img) {
	    	String localFilePath = event.getEvent_img();
	        String filename = localFilePath.substring(localFilePath.lastIndexOf("\\") + 1);
	        String imageUrl = "http://121.179.7.41:3000/music/" + filename;
	        event.setEvent_img(imageUrl);
	        String formattedDateTime = formatEventDateTime(event.getEvent_img());
	        event.setFormattedDateTime(formattedDateTime);
	    }
	    model.addAttribute("nolook_img", nolook_img);
	    model.addAttribute("sleep_img", sleep_img);
	    return "location";
	}	
	

	@RequestMapping("/cv")
	public String cv(@SessionAttribute("user_data") User user_data) {
		return "opencv";
	}
	
	// 로그인
	@RequestMapping("/login")
	public String login(User dto, Model model, HttpSession session) {
		User user_data = mapper.login(dto);
		String nextView = null;
		if (user_data == null) {
			model.addAttribute("loginFail", "로그인정보를 확인해주세요");
			nextView = "Login_Regi_WEB";
		} else {
			session.setAttribute("user_data", user_data);
			nextView = "redirect:/";
		}
		return nextView;
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 비밀번호 찾기 페이지 이동
	@RequestMapping("/findPw")
	public String findPw() {
		return "FindPassword";
	}
	
	// 비밀번호 변경 페이지 이동
	@RequestMapping("/ModifyPw")
	public String modifyPw() {
		return "ModiPw";
	}
	
	// 녹화 페이지(녹화버전)
	@RequestMapping("/record2")
	public String record2() {
		return "Record_WEB2";
	}

}
