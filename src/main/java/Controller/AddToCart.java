package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.cart;

@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		ArrayList<cart> cartList=new ArrayList<>();
		int id=Integer.parseInt(request.getParameter("id"));
		cart cr=new cart();
		cr.setId(id);
		cr.setQuantity(1);  
		
		HttpSession session=request.getSession();  
		ArrayList<cart> cart_list=(ArrayList<cart>) session.getAttribute("cart-list");
		   
		if(cart_list==null) {    
			cartList.add(cr);
			session.setAttribute("cart-list", cartList);
			response.sendRedirect("Views/index.jsp");
			  
		}
		else {
			cartList=cart_list;
			boolean exist=false;
			for(cart c:cartList) {
				if(c.getId()==id) {
					exist=true;
					response.sendRedirect("Views/index.jsp");
					out.println("<script><alert> product exist </alert>\"</script>");
				}
				
			}   
			if(!exist) {
					cartList.add(cr);
					response.sendRedirect("Views/index.jsp");
				} 
		}      
			
	}

}
