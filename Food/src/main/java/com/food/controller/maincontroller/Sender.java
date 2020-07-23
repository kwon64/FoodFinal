package com.food.controller.maincontroller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public class Sender extends Thread {
	private Socket socket;

	private BufferedOutputStream bos;

	private OutputStream os;

	private InputStream is;
	private BufferedInputStream bis;
	private String resultweather;
	private String resulttemp;
	private String result;

	public Sender(Socket socket, String resultweather,String resulttemp) {
		//socket 열어줌
		this.socket = socket;
		this.resultweather = resultweather;
		this.resulttemp = resulttemp;
		try {
			// 데이터 스트림 생성
			this.os = socket.getOutputStream();	//3
			bos = new BufferedOutputStream(os);
			this.is = socket.getInputStream();
			bis = new BufferedInputStream(is);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public boolean sendWeather(String resultweather) throws IOException {
//		File imageFile = new File(hello);
//		fileSize = (int) imageFile.length() * 100;
//		fis = new FileInputStream(imageFile);
		bos.write(resultweather.getBytes());
		bos.flush(); //4
		System.out.println("weathersend 잘보내짐");
		return true;
	}
	
	public boolean sendTemp(String resultweather) throws IOException {
//		File imageFile = new File(hello);
//		fileSize = (int) imageFile.length() * 100;
//		fis = new FileInputStream(imageFile);
		bos.write(resultweather.getBytes());
		bos.flush(); //4
		System.out.println("tempsend 잘보내짐");
		return true;
	}

//	public void sendImage(int fileSize) throws IOException {
//		byte[] data = new byte[(int) (fileSize)];
//		bos.write(data, 0, fis.read(data));
//		System.out.println("send image ... ");
//		bos.flush();
//		fis.close();
//	}

	public String receiveData(int buffer_size) throws IOException {
		byte[] tmp = new byte[buffer_size];
		int zz = bis.read(tmp); //7
		System.out.println("server : "+new String(tmp, 0, zz));
		return new String(tmp, 0, zz);
	}
	
//	public int receive() throws IOException {
//		int receive = bis.read(); //7
//		System.out.println("server : "+receive);
//		return receive;
//	}
	
	public String getResult() {
		return result;
	}
	
	public void close() {
		try {
		bos.close();
		socket.close();
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void run() {
		try {
			sendWeather(resultweather);
			receiveData(100);
			sendTemp(resulttemp);
			receiveData(100);
			sendTemp("result");
			this.result = receiveData(100);


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}// finally
	}// run

}