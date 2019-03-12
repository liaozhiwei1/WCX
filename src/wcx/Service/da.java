package wcx.Service;

import java.util.List;
import java.util.Set;

import wcx.Pojo.Data;

public interface da {
	
	public List<Data> allData();
	
	public List<Data> allData1();
	
	public List<Data> allData2();
	
	public List<Data> oneData();
	
	public List<Data> oneData1();
	
	public List<Data> oneData2();

	String login(String username);
	
	Set<String> selPermissions(String username);
	
	Set<String> selRoles(String username);
	
	int insUser(String username,String password);
}
