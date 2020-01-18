package com.guitar.db.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.guitar.db.model.ModelType;

@Repository //optional to have this
public interface ModelTypeJpaRepository extends JpaRepository<ModelType, Long>
{
    List<ModelType> findByNameIsNull();
}
