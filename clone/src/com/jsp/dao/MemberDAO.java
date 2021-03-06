package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jsp.command.Criteria;
import com.jsp.command.SearchCriteria;
import com.jsp.dto.MemberVO;

public interface MemberDAO {

  // 회원리스트 조회
  List<MemberVO> selectMemberList(SqlSession session) throws Exception;
  List<MemberVO> selectMemberList(SqlSession session, Criteria cri) throws Exception;
  List<MemberVO> selectMemberList(SqlSession session, SearchCriteria cri) throws Exception;

  // 일반 리스트 전체 개수
  int selectMemberListCount(SqlSession session) throws Exception;
  // 검색 결과의 전체 리스트 개수
  int selectMemberListCount(SqlSession session, SearchCriteria cri) throws Exception;
  // 회원 조회
  MemberVO selectMemberById(SqlSession session, String id) throws SQLException;
  
  // 회원 등록
  int insertMember(SqlSession session, MemberVO member) throws Exception;
  
  // 공지사항 등록 가능 회원
  List<MemberVO> selectAuthorizedMemberList(SqlSession session) throws Exception;
}
