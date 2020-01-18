package com.guitar.db.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.guitar.db.model.Model;

@Repository //optional to have this
public interface ModelJpaRepository extends JpaRepository<Model, Long>, ModelJpaRepositoryCustom
{
    List<Model> findByPriceGreaterThanEqualAndPriceLessThanEqual(BigDecimal low, BigDecimal high);

    List<Model> findByModelTypeNameIn(List<String> types); //Looking for the 'name' attribute of the ModelType attribute for a Model

    //not using Query methods, instead using a @Query, with a JPQL query and named parameters (those with ':')
    //also using paging functionality
    @Query("select m from Model m where m.price >= :lowest and m.price <= :highest and m.woodType like :wood")
    Page<Model> queryByPriceRangeAndWoodType(@Param("lowest") BigDecimal lowest,
                                             @Param("highest") BigDecimal high, //actual param name doesn't need to match, thus can be e.g. 'high'
                                             @Param("wood") String wood,
                                             Pageable page);

    //This is using a @NamedQuery which is defined in our Model.java entity
    List<Model> findAllModelsByType(@Param("name") String name);
}
