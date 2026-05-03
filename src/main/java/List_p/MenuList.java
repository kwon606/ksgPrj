package List_p;

import java.util.List;
import java.util.Map;

public class MenuList {

	Map<String, List<MenuDTO>> menuData;

	public MenuList() {
		menuData = Map.of(
				"관광지",
				List.of(
						new MenuDTO("/TeamPrj1/forward/info/main1.jsp", "기장"),
						new MenuDTO("/TeamPrj1/forward/info/main2.jsp", "남포동"),
						new MenuDTO("/TeamPrj1/forward/info/main3.jsp", "송도")
				)
		);
	}

	public List<MenuDTO> menuList(String cate) {
		return menuData.get(cate);
	}
}