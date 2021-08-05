package k_jdbc;

import java.util.List;
import java.util.Map;

public class ToyBoard {

	public static void main(String[] args) {
		
		MakeQuery instance = MakeQuery.getInstance();
		
//		instance.update("delete toystudent");
		
		Map<String, Object> map = instance.selectOne("select * from toystudent");
		List<Map<String, Object>> list = instance.selectList("select * from toystudent");
		
		if(map == null){
			System.out.println("asdf!");
			instance.addToTable();
			instance.getRank();
		}
		
		System.out.println(list);
		
//		System.out.println(instance.getSubSum());
//		System.out.println(instance.getSubAvg());
		
		instance.printAll(list);
		
	}
	
	

}
