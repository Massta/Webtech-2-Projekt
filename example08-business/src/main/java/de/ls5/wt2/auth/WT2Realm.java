package de.ls5.wt2.auth;

import de.ls5.wt2.auth.permission.ReadNewsItemPermission;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.Permission;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.enterprise.context.spi.CreationalContext;
import javax.enterprise.inject.spi.Bean;
import javax.enterprise.inject.spi.BeanManager;
import javax.enterprise.inject.spi.CDI;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.io.*;
import java.sql.Timestamp;

public class WT2Realm extends AuthorizingRealm implements Realm {

    final static String REALM = "WT2";

    public static void WriteDebug(String content){
        try
        {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            String filename= "webtech2-debug.txt";
            FileWriter fw = new FileWriter(filename,true); //the true will append the new data
            fw.write(timestamp+": "+content+"\n");//appends the string to the file
            fw.close();
        }
        catch(IOException ioe)
        {
            System.err.println("IOException: " + ioe.getMessage());
        }
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        UsernamePasswordToken testToken = (UsernamePasswordToken)token;
        WriteDebug("user: "+testToken.getUsername()+", password: "+testToken.getPassword()+", host: "+testToken.getHost());
        final BeanManager bm = CDI.current().getBeanManager();
        final Set<Bean<?>> beans = bm.getBeans(DatabaseAuthenticator.class);

        if (beans.isEmpty()) {
            throw new AuthenticationException();
        }

        @SuppressWarnings("unchecked") final Bean<DatabaseAuthenticator> bean = (Bean<DatabaseAuthenticator>) bm.resolve(beans);
        final CreationalContext<DatabaseAuthenticator> cctx = bm.createCreationalContext(bean);
        final DatabaseAuthenticator authenticator =
                (DatabaseAuthenticator) bm.getReference(bean, DatabaseAuthenticator.class, cctx);
        return authenticator.fetchAuthenticationInfo(token);
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        WT2Realm.WriteDebug("dogetauthinfo");
        return new AuthorizationInfo() {

            @Override
            public Collection<String> getRoles() {
                if ("admin".equals(principals.getPrimaryPrincipal())) {
                    return Collections.singleton("admin");
                }

                return Collections.emptyList();
            }

            @Override
            public Collection<String> getStringPermissions() {
                WT2Realm.WriteDebug("getstringperms");
                return Collections.emptyList();
            }

            @Override
            public Collection<Permission> getObjectPermissions() {
                WT2Realm.WriteDebug("getobjperms");
                return Collections.singleton(new ReadNewsItemPermission());
            }
        };
    }
}
