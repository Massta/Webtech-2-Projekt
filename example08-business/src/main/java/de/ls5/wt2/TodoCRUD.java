package de.ls5.wt2;

import de.ls5.wt2.auth.WT2Realm;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.h2.bnf.context.DbTableOrView;
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
    @Path("setFinished")
    public Response setFinished(final int todoId) {

        String userName = CRUDHelper.getUserName(SecurityUtils.getSubject());
        if(userName.equals("")){
            WT2Realm.WriteDebug("Username is empty, can't delete todo");
            return Response.status(401).build();
        }
        DBUser user = CRUDHelper.getUser(entityManager, userName);
        if(user == null){
            //Unauthorized
            WT2Realm.WriteDebug("Can't find user in database, can't delete todo");
            return Response.status(401).build();
        }

        final DBTodo selectedTodo;
        try{
            selectedTodo = entityManager.find(DBTodo.class, (long)todoId);
        }catch(Exception e){
            WT2Realm.WriteDebug("Can't find todo to delete");
            return Response.status(404).build();
        }

        if(selectedTodo == null){
            WT2Realm.WriteDebug("Can't find todo to delete");
            return Response.status(404).build();
        }

        if(user.getIsAdmin()){
            entityManager.remove(selectedTodo);
            WT2Realm.WriteDebug("Todo removed by admin.");
            return Response.status(200).build();
        }

        if(selectedTodo.getUserName().equals(user.getUserName())){
            entityManager.remove(selectedTodo);
            WT2Realm.WriteDebug("Todo removed by user.");
            return Response.status(200).build();
        }

        WT2Realm.WriteDebug("User is not admin and not owner of this todo.");
        return Response.status(401).build();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Path("update")
    @RequiresAuthentication
    public Response update(final DBTodo param) {

        String userName = CRUDHelper.getUserName(SecurityUtils.getSubject());
        if(userName.equals("")){
            WT2Realm.WriteDebug("Username is empty, can't update todo");
            return Response.status(401).build();
        }
        DBUser user = CRUDHelper.getUser(entityManager, userName);
        if(user == null){
            //Unauthorized
            WT2Realm.WriteDebug("Can't find user in database, can't update todo");
            return Response.status(401).build();
        }

        final DBTodo selectedTodo;
        try{
            selectedTodo = entityManager.find(DBTodo.class, (long)param.getId());
        }catch(Exception e){
            WT2Realm.WriteDebug("Can't find todo to update");
            return Response.status(404).build();
        }

        if(selectedTodo == null){
            WT2Realm.WriteDebug("Can't find todo to delete");
            return Response.status(404).build();
        }

        if(user.getIsAdmin()){
            entityManager.remove(selectedTodo);
            param.setId(0);
            entityManager.persist(param);
            WT2Realm.WriteDebug("Todo updated by admin.");
            return Response.status(200).build();
        }

        if(selectedTodo.getUserName().equals(user.getUserName())){
            entityManager.remove(selectedTodo);
            param.setId(0);
            param.setUserName(user.getUserName());
            entityManager.persist(param);
            WT2Realm.WriteDebug("Todo updated by user.");
            return Response.status(200).build();
        }

        WT2Realm.WriteDebug("User is not admin and not owner of this todo.");
        return Response.status(401).build();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @RequiresAuthentication
    //@RequiresRoles("admin")
    public Response create(final DBTodo param) {

        String userName = CRUDHelper.getUserName(SecurityUtils.getSubject());
        if(userName.equals("")){
            WT2Realm.WriteDebug("Username is empty, can't create todo");
            return Response.status(401).build();
        }
        DBUser user = CRUDHelper.getUser(entityManager, userName);
        if(user == null){
            //Unauthorized
            WT2Realm.WriteDebug("Can't find user in database, can't create todo");
            return Response.status(401).build();
        }

        final DBTodo todo = new DBTodo();

        todo.setTitle(param.getTitle());
        todo.setDescription(param.getDescription());
        if(user.getIsAdmin()){
            todo.setUserName(param.getUserName());
        }else{
            todo.setUserName(userName);
        }

        this.entityManager.persist(todo);

        return Response.ok(todo).build();
    }

    public DBTodo getTodo(int id){
        try{
            final CriteriaBuilder builder = entityManager.getCriteriaBuilder();
            final CriteriaQuery<DBTodo> query = builder.createQuery(DBTodo.class);
            final Root<DBTodo> from = query.from(DBTodo.class);
            query.where(builder.equal(from.get("id"),id));

            final DBTodo result = entityManager.createQuery(query).setMaxResults(1).getSingleResult();
            return result;
        }catch (Exception e){
            return null;
        }
    }
}
