package br.com.fiap.domain.repository;

import java.util.List;

/**
 * Interface para métodos de Repository
 * @author Francis
 * @version 1.0
 * @param <T>
 * @param <U>
 */
public interface Repository<T, U> {

    /**
     * <strong>Método para persistencia da Entidade</strong>
     *
     * @param t
     * @return
     */
    public T persist(T t);

    /**
     * Método que retorna todas as Entidades
     *
     * @return
     */
    public List<T> findAll();

    /**
     * Método que retorna uma entidade pelo seu identificador
     *
     * @param u
     * @return
     */
    public T findById(U u);

    /**
     * Método que atualiza a entidade
     * @param t
     * @return
     */
    public T update(T t);

    /**
     * Método que deleta a entidade do banco de dados
     * @param id
     * @return
     */
    public boolean delete(U id);
}
