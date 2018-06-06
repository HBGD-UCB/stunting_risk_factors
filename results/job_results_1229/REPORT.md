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
ki1017093b-PROVIDE         BANGLADESH                     1      690    266    257      9
ki1017093b-PROVIDE         BANGLADESH                     2      690    242    233      9
ki1017093b-PROVIDE         BANGLADESH                     3+     690    182    178      4
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2245    791    790      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     2245    742    741      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    2245    712    712      0
ki1101329-Keneba           GAMBIA                         1     1889    223    203     20
ki1101329-Keneba           GAMBIA                         2     1889    198    186     12
ki1101329-Keneba           GAMBIA                         3+    1889   1468   1438     30
ki1113344-GMS-Nepal        NEPAL                          1      594    168    158     10
ki1113344-GMS-Nepal        NEPAL                          2      594    152    151      1
ki1113344-GMS-Nepal        NEPAL                          3+     594    274    270      4


The following strata were considered:

* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/bd84da84-819f-439c-bda6-7f3991feb870/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 1 rows containing missing values (geom_errorbar).
```

![](/tmp/bd84da84-819f-439c-bda6-7f3991feb870/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/bd84da84-819f-439c-bda6-7f3991feb870/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bd84da84-819f-439c-bda6-7f3991feb870/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    1                    NA                0.0896861   0.0521742   0.1271980
ki1101329-Keneba   GAMBIA    2                    NA                0.0606061   0.0273621   0.0938500
ki1101329-Keneba   GAMBIA    3+                   NA                0.0204360   0.0131964   0.0276756


### Parameter: E(Y)


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    NA                   NA                0.0328216   0.0247849   0.0408583


### Parameter: RR


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    1                    1                 1.0000000   1.0000000   1.0000000
ki1101329-Keneba   GAMBIA    2                    1                 0.6757576   0.3390129   1.3469939
ki1101329-Keneba   GAMBIA    3+                   1                 0.2278610   0.1317115   0.3941998


### Parameter: PAR


studyid            country   intervention_level   baseline_level      estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  -----------  ----------  ----------
ki1101329-Keneba   GAMBIA    1                    NA                -0.0568645   -0.090621   -0.023108


### Parameter: PAF


studyid            country   intervention_level   baseline_level     estimate    ci_lower     ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  -----------
ki1101329-Keneba   GAMBIA    1                    NA                -1.732533   -2.875057   -0.9268714
