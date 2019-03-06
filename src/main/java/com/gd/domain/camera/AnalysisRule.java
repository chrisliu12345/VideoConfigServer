package com.gd.domain.camera;

public class AnalysisRule {
    private int ruleID;
    private String AnalysisRuleID;
    private String RuleName;
    private int RuleCode;
    private int sensitiveness=10;
    private float hmin=0.04f;
    private String vertex;
    private String interParams;

    public int getRuleID() {
        return ruleID;
    }

    public void setRuleID(int ruleID) {
        this.ruleID = ruleID;
    }

    public String getAnalysisRuleID() {
        return AnalysisRuleID;
    }

    public void setAnalysisRuleID(String analysisRuleID) {
        AnalysisRuleID = analysisRuleID;
    }

    public String getRuleName() {
        return RuleName;
    }

    public void setRuleName(String ruleName) {
        RuleName = ruleName;
    }

    public int getRuleCode() {
        return RuleCode;
    }

    public void setRuleCode(int ruleCode) {
        RuleCode = ruleCode;
    }

    public int getSensitiveness() {
        return sensitiveness;
    }

    public void setSensitiveness(int sensitiveness) {
        this.sensitiveness = sensitiveness;
    }

    public float getHmin() {
        return hmin;
    }

    public void setHmin(float hmin) {
        this.hmin = hmin;
    }

    public String getVertex() {
        return vertex;
    }

    public void setVertex(String vertex) {
        this.vertex = vertex;
    }

    public String getInterParams() {
        return interParams;
    }

    public void setInterParams(String interParams) {
        this.interParams = interParams;
    }
}
