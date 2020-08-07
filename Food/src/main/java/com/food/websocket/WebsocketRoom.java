package com.food.websocket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
@ServerEndpoint(value="/chatroom/{userId}")
public class WebsocketRoom {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
    //왜 static 으로 만들었을까?
    static HashMap<String, Session> messageUserList = new HashMap<String, Session>();

    //서버 접속시
    @OnOpen
    public void onOpen(Session session, @PathParam("userId") String userId) {
        //@PathParam 은 웹소켓에서 사용하는 @PathVariables        
        //1. userId 가 중복되는지 확인
    	if(messageUserList.get(userId) != null) {
            logger.info("중복 발생");
        }else{//중복이 아닐 경우
            messageUserList.put(userId, session);       
        }
    }
    //서버 종료시
    @OnClose
    public void onClose(Session session) {            
        String val = session.getId();//종료한 sessionId 확인

        Set<String>keys =  messageUserList.keySet();
        for(String key : keys) {        
            if(val.equals(messageUserList.get(key).getId())) {
                logger.info("close userId : "+key);
                messageUserList.remove(key, session);
                logger.info("현재 접속자 : "+messageUserList.size());
                broadCast("{\"header\":{\"users\":[],\"cmd\":\"close\",\"sender\":\""+key+"\"},\"body\":{\"msg\":\" "+key+"님이 종료하셨습니다.\"}}");
            }
        } 
        try {
        	session.close();
        }
        catch (Exception e) {
		}
    }

    //메시지 수신시
    @OnMessage
    public void onMessage(String msg, Session session) {
    	System.out.println(msg);
    	JSONParser jsonParser = new JSONParser();
    	try {
    	JSONObject object = (JSONObject)jsonParser.parse(msg);
    	JSONObject header = (JSONObject) object.get("header");
    	JSONArray users = (JSONArray) header.get("users");
    	List userlist = new ArrayList();
    	for(int i = 0; i< users.size();i++) {
    		Session tmp = (Session) messageUserList.get(users.get(i));
    		tmp.getBasicRemote().sendText(msg);
    	}

        }catch (Exception e) {
        	e.printStackTrace();
        	//broadCast(msg);
            //System.out.println(msg);
		}

    }

    //에러 발생시
    @OnError
    public void onError(Session session, Throwable e) {
        logger.info("문제 세션 : "+ session);
        System.out.println(e.toString());
    }

    //메시지 전체 전송
    private void broadCast(String text){
        logger.info("to "+messageUserList.size()+" : "+text);
        Set<String>keys =  messageUserList.keySet();
        try {            
            for(String key : keys) {
                logger.info("key : "+key);
                Session session = messageUserList.get(key);    
                session.getBasicRemote().sendText(text);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //한명에게 메시지 전달
    private void sendMsg(Session session, String msg) {
        try {
            session.getBasicRemote().sendText(msg);
        } catch (IOException e) {    
            e.printStackTrace();
        }
    }
}
