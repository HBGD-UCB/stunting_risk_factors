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
ki1000108-CMC-V-BCS-2002   INDIA                          1      370    345    324     21
ki1000108-IRC              INDIA                          0      410     70     60     10
ki1000108-IRC              INDIA                          1      410    340    306     34
ki1017093b-PROVIDE         BANGLADESH                     0      686    157    150      7
ki1017093b-PROVIDE         BANGLADESH                     1      686    529    507     22
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     2175    196    196      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2175   1979   1977      2


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
![](/tmp/4a0d6122-f766-46cf-9294-79a0048ebb72/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 2 rows containing missing values (geom_errorbar).
```

![](/tmp/4a0d6122-f766-46cf-9294-79a0048ebb72/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4a0d6122-f766-46cf-9294-79a0048ebb72/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a0d6122-f766-46cf-9294-79a0048ebb72/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC        INDIA        0                    NA                0.1428571   0.0607829   0.2249314
ki1000108-IRC        INDIA        1                    NA                0.1000000   0.0680729   0.1319272
ki1017093b-PROVIDE   BANGLADESH   0                    NA                0.0445860   0.0122780   0.0768940
ki1017093b-PROVIDE   BANGLADESH   1                    NA                0.0415879   0.0245625   0.0586133


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC        INDIA        NA                   NA                0.1073171   0.1057542   0.1088799
ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0422741   0.0421797   0.0423684


### Parameter: RR


studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
ki1000108-IRC        INDIA        0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC        INDIA        1                    0                 0.7000000   0.3627841   1.350666
ki1017093b-PROVIDE   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE   BANGLADESH   1                    0                 0.9327572   0.4058063   2.143969


### Parameter: PAR


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-IRC        INDIA        0                    NA                -0.0355401   -0.1176292   0.0465491
ki1017093b-PROVIDE   BANGLADESH   0                    NA                -0.0023119   -0.0346201   0.0299962


### Parameter: PAF


studyid              country      intervention_level   baseline_level      estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  ----------  ----------
ki1000108-IRC        INDIA        0                    NA                -0.3311688   -1.364961   0.2507233
ki1017093b-PROVIDE   BANGLADESH   0                    NA                -0.0546892   -1.176835   0.4889968
