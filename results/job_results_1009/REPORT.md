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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A        n     nA   nAY0   nAY1
-------------------------  -----------------------------  ---  -----  -----  -----  -----
ki1000108-CMC-V-BCS-2002   INDIA                          0      367    359    338     21
ki1000108-CMC-V-BCS-2002   INDIA                          1      367      8      7      1
ki1000108-IRC              INDIA                          0      410    402    358     44
ki1000108-IRC              INDIA                          1      410      8      8      0
ki1000109-EE               PAKISTAN                       0      124     86     86      0
ki1000109-EE               PAKISTAN                       1      124     38     38      0
ki1017093b-PROVIDE         BANGLADESH                     0      686    509    487     22
ki1017093b-PROVIDE         BANGLADESH                     1      686    177    170      7
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     2093   2059   2058      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2093     34     34      0
ki1113344-GMS-Nepal        NEPAL                          0      553    138    134      4
ki1113344-GMS-Nepal        NEPAL                          1      553    415    403     12


The following strata were considered:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/fe968f51-8c79-43ce-8c3b-21a5c885e2bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 1 rows containing missing values (geom_errorbar).
```

![](/tmp/fe968f51-8c79-43ce-8c3b-21a5c885e2bf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/fe968f51-8c79-43ce-8c3b-21a5c885e2bf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fe968f51-8c79-43ce-8c3b-21a5c885e2bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   0                    NA                0.043222   0.0255427   0.0609013
ki1017093b-PROVIDE   BANGLADESH   1                    NA                0.039548   0.0108152   0.0682809


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0422741   0.0421537   0.0423944


### Parameter: RR


studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
ki1017093b-PROVIDE   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE   BANGLADESH   1                    0                 0.9149974   0.3974869   2.106284


### Parameter: PAR


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1017093b-PROVIDE   BANGLADESH   0                    NA                -0.000948   -0.0186276   0.0167317


### Parameter: PAF


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1017093b-PROVIDE   BANGLADESH   0                    NA                -0.022424   -0.5391339   0.3208189
