package bean;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Param")
public class Param extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Param() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String uid = request.getParameter("uid");
		String age = request.getParameter("age");
		String pass1 = request.getParameter("pass1");
		String tel = request.getParameter("tel");
		
		//저장 정보 출력하기
		PrintWriter out = response.getWriter();
		out.print("<body>");
		out.print(uid +"님 반갑습니다." + "<br>");
		out.print("나이는 "+ age +"이고 전화번호는 "+ tel + "입니다. <br>");
		out.print("설정한 비밀번호: "+pass1 + "<br>");
		out.print("</body>");
		out.close();
		
	}

}
