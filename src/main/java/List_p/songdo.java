package List_p;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/forward/info/main3.jsp")
public class songdo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public songdo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cate = "관광지";

		request.setAttribute("cate", "송도");
		request.setAttribute("menuData", new MenuList().menuList(cate));
		request.setAttribute("mainUrl", "/forView/info/songdoView.jsp");
		request.setAttribute("service", "송도소개");
		request.setAttribute("mainData",
				"송도는 부산에서 바다 풍경을 가까이 즐길 수 있는 대표적인 여행지다. "
				+ "송도해수욕장과 해상케이블카, 구름산책로가 이어져 있어 바다 위를 걷는 듯한 느낌을 받을 수 있고, 주변에는 식당과 카페도 많아 여유롭게 둘러보기 좋다."
		);

		request.getRequestDispatcher("../../forView/template.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
