package de.ls5.wt2;

import de.ls5.wt2.auth.WT2Realm;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.h2.upgrade.DbUpgrade;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/{a:session|basic|jwt}/todo")
@Transactional
public class TodoCRUD {

    @PersistenceContext
    private EntityManager entityManager;

    @GET
    @Path("index")
    @Produces(MediaType.APPLICATION_JSON)
    @RequiresAuthentication
    public Response getTodos() {
        WT2Realm.WriteDebug("getTodos");
        String userName = CRUDHelper.getUserName(SecurityUtils.getSubject());
        DBUser user = CRUDHelper.getUser(entityManager, userName);
        if(userName.equals("")){
            //Unauthorized
            WT2Realm.WriteDebug("User is not logged in, can't retrieve todos");
            return Response.status(401).build();
        }
        final CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
        final CriteriaQuery<DBTodo> query = builder.createQuery(DBTodo.class);

        final Root<DBTodo> from = query.from(DBTodo.class);

        final Order order = builder.desc(from.get(DBTodo_.title));

        query.select(from).orderBy(order);

        if(!user.getIsAdmin()){
            query.where(builder.equal(from.get("userName"),userName));
            WT2Realm.WriteDebug("User "+userName+" is not an admin, showing only their todos");
        }else{
            WT2Realm.WriteDebug("User "+userName+" is an admin, showing all");
        }

        final List<DBTodo> result = this.entityManager.createQuery(query).getResultList();

        return Response.ok(result).build();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @RequiresAuthentication
    //@RequiresRoles("admin")
    public Response create(final DBTodo param) {

        final DBTodo todo = new DBTodo();

        todo.setTitle(param.getTitle());
        todo.setDescription(param.getDescription());
        todo.setUserName(param.getUserName());

        this.entityManager.persist(todo);

        return Response.ok(todo).build();
    }
}
