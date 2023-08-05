package kr.smhrd.web;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.smhrd.entity.Event;
import kr.smhrd.entity.Record;
import kr.smhrd.entity.RestArea;
import kr.smhrd.entity.Sms;
import kr.smhrd.entity.User;
import kr.smhrd.mapper.Mapper;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	@Autowired
	private Mapper mapper;

	@GetMapping("/distance")
	@ResponseBody
	public List<RestArea> find_RestArea(@RequestParam("lat") BigDecimal lat, @RequestParam("lng") BigDecimal lng) {
		List<RestArea> data = mapper.find_RestArea(lng, lat);
		return data;
	}

	@PostMapping("/startRec")
	public void startRec(HttpSession session, @RequestParam("username") String username) {
		Long data = mapper.startRec(username);
	}

	@PostMapping("/endRec")
	public void endRec(@RequestParam("username") String username) {
		Long date = mapper.endRec(username);
	}

	@PostMapping("/notify_sleep")
	public void notify_sleep(@RequestParam("username") String username, @RequestParam("img_path") String img_path) {
		int rec_seq = mapper.getMaxRecSeq(username);
		Event event = new Event();
		event.setRec_seq(rec_seq);
		event.setEvent_img(img_path);
		int row = mapper.addnotify_sleep(event);
	}

	@PostMapping("/noLook")
	public void noLook(@RequestParam("username") String username, @RequestParam("img_path") String img_path) {
		int rec_seq = mapper.getMaxRecSeq(username);
		Event event = new Event();
		event.setRec_seq(rec_seq);
		event.setEvent_img(img_path);
		mapper.addnolook(event);
	}

	@PostMapping("/smsRecord")
	public void getMaxRecSeq(@RequestParam("username") String username) {
		int rec_seq = mapper.getMaxRecSeq(username);
		List<Event> data = mapper.search_event_at(rec_seq);
		if (data == null) {
			System.out.println("데이터 null");
		} else {
			for (Event event : data) {
				Sms sms = new Sms();
				sms.setId(username);
				sms.setRec_seq(rec_seq);
				sms.setEvent_at(event.getEvent_at());
				sms.setSms_content(event.getEvent_content());
				int row = mapper.sms_record(sms);
				if (row > 0) {
					System.out.println("sms 저장완료");
				} else {
					System.out.println("sms 저장실패");
				}
			}
		}
	}

	// 회원가입
	@PostMapping("/join")
	@ResponseBody
	public int join(Model model, User dto) {
		if (dto.getId() == "") {
			dto.setId(null);
		}
        if (dto.getPw() == "") {
        	dto.setPw(null);
        }
        if (dto.getEmail() == "") {
        	dto.setEmail(null);
        }
        if (dto.getPhone() == "") {
        	dto.setPhone(null);
        }
        if (dto.getName() == "") {
        	dto.setName(null);
        }
		int join = mapper.join(dto);
		int row = 0;
		if (join > 0) {
			String successMessage = "회원가입에 성공하였습니다.";
			model.addAttribute("successMessage", successMessage);
			row = 1;
		} else {
			String failMessage = "회원가입에 실패하였습니다.";
			model.addAttribute("failMessage", failMessage);
		}
		return row;
	}

	// 아이디 중복 확인
	@PostMapping("/idcheck")
	@ResponseBody
	public int idcheck(@RequestParam("id") String id) {
		String confid = id;
		User user = mapper.confrim(confid);
		int row = 0;

		if (user != null) {
			row = 1;
		}

		return row;
	}

	// 비밀번호 정보 확인
	@PostMapping("/SearchPw")
	@ResponseBody
	public int searchPw(@RequestParam("finId") String id, @RequestParam("finname") String name, @RequestParam("finemail") String email) {

		User dto = new User();
		dto.setId(id);
		dto.setName(name);
		dto.setEmail(email);

		User user = mapper.searchPw(dto);

		int row = 0;

		if (user != null) {
			row = 1;
		}

		return row;
	}

	// 비밀번호 변경
	@PostMapping("/ChangePw")
	@ResponseBody
	public int changePw(@RequestParam("modpw") String pw, @RequestParam("userId") String id) {

		User dto = new User();
		dto.setId(id);
		dto.setPw(pw);

		int user = mapper.changePw(dto);

		int row = 0;

		if (user != 0) {
			row = 1;
		}

		return row;
	}

	// 이름, 전화번호 변경
	@PostMapping("/changeMy")
	@ResponseBody
	public int ChangeMy(@RequestParam("userId") String id, @RequestParam("UName") String name,
			@RequestParam("userPhon") String phone) {

		User dto = new User();
		dto.setId(id);
		dto.setName(name);
		dto.setPhone(phone);

		int user = mapper.changeMy(dto);

		int row = 0;

		if (user != 0) {
			row = 1;
			
		}

		return row;
	}

	// 문자 받는 번호 바꾸기
	@PostMapping("/chrephonw")
	@ResponseBody
	public int chrephonw(@RequestParam("userId") String id, @RequestParam("recPhon") String rephon) {
		
		User dto = new User();
		dto.setId(id);
		dto.setSms_receiver(rephon);
		
		int user = mapper.chrephonw(dto);
		
		int row = 0;
		
		if (user != 0) {
			row = 1;
		}
		
		return row;
	}

	@PostMapping("/mon_week")
	public Event mon_week(@RequestParam("mon")int mon, @RequestParam("week") int week,
			@RequestParam("username")String username, Model model){
		Event data = mapper.mon_week(mon, week, username);
		return data;
	}
	
	@PostMapping("/reset_alarm")
	public int reset_alarm(@RequestParam("username") String username) {
		int row = mapper.reset_alarm(username);
		return row;
	}
	
	@PostMapping("/sessionUpdate")
	public void sessionUpdate(@RequestParam("username") String username, HttpSession session) {
		session.removeAttribute("user_data");
		User user_data = mapper.sessionUpdate(username);
		session.setAttribute("user_data", user_data);
		System.out.println("userdata"+user_data);
	}
}