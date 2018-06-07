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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A        n     nA   nAY0   nAY1
-------------------------  -----------------------------  ---  -----  -----  -----  -----
ki1000108-CMC-V-BCS-2002   INDIA                          0      370     25     23      2
ki1000108-CMC-V-BCS-2002   INDIA                          1      370    345    330     15
ki1000108-IRC              INDIA                          0      410     70     63      7
ki1000108-IRC              INDIA                          1      410    340    319     21
ki1017093b-PROVIDE         BANGLADESH                     0      690    158    151      7
ki1017093b-PROVIDE         BANGLADESH                     1      690    532    517     15
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     2247    199    199      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2247   2048   2046      2


The following strata were considered:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8599a5ed-e5a5-4363-8eb7-81467b3ba355/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 2 rows containing missing values (geom_errorbar).
```

![](/tmp/8599a5ed-e5a5-4363-8eb7-81467b3ba355/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/8599a5ed-e5a5-4363-8eb7-81467b3ba355/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8599a5ed-e5a5-4363-8eb7-81467b3ba355/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC        INDIA        0                    NA                0.1000000   0.0296360   0.1703640
ki1000108-IRC        INDIA        1                    NA                0.0617647   0.0361455   0.0873839
ki1017093b-PROVIDE   BANGLADESH   0                    NA                0.0443038   0.0121957   0.0764119
ki1017093b-PROVIDE   BANGLADESH   1                    NA                0.0281955   0.0141193   0.0422717


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC        INDIA        NA                   NA                0.0682927   0.0438464   0.0927390
ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0318841   0.0187654   0.0450027


### Parameter: RR


studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
ki1000108-IRC        INDIA        0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC        INDIA        1                    0                 0.6176471   0.2729040   1.397883
ki1017093b-PROVIDE   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE   BANGLADESH   1                    0                 0.6364125   0.2639632   1.534384


### Parameter: PAR


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-IRC        INDIA        0                    NA                -0.0317073   -0.0938209   0.0304063
ki1017093b-PROVIDE   BANGLADESH   0                    NA                -0.0124197   -0.0394548   0.0146153


### Parameter: PAF


studyid              country      intervention_level   baseline_level      estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  ----------  ----------
ki1000108-IRC        INDIA        0                    NA                -0.4642857   -1.702846   0.2067131
ki1017093b-PROVIDE   BANGLADESH   0                    NA                -0.3895282   -1.532480   0.2375898
