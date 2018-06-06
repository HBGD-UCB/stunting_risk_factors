---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: []
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** s03rec24

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A        n     nA   nAY0   nAY1
-------------------------  -----------------------------  ---  -----  -----  -----  -----
ki1000108-IRC              INDIA                          1      410     89     77     12
ki1000108-IRC              INDIA                          2      410    119    106     13
ki1000108-IRC              INDIA                          3+     410    202    183     19
ki1017093b-PROVIDE         BANGLADESH                     1      686    502    475     27
ki1017093b-PROVIDE         BANGLADESH                     2      686    172    170      2
ki1017093b-PROVIDE         BANGLADESH                     3+     686     12     12      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2195   1504   1502      2
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     2195    618    618      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    2195     73     73      0


The following strata were considered:

* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9fce6f06-7b39-47d6-8b87-e01e6b51deb9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 1 rows containing missing values (geom_errorbar).
```

![](/tmp/9fce6f06-7b39-47d6-8b87-e01e6b51deb9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/9fce6f06-7b39-47d6-8b87-e01e6b51deb9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9fce6f06-7b39-47d6-8b87-e01e6b51deb9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC   INDIA     1                    NA                0.1348315   0.0637871   0.2058758
ki1000108-IRC   INDIA     2                    NA                0.1092437   0.0531282   0.1653592
ki1000108-IRC   INDIA     3+                   NA                0.0940594   0.0537549   0.1343639


### Parameter: E(Y)


studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC   INDIA     NA                   NA                0.1073171   0.1057786   0.1088556


### Parameter: RR


studyid         country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
--------------  --------  -------------------  ---------------  ----------  ----------  ---------
ki1000108-IRC   INDIA     1                    1                 1.0000000   1.0000000   1.000000
ki1000108-IRC   INDIA     2                    1                 0.8102241   0.3881714   1.691168
ki1000108-IRC   INDIA     3+                   1                 0.6976073   0.3537191   1.375826


### Parameter: PAR


studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------  --------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-IRC   INDIA     1                    NA                -0.0275144   -0.0985754   0.0435466


### Parameter: PAF


studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC   INDIA     1                    NA                -0.256384   -1.128345   0.2583436
