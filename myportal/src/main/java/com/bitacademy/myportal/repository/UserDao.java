package com.bitacademy.myportal.repository;

public interface UserDao {
	public int insert(UserVo vo); 	// 가입 insert
	public UserVo selectUser(String email);	// 중복 이메일 체크 select
	public UserVo selectUser(String email, String password);	// 로그인용 select

}
