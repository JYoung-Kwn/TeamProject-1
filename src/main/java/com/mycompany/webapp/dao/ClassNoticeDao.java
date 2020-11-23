package com.mycompany.webapp.dao;

import java.util.List;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.ClassNoticeDto;


@Repository
public class ClassNoticeDao {

	@Resource
	private SqlSessionTemplate sst;
	
	//강사가 등록한 공지사항 가져오기
	public List<ClassNoticeDao> selectNotice(String tutorId){
		List<ClassNoticeDao> noticeList = sst.selectList("mybatis.mapper.class_notice.selectNotice", tutorId);
		return noticeList;
	}
	
	//강사가 공지사항 등록하기
	public int insertNotice(ClassNoticeDto noticeDto) {
		int rows = sst.insert("mybatis.mapper.class_notice.insertNotice",noticeDto);
		return rows;
	}	
	
	//강사가 공지사항 삭제하기
	public int deleteNotice(int class_notice_no) {
		int rows = sst.delete("mybatis.mapper.class_notice.deleteNotice",class_notice_no);
		return rows;
	}
	
	//강사가 공지사항 수정하기
	public int updateNotice(ClassNoticeDto noticeDto) {
		int rows = sst.update("mybatis.mapper.class_notice.updateNotice",noticeDto);
		return rows;
	}
	
}
