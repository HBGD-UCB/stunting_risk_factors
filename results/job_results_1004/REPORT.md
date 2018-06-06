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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A               n    nA   nAY0   nAY1
-------------------------  -----------------------------  ----------  -----  ----  -----  -----
ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     348   145    139      6
ki1000108-CMC-V-BCS-2002   INDIA                          <259          348    47     42      5
ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     348    75     70      5
ki1000108-CMC-V-BCS-2002   INDIA                          >=287         348    81     75      6
ki1000108-IRC              INDIA                          [273-287)     390   165    149     16
ki1000108-IRC              INDIA                          <259          390    40     36      4
ki1000108-IRC              INDIA                          [259-273)     390    92     83      9
ki1000108-IRC              INDIA                          >=287         390    93     80     13
ki1000109-EE               PAKISTAN                       [273-287)     124    11     11      0
ki1000109-EE               PAKISTAN                       <259          124    70     70      0
ki1000109-EE               PAKISTAN                       [259-273)     124    42     42      0
ki1000109-EE               PAKISTAN                       >=287         124     1      1      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)    2074   823    823      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259         2074   280    279      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)    2074   431    431      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287        2074   540    540      0
ki1101329-Keneba           GAMBIA                         [273-287)    1600   636    613     23
ki1101329-Keneba           GAMBIA                         <259         1600   165    149     16
ki1101329-Keneba           GAMBIA                         [259-273)    1600   617    572     45
ki1101329-Keneba           GAMBIA                         >=287        1600   182    172     10
ki1113344-GMS-Nepal        NEPAL                          [273-287)     593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          <259          593     1      0      1
ki1113344-GMS-Nepal        NEPAL                          [259-273)     593   588    570     18
ki1113344-GMS-Nepal        NEPAL                          >=287         593     4      4      0


The following strata were considered:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
![](/tmp/25a6d401-e8ba-4f39-b2b4-0ce23b281399/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 2 rows containing missing values (geom_errorbar).
```

![](/tmp/25a6d401-e8ba-4f39-b2b4-0ce23b281399/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/25a6d401-e8ba-4f39-b2b4-0ce23b281399/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/25a6d401-e8ba-4f39-b2b4-0ce23b281399/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA     [273-287)            NA                0.0413793   0.0089152   0.0738435
ki1000108-CMC-V-BCS-2002   INDIA     <259                 NA                0.1063830   0.0181084   0.1946576
ki1000108-CMC-V-BCS-2002   INDIA     [259-273)            NA                0.0666667   0.0101320   0.1232014
ki1000108-CMC-V-BCS-2002   INDIA     >=287                NA                0.0740741   0.0169589   0.1311893
ki1101329-Keneba           GAMBIA    [273-287)            NA                0.0361635   0.0216493   0.0506777
ki1101329-Keneba           GAMBIA    <259                 NA                0.0969697   0.0518038   0.1421356
ki1101329-Keneba           GAMBIA    [259-273)            NA                0.0729335   0.0524096   0.0934575
ki1101329-Keneba           GAMBIA    >=287                NA                0.0549451   0.0218288   0.0880613


### Parameter: E(Y)


studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA     NA                   NA                0.0632184   0.0609124   0.0655244
ki1101329-Keneba           GAMBIA    NA                   NA                0.0587500   0.0577305   0.0597695


### Parameter: RR


studyid                    country   intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------------  --------  -------------------  ---------------  ---------  ----------  ---------
ki1000108-CMC-V-BCS-2002   INDIA     [273-287)            [273-287)         1.000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA     <259                 [273-287)         2.570922   0.8206256   8.054390
ki1000108-CMC-V-BCS-2002   INDIA     [259-273)            [273-287)         1.611111   0.5074537   5.115105
ki1000108-CMC-V-BCS-2002   INDIA     >=287                [273-287)         1.790123   0.5958681   5.377938
ki1101329-Keneba           GAMBIA    [273-287)            [273-287)         1.000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA    <259                 [273-287)         2.681423   1.4499217   4.958908
ki1101329-Keneba           GAMBIA    [259-273)            [273-287)         2.016771   1.2353132   3.292579
ki1101329-Keneba           GAMBIA    >=287                [273-287)         1.519350   0.7365081   3.134283


### Parameter: PAR


studyid                    country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA     [273-287)            NA                0.0218391   -0.0107069   0.0543850
ki1101329-Keneba           GAMBIA    [273-287)            NA                0.0225865    0.0080365   0.0371364


### Parameter: PAF


studyid                    country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA     [273-287)            NA                0.3454545   -0.4356009   0.7015676
ki1101329-Keneba           GAMBIA    [273-287)            NA                0.3844507    0.0801243   0.5880955
