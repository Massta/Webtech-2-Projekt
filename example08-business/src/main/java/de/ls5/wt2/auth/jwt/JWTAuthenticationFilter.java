package de.ls5.wt2.auth.jwt;

import com.nimbusds.jose.JWSObject;
import de.ls5.wt2.auth.WT2Realm;
import net.minidev.json.JSONObject;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.web.filter.authc.AuthenticatingFilter;
import org.apache.shiro.web.util.WebUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;

public class JWTAuthenticationFilter extends AuthenticatingFilter {

    private final static String AUTHORIZATION = "Authorization";

    @Override
    protected AuthenticationToken createToken(ServletRequest request, ServletResponse response) {

        WT2Realm.WriteDebug("createToken");
        final HttpServletRequest httpRequest = WebUtils.toHttp(request);
        final String authzHeader = httpRequest.getHeader(AUTHORIZATION);

        if (authzHeader != null && authzHeader.startsWith("Bearer ")) {
            return buildShiroToken(authzHeader.split(" ")[1]);
        }

        // return empty token, that will fail authentication
        return new UsernamePasswordToken();
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {

        WT2Realm.WriteDebug("accessDenied");
        // if shiro doesn't recognizes us as logged in, try login in
        final boolean loggedIn = executeLogin(request, response);

        if (!loggedIn) {
            HttpServletResponse httpResponse = WebUtils.toHttp(response);
            httpResponse.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

            return false;
        }

        return true;
    }

    private JWTShiroToken buildShiroToken(String token) {
        WT2Realm.WriteDebug("buildtoken");
        try {
            final JWSObject jwsObject = JWSObject.parse(token);
            final JSONObject payload = jwsObject.getPayload().toJSONObject();

            final String username = payload.getAsString("sub");

            return new JWTShiroToken(username, token);
        } catch (ParseException ex) {
            throw new AuthenticationException(ex);
        }

    }
}
