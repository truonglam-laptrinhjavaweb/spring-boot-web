package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.EmailEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmailRepository extends JpaRepository<EmailEntity, Long> {
    Page<EmailEntity> findAll(Pageable pageable);
}
