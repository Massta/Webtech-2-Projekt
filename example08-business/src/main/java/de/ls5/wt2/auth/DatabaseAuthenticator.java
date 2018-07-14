package de.ls5.wt2.auth;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAccount;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Transactional
public class DatabaseAuthenticator {

    @PersistenceContext
    private EntityManager entityManager;

    public AuthenticationInfo fetchAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        final String user = (String) token.getPrincipal();
        SimpleAccount account = new SimpleAccount(user, user.toCharArray(), WT2Realm.REALM);
        WT2Realm.WriteDebug("fetchAuth: "+account.toString());
        return account;
    }

}