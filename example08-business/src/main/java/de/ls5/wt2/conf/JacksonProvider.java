package de.ls5.wt2.conf;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import de.ls5.wt2.auth.WT2Realm;

import javax.ws.rs.ext.ContextResolver;
import javax.ws.rs.ext.Provider;

@Provider
public class JacksonProvider implements ContextResolver<ObjectMapper> {

    final ObjectMapper mapper;

    public JacksonProvider() {
        WT2Realm.WriteDebug("JacksonProvider const");
        mapper = new ObjectMapper();
        mapper.findAndRegisterModules();
        mapper.enable(SerializationFeature.INDENT_OUTPUT);
        mapper.disable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);
        mapper.disable(SerializationFeature.FAIL_ON_EMPTY_BEANS);
    }

    @Override
    public ObjectMapper getContext(Class<?> type) {
        WT2Realm.WriteDebug("JacksonProvider getContext");
        return mapper;
    }
}
