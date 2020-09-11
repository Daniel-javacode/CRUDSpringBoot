package JM.Task231.dao;

import JM.Task231.model.User;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<User> allUsers() {
        return em.createQuery("from User ", User.class)
                .getResultList();
    }

    @Override
    public void add(User user) {
        em.persist(user);
    }

    @Override
    public void delete(int id) {
        User user = em.find(User.class, id);
        em.remove(user);
    }

    @Override
    public void edit(User user) {
        em.merge(user);
    }

    @Override
    public User getById(int id) {
        return em.find(User.class, id);
    }

    public User getByLogin(String username) {
        return em.createQuery("from User u where u.username = :username", User.class)
                .setParameter("username", username).getSingleResult();
    }
}
