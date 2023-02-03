import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Calculator extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String num1 = request.getParameter("num1");
		String op = request.getParameter("calc");
		String num2 = request.getParameter("num2");
		int result = 0;
		
		Calc calc = new Calc(num1, num2, op);
		result = calc.getResult();
		
		
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("</head>");
		out.print("<body>");
		out.print(num1 + " " + op + " " + num2 + " = " + Integer.toString(result) + " ");
		out.print("<input type=\"button\" onclick=\"history.go(-1)\" value=\"돌아가기\">");
		out.print("</body>");
		out.print("</html>");
	}
}

class Calc {
	int result = 0;
	
	public Calc(String num1, String num2, String op) {
		if (op.equals("+")) {
			result = Integer.parseInt(num1) + Integer.parseInt(num2); 
		} else if (op.equals("-")) {
			result = Integer.parseInt(num1) - Integer.parseInt(num2);
		} else if (op.equals("*")) {
			result = Integer.parseInt(num1) * Integer.parseInt(num2);
		} else if (op.equals("/")) {
			result = Integer.parseInt(num1) / Integer.parseInt(num2);
		}
	}
	
	public int getResult() {
		return result;
	}
}
