package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.EmailDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.EmailEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class EmailConverter {

    @Autowired
    private ModelMapper modelMapper;

    public EmailDTO convertToDto (EmailEntity entity){
        EmailDTO result = modelMapper.map(entity, EmailDTO.class);
        return result;
    }

    /*public UserEntity convertToEntity (UserDTO dto){
        UserEntity result = modelMapper.map(dto, UserEntity.class);
        return result;
    }*/
}
