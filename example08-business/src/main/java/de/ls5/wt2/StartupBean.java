package de.ls5.wt2;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.ejb.Singleton;
import javax.ejb.Startup;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Date;

@Singleton
@Startup
public class StartupBean {

    @PersistenceContext
    private EntityManager entityManager;

    @PostConstruct
    public void startup() {

        final DBNews firstNewsItem = this.entityManager.find(DBNews.class, 1L);
        final DBTodo firstTodoItem = this.entityManager.find(DBTodo.class, 1L);
        final DBUser firstAdmin = this.entityManager.find(DBUser.class, 1L);

        // only initialize once
        if (firstNewsItem == null) {
            final DBNews news = new DBNews();

            news.setHeadline("Startup");
            news.setContent("Startup Bean successfully executed");
            news.setPublishedOn(new Date());

            this.entityManager.persist(news);
        }
        // only initialize once
        if (firstTodoItem == null) {
            for(int i = 0; i < 5; i++){
                final DBTodo todo = new DBTodo();

                todo.setTitle("Todo #"+i);
                todo.setDescription("Dies ist das "+i+". Beispiel Todo.");
                todo.setUserId(0);

                this.entityManager.persist(todo);
            }
        }
        // only initialize once
        if (firstAdmin == null) {
            final DBUser testUser = new DBUser();
            final DBUser testAdmin = new DBUser();

            testUser.setUserName("user");
            testUser.setPassword("password");
            testUser.setIsAdmin(false);

            testAdmin.setUserName("admin");
            testAdmin.setPassword("password");
            testAdmin.setIsAdmin(true);

            this.entityManager.persist(testUser);
            this.entityManager.persist(testAdmin);
        }
    }

    @PreDestroy
    public void shutdown() {
        // potential cleanup work
    }
}
