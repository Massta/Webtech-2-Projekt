package de.ls5.wt2;

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

@Path("/{a:session|basic|jwt}/todo")
@Transactional
public class TodoCRUD {

    @PersistenceContext
    private EntityManager entityManager;

    @GET
    @Path("index")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getTodos() {
        final CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
        final CriteriaQuery<DBTodo> query = builder.createQuery(DBTodo.class);

        final Root<DBTodo> from = query.from(DBTodo.class);

        final Order order = builder.desc(from.get(DBTodo_.title));

        query.select(from).orderBy(order);

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
        todo.setUserId(param.getUserId());

        this.entityManager.persist(todo);

        return Response.ok(todo).build();
    }
}
