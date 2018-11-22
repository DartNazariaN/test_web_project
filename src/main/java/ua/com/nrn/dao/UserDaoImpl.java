package ua.com.nrn.dao;

import org.springframework.stereotype.Repository;
import ua.com.nrn.entity.User;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

@Repository
public class UserDaoImpl implements UserDao{

    @PersistenceContext
    private EntityManager manager;

    @Override
    public void save(final User user) {
        manager.persist(user);
    }

    @Override
    public User findUserByUsername(final String username) {
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<User> criteriaQuery = builder.createQuery(User.class);
        Root<User> root = criteriaQuery.from(User.class);
        criteriaQuery.select(root);
        criteriaQuery.where(builder.equal(root.get("username"), username));
        TypedQuery<User> typed = manager.createQuery(criteriaQuery);
        try {
            return typed.getSingleResult();
        } catch (final NoResultException ex) {
            return null;
        }
    }

}
