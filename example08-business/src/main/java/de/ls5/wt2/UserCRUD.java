package de.ls5.wt2;

import de.ls5.wt2.auth.WT2Realm;
import org.apache.shiro.authz.annotation.RequiresAuthentication;

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

@Path("/{a:session|basic|jwt}/user")
@Transactional
public class UserCRUD {

    @PersistenceContext
    private EntityManager entityManager;

    @GET
    @Path("index")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getUsers() {
        WT2Realm.WriteDebug("getUsers");
        final CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
        final CriteriaQuery<DBUser> query = builder.createQuery(DBUser.class);

        final Root<DBUser> from = query.from(DBUser.class);

        final Order order = builder.desc(from.get(DBUser_.userName));

        query.select(from).orderBy(order);

        final List<DBUser> result = this.entityManager.createQuery(query).getResultList();

        return Response.ok(result).build();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    //@RequiresRoles("admin")
    public Response create(final DBUser param) {

        final DBUser user = new DBUser();

        user.setUserName(param.getUserName());
        user.setPassword(param.getPassword());
        user.setIsAdmin(false);

        this.entityManager.persist(user);

        final DBTodo sampleTodo = new DBTodo();

        sampleTodo.setUserName(user.getUserName());
        sampleTodo.setDescription("Dies ist ein Beispiel Todo, damit der User sehen kann, wie das aussieht.");
        sampleTodo.setTitle("Beispiel Todo für den neuen User "+user.getUserName());

        this.entityManager.persist(sampleTodo);

        return Response.ok(user).build();
    }
}
