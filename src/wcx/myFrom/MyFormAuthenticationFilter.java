package wcx.myFrom;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;

public class MyFormAuthenticationFilter extends FormAuthenticationFilter {
	@Override
	protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
		HttpServletRequest hr=(HttpServletRequest) request;
		String yzm = hr.getParameter("yzm");
		String cord = (String) hr.getSession().getAttribute("yzm");
		if(cord==null||yzm==null||"".equals(cord)||"".equals(yzm)){
			request.setAttribute("msg", "验证码不能为空");
			return true;
		}else if (!yzm.equalsIgnoreCase(cord)) {
			request.setAttribute("msg", "验证码不正确");
			return true;
		}
		hr.getSession().setAttribute("username", hr.getParameter("username"));
		return super.onAccessDenied(request, response);
	}

}
