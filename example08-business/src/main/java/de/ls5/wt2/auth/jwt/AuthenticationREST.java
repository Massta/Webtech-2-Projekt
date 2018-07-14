package de.ls5.wt2.auth.jwt;

import com.nimbusds.jose.JOSEException;
import de.ls5.wt2.CRUDHelper;
import de.ls5.wt2.DBUser;
import de.ls5.wt2.auth.WT2Realm;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

@Path("jwt")
@Transactional
public class AuthenticationREST {

    @PersistenceContext
    private EntityManager entityManager;

    @Path("authenticate")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response createJWToken(JWTLoginData credentials) throws JOSEException {

        // do some proper lookup
        final String user = credentials.getUsername();
        final String pwd = credentials.getPassword();

        WT2Realm.WriteDebug("Posted auth info: user="+user+", pw="+pwd);

        DBUser dbUser = CRUDHelper.getUser(entityManager, user);
        WT2Realm.WriteDebug("Retrieved from db: user="+dbUser.getUserName()+", pw="+dbUser.getPassword());

        if(dbUser == null){
            return Response.status(Status.UNAUTHORIZED).build();
        }

        if (!dbUser.getPassword().equals(pwd)) {
            return Response.status(Status.UNAUTHORIZED).build();
        }
        String token = JWTUtil.createJWToken(credentials);
        WT2Realm.WriteDebug("Generated Token "+token);
        return Response.ok(token).build();
    }

}

