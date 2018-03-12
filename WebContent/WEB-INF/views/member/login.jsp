<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main>
	<c:if test="${!empty param.error}}">
	<div style="color:red; text-align:center;">
		아이디 또는 비밀번호가 올바르지 않습니다.
	</div>
	</c:if>
   <form method="post">
      <label>아이디 : </label>
      <input type="text" name="id" />
      <label>비밀번호 : </label>
      <input type="password" name="pwd" />
      <input type="submit" value="로그인" />
   </form>
</main>