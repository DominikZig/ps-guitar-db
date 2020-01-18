package com.guitar.db.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.guitar.db.model.Manufacturer;

@Repository //optional to have this
public interface ManufacturerJpaRepository extends JpaRepository<Manufacturer, Long>
{
    List<Manufacturer> findByFoundedDateBefore(Date date);

    List<Manufacturer> findByActiveTrue();
    List<Manufacturer> findByActiveFalse();

    //This is using a @NamedNativeQuery which is defined in our Manufacturer.java entity
    List<Manufacturer> getAllThatSellAcoustics(String name);
}
