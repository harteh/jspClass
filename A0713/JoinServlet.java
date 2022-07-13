package co.bm.p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charsetUTF-8");
		
		//값 받아오기
		String name = request.getParameter("uName");
		String persNum1 = request.getParameter("persNum1");
		String persNum2 = request.getParameter("persNum2");
		String uid = request.getParameter("uid");
		String pass2 = request.getParameter("pass2");
		
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email3");
		
		String postNum = request.getParameter("postNum");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String tel = request.getParameter("tel");
		
		String job = request.getParameter("job");
		String chkSms = request.getParameter("chkSms");
		String sms;
		if(chkSms.equals("y")) {
			sms="받겠습니다.";
		} else {
			sms="받지 않겠습니다.";
		}
		
		
		//저장 정보 출력하기
		PrintWriter out = response.getWriter();
		out.print("<body>");
		out.print(name +"님 반갑습니다." + "<br>");
		out.print("주민번호: "+persNum1+"-"+persNum2 + "<br>");
		out.print("아이디는 "+uid +"이고 비밀번호는 "+pass2 + "입니다. <br>");
		out.print("메일주소: "+email1+"@"+email2 + "<br>");
		out.print("우편번호: "+postNum + "<br>");
		out.print("주소: "+addr1+" "+addr2 + "<br>");
		out.print("전화번호: "+tel + "<br>");
		
		out.print("직업은 "+job +"이고 sms는 "+sms+ "<br>");
		
		out.print("</body>");
		out.close();
		
	}

}
