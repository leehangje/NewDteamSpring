<%@page import="com.dteam.app.dto.MemberDto" %>

<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>

<%@page import="org.springframework.ui.Model"%>
<%@page import="java.sql.*, java.sql.Date, javax.sql.*, javax.naming.*, 
					java.util.*, java.io.PrintWriter" %>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 

<%
Gson gson = new Gson();
String json = gson.toJson((MemberDto)request.getAttribute("anDetail"));

out.println(json);
%>