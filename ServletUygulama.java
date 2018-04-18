package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAOImpl;
import model.Users;

/**
 * Servlet implementation class ServletUygulama
 */
@WebServlet("/ServletUygulama")
public class ServletUygulama extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUygulama() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    
		    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String dosyaekle = request.getParameter("dosyaekle");
		if(dosyaekle!=null)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/index2.jsp");
			dispatcher.forward(request, response);
		}
		String update = request.getParameter("update");
		String kaydet = request.getParameter("kaydet");
		
		String sn = request.getParameter("sn");
		String gn = request.getParameter("gn");
		String baslangictarihi = request.getParameter("baslangictarihi");
		String bitistarihi = request.getParameter("bitistarihi");
		String sure = request.getParameter("sure");
		String afetturu = request.getParameter("afetturu");
		String il = request.getParameter("il");
		String ilce = request.getParameter("ilce");
		String koy = request.getParameter("koy");
		String mahalle = request.getParameter("mahalle");
		String belde = request.getParameter("belde");
		String neden = request.getParameter("neden");
		String enlem = request.getParameter("enlem");
		String boylam = request.getParameter("boylam");
		String nedenaciklama = request.getParameter("nedenaciklama");
		String etkilendigialanlar = request.getParameter("etkilendigialanlar");
		String kaynak = request.getParameter("kaynak");
		String onay = request.getParameter("onay");
		UserDAOImpl imp = new UserDAOImpl();
		if(update!=null) {
			
			
			imp.guncelle(sn, gn, baslangictarihi, bitistarihi, sure, afetturu, il, 
					ilce, koy, mahalle, belde, neden, enlem, boylam, nedenaciklama, 
					etkilendigialanlar, kaynak, onay);
			out.println("<a href='index5.jsp'>Guncellemeyi Gormek icin tiklayiniz</a>");
			
		}else if(kaydet!=null) {
			Users user = new Users(sn,gn,baslangictarihi,bitistarihi,sure,afetturu,il,ilce,koy,mahalle,belde,
					neden,enlem,boylam,nedenaciklama,etkilendigialanlar,kaynak,onay);
			
			imp.kaydet(user);
			out.println("islem basariyla kaydetildi<br>");
			out.println("<a href='index.jsp'>ana sayfaya donmek icin tiklayiniz</a><br>");
			out.println("<a href='index5.jsp'>Kayitlari databaseden gormek icin tiklayiniz.</a>");
		}
		 
	}

}
