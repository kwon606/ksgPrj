package List_p;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/forward/info/main2.jsp")
public class nampo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public nampo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cate = "관광지";

		request.setAttribute("cate", "남포동");
		request.setAttribute("menuData", new MenuList().menuList(cate));
		request.setAttribute("mainUrl", "/forView/info/nampoView.jsp");
		request.setAttribute("service", "남포동소개");
		request.setAttribute("mainData",
				"남포동은 부산의 오래된 번화가로 국제시장, BIFF광장, 자갈치시장처럼 볼거리와 먹거리가 모여 있는 곳이다. "
				+ "거리마다 다양한 상점과 맛집이 이어져 있어 부산 여행 중 산책하며 둘러보기 좋고, 근처의 용두산공원과 부산타워까지 함께 즐길 수 있다."
		);

		request.getRequestDispatcher("../../forView/template.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
