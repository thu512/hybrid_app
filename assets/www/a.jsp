﻿<%@ page language="java" contentType="text/html; charset=UTf-8"
    pageEncoding="UTF-8"%>


<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
%>


안녕하세요 <%=name%> 회원님!

안녕하세요 aa 회원님!


