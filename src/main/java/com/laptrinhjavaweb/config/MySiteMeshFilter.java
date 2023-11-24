package com.laptrinhjavaweb.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.sitemesh.content.tagrules.html.Sm2TagRuleBundle;

public class MySiteMeshFilter extends ConfigurableSiteMeshFilter {
    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder.addDecoratorPath("/admin**", "layout.jsp");
        builder.addExcludedPath("/template/**");
        builder.addExcludedPath("/api/*");
        builder.addTagRuleBundle(new Sm2TagRuleBundle());
    }
}
