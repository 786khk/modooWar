<%@page import="model1.mypagePublicTO"%>
<%@page import="model1.recipeTO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="model1.viewTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   
   String scrapseq = (String)request.getAttribute("scrapseq");   
      
      JSONObject obj = new JSONObject();
      obj.put("scrapseq", scrapseq);
        
   
   out.println(obj);
         
%>