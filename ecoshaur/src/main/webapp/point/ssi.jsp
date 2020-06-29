<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%-- ssi.jsp 공통페이지 --%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%@ page import="net.utility.*"%>
<%@ page import="com.cafe24.ecoshaur.ranking.*"%>

<jsp:useBean id="dto" class="com.cafe24.ecoshaur.ranking.PointDTO"></jsp:useBean>
<jsp:useBean id="dao" class="com.cafe24.ecoshaur.ranking.PointDAO"></jsp:useBean>

<%request.setCharacterEncoding("UTF-8"); %> 
