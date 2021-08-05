package k_jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MakeQuery extends JDBCUtil{
	
	private MakeQuery(){
		super();
	}
	
	private static MakeQuery instance = null;
	
	private static int toyStudId = 100;
	
	
	public static MakeQuery getInstance(){
		if(instance == null){
			instance = new MakeQuery();
		}
		return instance;
	}
	
	public String makeToyStud(String name){
		
		toyStudId++;
		int tmpScore = 0;
		String scoreStr = "";
		
		for(int i = 0; i < 7; i++){
			tmpScore = (int)(Math.random() * 101);
			scoreStr = scoreStr + String.valueOf(tmpScore) + ", ";
		}
		
		return "insert into toystudent values(" + String.valueOf(toyStudId) + ", '" + name + "', " + scoreStr + "1)";
	}
	
	public void addToTable(){
		String[] studentNames = {"이단비","김노을","정현욱","박소현","김수진","이희현","강건","이민영","하기재",
				"이윤우","김미희","김혜윤","신승철","이광효","김진혁","마창수","양기욱","이동근",
				"석기현","류인성","이미정","임나리","송민섭","김지윤","조명석"};
		
		for(int i = 0; i < studentNames.length; i++){
			update(instance.makeToyStud(studentNames[i]));
		}
	}
	
	public HashMap<String, Object> getSubSum(){
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			con = DriverManager.getConnection(url, user, password);
			
			String sql = "select sum(kor), sum(eng), sum(math), sum(society), sum(science), sum(java), sum(oracle) from toystudent";
			
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();

			ResultSetMetaData metaData = rs.getMetaData();
			
			int columnCount = metaData.getColumnCount();
			
			while (rs.next()) {
				for(int i = 1; i <= columnCount; i++){
					map.put(metaData.getColumnName(i), rs.getObject(i));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			if(rs != null) try { rs.close(); } catch (Exception e) {}
			if(ps != null) try { ps.close(); } catch (Exception e) {}
			if(con != null) try { con.close(); } catch (Exception e) {}
		}
		
		
		return map;
	}
	public HashMap<String, Object> getSubAvg(){
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			con = DriverManager.getConnection(url, user, password);
			
			String sql = "select avg(kor), avg(eng), avg(math), avg(society), avg(science), avg(java), avg(oracle) from toystudent";
			
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			ResultSetMetaData metaData = rs.getMetaData();
			
			int columnCount = metaData.getColumnCount();
			
			while (rs.next()) {
				for(int i = 1; i <= columnCount; i++){
					map.put(metaData.getColumnName(i), rs.getObject(i));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			if(rs != null) try { rs.close(); } catch (Exception e) {}
			if(ps != null) try { ps.close(); } catch (Exception e) {}
			if(con != null) try { con.close(); } catch (Exception e) {}
		}
		
		
		return map;
	}
	
	public void getRank(){
		instance.update("update TOYSTUDENT a   set (stud_id, rank) = (select stud_id, rnk"
				+ " from (select stud_id,"
				+ " kor + eng + math + society + science + java + oracle,"
				+ " rank() over(order by (kor + eng + math + society + science + java + oracle) desc) as rnk"
				+ " from toystudent) b"
				+ " where a.stud_id = b.stud_id)");
	}
	
	public void printAll(List<Map<String, Object>> list){
		for(Map<String, Object> walk : list){
			System.out.print(walk.get("STUD_ID"));
			System.out.print("\t" + walk.get("STUD_NAME"));
			System.out.print("\t" + walk.get("KOR"));
			System.out.print("\t" + walk.get("ENG"));
			System.out.print("\t" + walk.get("MATH"));
			System.out.print("\t" + walk.get("SOCIETY"));
			System.out.print("\t" + walk.get("SCIENCE"));
			System.out.print("\t" + walk.get("JAVA"));
			System.out.print("\t" + walk.get("ORACLE"));
			System.out.println("\t" + walk.get("RANK"));
		}
	}
}
