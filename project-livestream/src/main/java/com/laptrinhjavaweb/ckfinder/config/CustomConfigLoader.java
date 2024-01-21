package com.laptrinhjavaweb.ckfinder.config;

import com.cksource.ckfinder.config.Config;
import com.cksource.ckfinder.config.loader.ConfigLoader;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import jakarta.inject.Named;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Named
public class CustomConfigLoader implements ConfigLoader {

    @Value("classpath:ckfinder.yml")
    private Resource resource;

    @Override
    public Config loadConfig() throws Exception {
        ObjectMapper mapper = new ObjectMapper(new YAMLFactory());
        Path configPath = Paths.get(resource.getFile().getPath());
        return mapper.readValue(Files.newInputStream(configPath), CustomConfig.class);
    }
}
