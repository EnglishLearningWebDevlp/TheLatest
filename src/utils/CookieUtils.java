package utils;

import Action.UsersAction;
import DAO.UsersDAO;
import bean.UsersEntity;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


/**
 * cookie�����ӡ�ɾ������ѯ
 */
public class CookieUtils {
	public static final String USER_COOKIE = "user.cookie";

	// ���һ��cookie
	public Cookie addCookie(UsersEntity user) {
		Cookie cookie = new Cookie(USER_COOKIE, user.getUserid() + "#"
				+ user.getPassword());
		System.out.println("set cookie");
		cookie.setMaxAge(60 * 60 * 24 * 14);// cookie��������
		return cookie;
	}

	// �õ�cookie
	public boolean getCookie(HttpServletRequest request, UsersDAO userDAO) {
		Cookie[] cookies = request.getCookies();
		System.out.println("cookies: " + cookies);
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				System.out.println("cookie: " + cookie.getName());
				if (CookieUtils.USER_COOKIE.equals(cookie.getName())) {
					String value = cookie.getValue();
					if (StringUtils.isNotBlank(value)) {
						String[] split = value.split("#");
						String username = split[0];
						String password = split[1];
						UsersEntity user = userDAO.findById(username);
						if (user.getPassword().equals(password)) {
							HttpSession session = request.getSession();
							session.setAttribute(UsersAction.USER_SESSION, user);// ����û���session��
							return true;
						}
					}
				}
			}
		}
		return false;
	}

	// ɾ��cookie
	public Cookie delCookie(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (USER_COOKIE.equals(cookie.getName())) {
					cookie.setValue("");
					cookie.setMaxAge(0);
					return cookie;
				}
			}
		}
		return null;
	}
}
