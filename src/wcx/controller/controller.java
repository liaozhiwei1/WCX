package wcx.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.util.UnknownClassException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lzw.util.ValidateCode;

import net.sf.json.JSONArray;
import wcx.Pojo.*;
import wcx.Service.da;

@Controller
public class controller {
	
	@Resource
	private da d;
	
	
	@RequestMapping("/selAllData")
	@ResponseBody
	public String  selAllData(){
		JSONArray json = JSONArray.fromObject(d.allData());
		return json.toString();
	}
	@RequestMapping("/selAllData1")
	@ResponseBody
	public String  selAllData1(){
		JSONArray json = JSONArray.fromObject(d.allData1());
		return json.toString();
	}
	@RequestMapping("/selAllData2")
	@ResponseBody
	public String  selAllData2(){
		JSONArray json = JSONArray.fromObject(d.allData2());
		return json.toString();
	}
	@RequestMapping("/selLastData")
	@ResponseBody
	public List<Data> selLastData(){
		return d.oneData();
	}
	@RequestMapping("/selLastData1")
	@ResponseBody
	public List<Data> selLastData1(){
		return d.oneData1();
	}
	@RequestMapping("/selLastData2")
	@ResponseBody
	public List<Data> selLastData2(){
		return d.oneData2();
	}
	
	@RequestMapping("/tologin")
	public ModelAndView toLogin(HttpServletRequest req){
		ModelAndView m =new ModelAndView("/login.jsp");
		return m;
	}
	
	@RequestMapping("login")
	public ModelAndView selUser(HttpServletRequest req) throws  IllegalAccessException, InvocationTargetException, UnsupportedEncodingException{
		ModelAndView m =new  ModelAndView("/login.jsp");
		String className=(String) req.getAttribute("shiroLoginFailure");
		if(UnknownClassException.class.getName().equals(className)){
			m.addObject("msg", "账号或密码出错");
		}else if(IncorrectCredentialsException.class.getName().equals(className)) {
			m.addObject("msg", "账号或密码出错");
		}
		return m;
	}
	
	@RequestMapping("yzm")
	public void yzm (HttpServletRequest arg0, HttpServletResponse arg1) throws IOException{
		ValidateCode vc =new ValidateCode();
		BufferedImage image = vc.getImage();
		System.out.println(vc.getText());
		arg0.getSession().setAttribute("yzm", vc.getText());
		ValidateCode.output(image, arg1.getOutputStream());
	}
	
	@RequestMapping("/sendregistered")
	public void registered(HttpServletRequest arg0, HttpServletResponse arg1) throws AddressException, MessagingException{
		String email=arg0.getParameter("email");
		ValidateCode vc =new ValidateCode();
		BufferedImage image = vc.getImage();
		String y=vc.getText();
		System.out.println(y);
		arg0.getSession().setAttribute("yzm", y);
		Properties  prop = new Properties();
		prop.setProperty("mail.transport.protocol", "SMTP");
		prop.setProperty("mail.host", "smtp.qq.com");
		prop.setProperty("mail.smtp.auth", "true");
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication("1163230808@qq.com", "btuaxhukouudhcdf");
			}
		};
		Session session = Session.getInstance(prop, auth);
		
		Message message = new  MimeMessage(session);
		message.setFrom(new InternetAddress("1163230808@qq.com"));
		message.setRecipient(RecipientType.TO, new InternetAddress(email)); // 设置发送方式与接收者

		message.setSubject("用户注册");
		// message.setText("这是一封激活邮件，请<a href='#'>点击</a>");

		message.setContent(vc.getText(), "text/html;charset=utf-8");

		// 3.创建 Transport用于将邮件发送

		Transport.send(message);
	}
	
	@RequestMapping("registered")
	public ModelAndView insUser(HttpServletRequest req) throws  IllegalAccessException, InvocationTargetException, UnsupportedEncodingException{
		ModelAndView m =new  ModelAndView();
		String yzm=req.getParameter("yzm");
		System.out.println(yzm);
		System.out.println((String) req.getSession().getAttribute("yzm"));
		if(!yzm.equalsIgnoreCase((String) req.getSession().getAttribute("yzm"))){
			m.setViewName("/registered.jsp");
			m.addObject("msg","验证码不正确");
			return m;
		}
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		int i = 0;
		try {
			i = d.insUser(username, password);
		} catch (Exception e) {
			if(e.getClass().getName()=="org.springframework.dao.DuplicateKeyException"){
				System.out.println("asd");
				m.setViewName("registered.jsp");
				m.addObject("msg","用户已注册");
				return m;
			};
		}
		if(i>0){
			m.setViewName("/login.jsp");
			m.addObject("msg","注册成功");
		}else {
			m.setViewName("registered.jsp");
			m.addObject("msg","注册失败");
		}
		return m;
	}
}
