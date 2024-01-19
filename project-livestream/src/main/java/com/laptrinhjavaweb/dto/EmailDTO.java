package com.laptrinhjavaweb.dto;

public class EmailDTO extends AbstractDto<EmailDTO> {

    private String campaign;
    private String content;

    public String getCampaign() {
        return campaign;
    }

    public void setCampaign(String campaign) {
        this.campaign = campaign;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
