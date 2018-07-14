package de.ls5.wt2.auth.jwt;

import com.nimbusds.jose.JOSEException;

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

        if (!user.equals(pwd)) {
            return Response.status(Status.UNAUTHORIZED).build();
        }

        return Response.ok(JWTUtil.createJWToken(credentials)).build();
    }

}

