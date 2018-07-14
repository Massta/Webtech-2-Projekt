package de.ls5.wt2;

import de.ls5.wt2.auth.WT2Realm;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import java.util.Collection;

public class CRUDHelper {
    public static String getUserName(Subject sub){
        org.apache.shiro.session.Session ses = sub.getSession();
        Collection<Object> asd = ses.getAttributeKeys();
        String userName = ses.getAttribute("org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY").toString();
        WT2Realm.WriteDebug("Username="+userName);
        return userName;
    }
}
