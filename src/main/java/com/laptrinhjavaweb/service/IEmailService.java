package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.EmailDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IEmailService {
    List<EmailDTO> findAll(Pageable pageable);
    int getTotalItem(Pageable pageable);
}
