package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.CommunityDto;
import com.mycompany.webapp.dto.CommunityPagerDto;
import com.mycompany.webapp.dto.ReviewDto;
@Repository
public class CommunityDao {

	@Resource
	private SqlSessionTemplate sst;

	public List<CommunityDto> selectAll(){
		List<CommunityDto> list = sst.selectList("mybatis.mapper.community.selectAll");
		return list;
	}

	public List<CommunityDto> selectChat(){
		List<CommunityDto> chat = sst.selectList("mybatis.mapper.community.selectChat");
		return chat;
	}
	
	public List<CommunityDto> selectTips() {
		List<CommunityDto> tips = sst.selectList("mybatis.mapper.community.selectTips");
		return tips;
	}
	
	public List<CommunityDto> selectBoast() {
		List<CommunityDto> boast = sst.selectList("mybatis.mapper.community.selectBoast");
		return boast;
	}
	
	public List<CommunityDto> selectAssign() {
		List<CommunityDto> assign = sst.selectList("mybatis.mapper.community.selectAssign");
		return assign;
	}
	
	public List<ReviewDto> selectReviewAll() {
		List<ReviewDto> review = sst.selectList("mybatis.mapper.community.selectReviewAll");
		return review;
	}

	public List<ReviewDto> selectCatereview1() {
		List<ReviewDto> catereview1 = sst.selectList("mybatis.mapper.community.selectCatereview1");
		return catereview1;
	}

	public List<ReviewDto> selectCatereview2() {
		List<ReviewDto> catereview2 = sst.selectList("mybatis.mapper.community.selectCatereview2");
		return catereview2;
	}

	public List<ReviewDto> selectCatereview3() {
		List<ReviewDto> catereview3 = sst.selectList("mybatis.mapper.community.selectCatereview3");
		return catereview3;
	}

}
