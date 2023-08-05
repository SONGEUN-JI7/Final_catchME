package kr.smhrd.mapper;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;

import kr.smhrd.entity.Event;
import kr.smhrd.entity.Record;
import kr.smhrd.entity.RestArea;
import kr.smhrd.entity.Sms;
import kr.smhrd.entity.User;

public interface Mapper {

	List<RestArea> find_RestArea(BigDecimal lat, BigDecimal lng);

	User login(User dto);

	int join(User dto);
	
	Long startRec(String id);

	Long endRec(String username);

	int getMaxRecSeq(String username);

	int addnotify_sleep(Event event);

	User sendSms(String username);

	List<Event> search_event_at(int rec_seq);

	int sms_record(Sms sms);
	

	User confrim(String confid);

	User searchPw(User dto);
	
	int changePw(User dto);
	
	int changeMy(User dto);

	int chrephonw(User dto);

	void addnolook(Event event);

	Event mon_week(int mon, int week, String username);

	List<Event> nolook_Img(String id);

	List<Event> sleep_img(String id);

	int reset_alarm(String username);

	User sessionUpdate(String username);

}
