package com.gz.demo.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by gao on 2017/7/14.
 */
public class HistoryTestVo {
    private String Id;
    private String testType;
    private String custCode;
    private String custName;
    private String custOrg;
    private String testOrg;
    private String testOr;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date crtTm;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date crtTmStart;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date crtTmEnd;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date uptTm;
    private String sta;
    private String fxpTestDh;
    private String mergeProdName;
    private String oneTEva;
    private String oneTRaroc;


    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }

    public String getTestType() {
        return testType;
    }

    public void setTestType(String testType) {
        this.testType = testType;
    }

    public String getCustCode() {
        return custCode;
    }

    public void setCustCode(String custCode) {
        this.custCode = custCode;
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public String getCustOrg() {
        return custOrg;
    }

    public void setCustOrg(String custOrg) {
        this.custOrg = custOrg;
    }

    public String getTestOrg() {
        return testOrg;
    }

    public void setTestOrg(String testOrg) {
        this.testOrg = testOrg;
    }

    public String getTestOr() {
        return testOr;
    }

    public void setTestOr(String testOr) {
        this.testOr = testOr;
    }

    public Date getCrtTm() {
        return crtTm;
    }

    public void setCrtTm(Date crtTm) {
        this.crtTm = crtTm;
    }

    public Date getCrtTmStart() {
        return crtTmStart;
    }

    public void setCrtTmStart(Date crtTmStart) {
        this.crtTmStart = crtTmStart;
    }

    public Date getCrtTmEnd() {
        return crtTmEnd;
    }

    public void setCrtTmEnd(Date crtTmEnd) {
        this.crtTmEnd = crtTmEnd;
    }

    public Date getUptTm() {
        return uptTm;
    }

    public void setUptTm(Date uptTm) {
        this.uptTm = uptTm;
    }

    public String getSta() {
        return sta;
    }

    public void setSta(String sta) {
        this.sta = sta;
    }

    public String getFxpTestDh() {
        return fxpTestDh;
    }

    public void setFxpTestDh(String fxpTestDh) {
        this.fxpTestDh = fxpTestDh;
    }

    public String getMergeProdName() {
        return mergeProdName;
    }

    public void setMergeProdName(String mergeProdName) {
        this.mergeProdName = mergeProdName;
    }

    public String getOneTEva() {
        return oneTEva;
    }

    public void setOneTEva(String oneTEva) {
        this.oneTEva = oneTEva;
    }

    public String getOneTRaroc() {
        return oneTRaroc;
    }

    public void setOneTRaroc(String oneTRaroc) {
        this.oneTRaroc = oneTRaroc;
    }
}
