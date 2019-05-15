package wcx.ralm;

import java.util.Set;

import org.apache.shiro.authc.AccountException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import wcx.Service.da;

public class userRealm extends AuthorizingRealm{
	
	private da d;
	
	public da getD() {
		return d;
	}
	public void setD(da d) {
		this.d = d;
	}
	@Override
	public String getName() {
		return "userRealm";
	}
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		//用户输入的用户名
		String username=(String)token.getPrincipal().toString();//获取身份信息
		if (username == null) {
            throw new AccountException("Null usernames are not allowed by this realm.");
        }
		String password=d.login(username);  //根据用户名查询password字段
		SimpleAuthenticationInfo si=new SimpleAuthenticationInfo(username, password, getName());
		return si;
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		if (principals == null) {
            throw new AuthorizationException("PrincipalCollection method argument cannot be null.");
        }
		String username= (String)principals.getPrimaryPrincipal().toString();
		Set<String> roles=d.selRoles(username);
		Set<String> per=d.selPermissions(username);
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
        info.setStringPermissions(per);
		return info;
	}

}
