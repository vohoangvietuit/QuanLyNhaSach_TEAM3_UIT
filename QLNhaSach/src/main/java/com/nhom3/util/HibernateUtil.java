package com.nhom3.util;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HibernateUtil {
	@Autowired
	private SessionFactory sessionFactory;

	public <T> Serializable create(final T entity) {
		return sessionFactory.getCurrentSession().save(entity);
	}

	public <T> T update(final T entity) {
		sessionFactory.getCurrentSession().update(entity);
		return entity;
	}

	public <T> void delete(final T entity) {
		sessionFactory.getCurrentSession().delete(entity);
	}

	public <T> void delete(Serializable id, Class<T> entityClass) {
		T entity = fetchById(id, entityClass);
		delete(entity);
	}

	@SuppressWarnings("unchecked")
	public <T> List<T> fetchAll(Class<T> entityClass) {
		return sessionFactory.getCurrentSession().createQuery(" FROM " + entityClass.getName()).list();
	}

	@SuppressWarnings("rawtypes")
	public <T> List fetchAll(String query) {
		return sessionFactory.getCurrentSession().createSQLQuery(query).list();
	}

	@SuppressWarnings("unchecked")
	public <T> T fetchById(Serializable id, Class<T> entityClass) {
		return (T) sessionFactory.getCurrentSession().get(entityClass, id);
	}
	
	@SuppressWarnings("rawtypes")
	public <T> List fetchAll(String query, int maxRes) {
		Query queryRes = sessionFactory.getCurrentSession().createSQLQuery(query);
		queryRes.setMaxResults(maxRes);
		return queryRes.list();
	}
	
	@SuppressWarnings("rawtypes")
	public <T> List fetchAll(String query, int firstResult, int maxResult) {
		Query queryRes = sessionFactory.getCurrentSession().createSQLQuery(query);
		queryRes.setFirstResult(firstResult);
		queryRes.setMaxResults(maxResult);
		return queryRes.list();
	}
}
