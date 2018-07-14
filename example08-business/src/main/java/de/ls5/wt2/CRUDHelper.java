package de.ls5.wt2;

import de.ls5.wt2.auth.WT2Realm;
import de.ls5.wt2.auth.permission.ViewFirstFiveNewsItemsPermission;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.Permission;
import org.apache.shiro.subject.Subject;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Root;
import javax.ws.rs.core.Response;
import java.util.Collection;

public class CRUDHelper {
    public static String getUserName(Subject sub){
        try{
            org.apache.shiro.session.Session ses = sub.getSession();
            Collection<Object> asd = ses.getAttributeKeys();
            String userName = ses.getAttribute("org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY").toString();
            WT2Realm.WriteDebug("Username="+userName);
            return userName;
        }catch (Exception e){
            return "";
        }
    }

    public static DBUser getUser(EntityManager manager, String userName){
        try{
            final CriteriaBuilder builder = manager.getCriteriaBuilder();
            final CriteriaQuery<DBUser> query = builder.createQuery(DBUser.class);
            final Root<DBUser> from = query.from(DBUser.class);
            query.where(builder.equal(from.get("userName"),userName));

            final DBUser result = manager.createQuery(query).setMaxResults(1).getSingleResult();
            return result;
        }catch (Exception e){
            return null;
        }
    }
}
