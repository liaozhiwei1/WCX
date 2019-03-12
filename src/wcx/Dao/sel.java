package wcx.Dao;

import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import wcx.Pojo.*;
public interface sel {
	/*
	 * 查询所有数据
	 * */
	@Select("select * from td_data")
	public List<Data> selData(); 
	/*
	 * 查询所有数据
	 * */
	@Select("select * from td_data1")
	public List<Data> selData1(); 
	/*
	 * 查询所有数据
	 * */
	@Select("select * from td_data2")
	public List<Data> selData2(); 
	/*
	 * 查询最后一条数据
	 */
	@Select("SELECT * FROM td_data ORDER BY time DESC LIMIT 1")
	public List<Data> selLastData();
	/*
	 * 查询最后一条数据
	 */
	@Select("SELECT * FROM td_data1 ORDER BY time DESC LIMIT 1")
	public List<Data> selLastData1();
	/*
	 * 查询最后一条数据
	 */
	@Select("SELECT * FROM td_data2 ORDER BY time DESC LIMIT 1")
	public List<Data> selLastData2();
	/**
	 * 用户登陆
	 * @param user
	 * @return
	 */
	@Select("select password from users where username=#{0}")
	public String selUser(String username);
	/**
	 * 查询用户权限
	 */
	@Select("SELECT p.permission_name FROM users u LEFT JOIN roles r on u.roles_name=r.role_name LEFT JOIN permissions p on r.permission_id=p.id WHERE username=#{0}")
	public Set<String> selPermissions (String username);
	/**
	 * 查询用户角色
	 */
	@Select("SELECT roles_name from users WHERE username=#{0}")
	public Set<String> selRole(String str);
	/**
	 * 用户注册
	 */
	@Insert("INSERT INTO users (users.username,users.`password`) VALUES (#{0},#{1})")
	public int insuser(String username,String password); 
}
