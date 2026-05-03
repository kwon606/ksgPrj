package basic_p;

import java.util.List;
import java.util.Map;

import basic_p.MenuDTO;

public class MenuListService {

	Map<String,List<MenuDTO>> menuData ;
	
	public MenuListService() {
		menuData = Map.of(
				"email", 
				List.of(
						new MenuDTO("/kgsPrj/forward/email/read.jsp","읽기"),
						new MenuDTO("/kgsPrj/forward/email/write.jsp","쓰기"),
						new MenuDTO("/kgsPrj/forward/email/trash.jsp","쓰레기통")

						),
				"일반빵",
				List.of(
						new MenuDTO("/jspPrj/forward/basic/Bagette","바게뜨"),
						new MenuDTO("/jspPrj/forward/basic/RedBean","앙꼬"),
						new MenuDTO("/jspPrj/forward/basic/Soboro","소보로")
						),
				"케이크",
				List.of(
						new MenuDTO("cheeze","치즈"),
						new MenuDTO("icing","생크림"),
						new MenuDTO("strawberry","딸기"),
						new MenuDTO("sp","고구마")
						)
				);
	}
	
	public List<MenuDTO> menuList(String cate){
		return menuData.get(cate);
	}
	
	
	
}