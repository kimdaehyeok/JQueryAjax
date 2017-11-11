package com.example.jquery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/jquery.do")
public class JQueryServer extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        System.out.println("get");
        
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("name","kim");
        jsonObject.put("age","27");
        jsonObject.put("text",request.getParameter("text"));
        
        System.out.println(jsonObject.toJSONString());
        
        response.setContentType("html/text");
        response.setHeader("Cache-Control","no-cache");
        response.getWriter().write("Server Response : " + jsonObject.toJSONString());
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        System.out.println("post");
        
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("name","kim");
        jsonObject.put("age","27");
        
        System.out.println(jsonObject.toJSONString());
        
        response.setContentType("html/text");
        response.getWriter().write(jsonObject.toJSONString());
    }
}
