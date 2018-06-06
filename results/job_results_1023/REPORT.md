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

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A        n     nA   nAY0   nAY1
-------------------------  -----------------------------  ---  -----  -----  -----  -----
ki1017093b-PROVIDE         BANGLADESH                     1      686    263    252     11
ki1017093b-PROVIDE         BANGLADESH                     2      686    241    229     12
ki1017093b-PROVIDE         BANGLADESH                     3+     686    182    176      6
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2174    767    766      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     2174    716    715      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    2174    691    691      0
ki1101329-Keneba           GAMBIA                         1     1862    216    188     28
ki1101329-Keneba           GAMBIA                         2     1862    195    175     20
ki1101329-Keneba           GAMBIA                         3+    1862   1451   1370     81
ki1113344-GMS-Nepal        NEPAL                          1      593    167    155     12
ki1113344-GMS-Nepal        NEPAL                          2      593    152    149      3
ki1113344-GMS-Nepal        NEPAL                          3+     593    274    270      4


The following strata were considered:

* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7badebdb-75a5-4609-aab7-45826826f853/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 2 rows containing missing values (geom_errorbar).
```

![](/tmp/7badebdb-75a5-4609-aab7-45826826f853/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/7badebdb-75a5-4609-aab7-45826826f853/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7badebdb-75a5-4609-aab7-45826826f853/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   1                    NA                0.0418251   0.0176133   0.0660369
ki1017093b-PROVIDE   BANGLADESH   2                    NA                0.0497925   0.0223106   0.0772745
ki1017093b-PROVIDE   BANGLADESH   3+                   NA                0.0329670   0.0070079   0.0589261
ki1101329-Keneba     GAMBIA       1                    NA                0.1296296   0.0848230   0.1744362
ki1101329-Keneba     GAMBIA       2                    NA                0.1025641   0.0599703   0.1451579
ki1101329-Keneba     GAMBIA       3+                   NA                0.0558236   0.0440077   0.0676395


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0422741   0.0417835   0.0427646
ki1101329-Keneba     GAMBIA       NA                   NA                0.0692803   0.0680959   0.0704648


### Parameter: RR


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
ki1017093b-PROVIDE   BANGLADESH   2                    1                 1.1904942   0.5350132   2.6490491
ki1017093b-PROVIDE   BANGLADESH   3+                   1                 0.7882118   0.2966198   2.0945257
ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
ki1101329-Keneba     GAMBIA       2                    1                 0.7912088   0.4609303   1.3581475
ki1101329-Keneba     GAMBIA       3+                   1                 0.4306390   0.2871370   0.6458586


### Parameter: PAR


studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1017093b-PROVIDE   BANGLADESH   1                    NA                 0.0004490   -0.0237679    0.0246658
ki1101329-Keneba     GAMBIA       1                    NA                -0.0603493   -0.1051715   -0.0155270


### Parameter: PAF


studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1017093b-PROVIDE   BANGLADESH   1                    NA                 0.0106202   -0.7653033    0.4454933
ki1101329-Keneba     GAMBIA       1                    NA                -0.8710881   -1.6447953   -0.3237209
