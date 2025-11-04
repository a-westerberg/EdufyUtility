package com.example.edufyutility.repositories;

import com.example.edufyutility.models.entities.Utility;
import org.springframework.data.jpa.repository.JpaRepository;

// ED-258-AWS
public interface UtilityRepository extends JpaRepository<Utility, Long> {
}
