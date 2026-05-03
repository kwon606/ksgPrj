package List_p;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/forward/info/main1.jsp")
public class gijang extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public gijang() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cate = "관광지";

		request.setAttribute("cate", "기장");
		request.setAttribute("menuData", new MenuList().menuList(cate));
		request.setAttribute("mainUrl", "/forView/info/gijangView.jsp");
		request.setAttribute("service", "기장소개");
		request.setAttribute("mainData",
				"마치 용궁으로 들어서는 듯한 느낌을 주는 해동용궁사는 바다를 마주하고 있어 멋진 경관 덕분에 여행자들이 많이 찾는다.<br/> "
				+ "기장미역, 갈치 그리고 멸치 회로 소문난 대변항은 봄이 되면 멸치축제로 인산인해를 이룬다. <br/>"
				+ "대변항 근처에는 횟촌이 형성되어 있어 바다 내음을 느끼며 저렴한 가격으로 싱싱한 해산물을 맛볼 수 있다.<br/> "
				+ "첩첩의 기암절벽으로 이루어진 해안과 넓은 산책로가 조성된 오랑대공원은 아름다운 경관때문에 일출과 일몰 명소로 유명하다.<br/>"
		);

		request.getRequestDispatcher("../../forView/template.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
