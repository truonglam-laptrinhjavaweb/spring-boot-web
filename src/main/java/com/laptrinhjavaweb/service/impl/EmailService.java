package com.laptrinhjavaweb.service.impl;

import com.laptrinhjavaweb.converter.EmailConverter;
import com.laptrinhjavaweb.dto.EmailDTO;
import com.laptrinhjavaweb.entity.EmailEntity;
import com.laptrinhjavaweb.repository.EmailRepository;
import com.laptrinhjavaweb.service.IEmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class EmailService implements IEmailService {

    @Autowired
    private EmailRepository emailRepository;

    @Autowired
    private EmailConverter emailConverter;

    @Override
    public List<EmailDTO> findAll(Pageable pageable) {
        List<EmailEntity> emailEntities = emailRepository.findAll(pageable).getContent();
        return emailEntities.stream().map(item -> emailConverter.convertToDto(item)).collect(Collectors.toList());
    }

    @Override
    public int getTotalItem(Pageable pageable) {
        return (int) emailRepository.count();
    }
}
