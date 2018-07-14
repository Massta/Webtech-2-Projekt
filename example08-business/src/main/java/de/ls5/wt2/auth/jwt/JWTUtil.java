package de.ls5.wt2.auth.jwt;

import com.nimbusds.jose.*;
import com.nimbusds.jose.crypto.MACSigner;
import com.nimbusds.jose.crypto.MACVerifier;
import com.nimbusds.jwt.JWTClaimsSet;
import com.nimbusds.jwt.SignedJWT;
import de.ls5.wt2.auth.WT2Realm;

import java.text.ParseException;
import java.util.Date;
import java.util.UUID;

public class JWTUtil {

    public final static String ROLES_CLAIM = "roles";

    public static String createJWToken(JWTLoginData credentials) throws JOSEException {

        final String user = credentials.getUsername();

        final JWTClaimsSet.Builder builder = new JWTClaimsSet.Builder();

        // set additional fields if wanted
        builder.subject(user);
        builder.issueTime(new Date());
        builder.jwtID(UUID.randomUUID().toString());

        // add a custom claim for admins
        if ("admin".equals(user)) {
            builder.claim(ROLES_CLAIM, "admin");
        }

        final JWTClaimsSet claimsSet = builder.build();

        final JWSHeader header = new JWSHeader(JWSAlgorithm.HS256);
        final Payload payload = new Payload(claimsSet.toJSONObject());
        final JWSObject jwsObject = new JWSObject(header, payload);

        final JWSSigner signer = new MACSigner(getSharedKey());
        jwsObject.sign(signer);

        return jwsObject.serialize();
    }

    public static boolean validateToken(String token) {
        WT2Realm.WriteDebug("validatetoken");
        try {
            final SignedJWT signed = SignedJWT.parse(token);
            final JWSVerifier verifier = new MACVerifier(getSharedKey());

            return signed.verify(verifier);
        } catch (ParseException | JOSEException ex) {
            return false;
        }
    }

    private static byte[] getSharedKey() {
        return "mySuperDuperSecure256BitLongSecret".getBytes();
    }

}
