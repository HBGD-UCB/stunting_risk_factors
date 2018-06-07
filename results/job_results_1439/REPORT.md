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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A        n     nA   nAY0   nAY1
-------------------------  -----------------------------  ---  -----  -----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     0      247    247    239      8
ki0047075b-MAL-ED          BANGLADESH                     1      247      0      0      0
ki0047075b-MAL-ED          BRAZIL                         0      223    192    177     15
ki0047075b-MAL-ED          BRAZIL                         1      223     31     28      3
ki0047075b-MAL-ED          INDIA                          0      244    244    232     12
ki0047075b-MAL-ED          INDIA                          1      244      0      0      0
ki0047075b-MAL-ED          NEPAL                          0      238    238    227     11
ki0047075b-MAL-ED          NEPAL                          1      238      0      0      0
ki0047075b-MAL-ED          PERU                           0      284    253    235     18
ki0047075b-MAL-ED          PERU                           1      284     31     30      1
ki0047075b-MAL-ED          SOUTH AFRICA                   0      302    167    159      8
ki0047075b-MAL-ED          SOUTH AFRICA                   1      302    135    124     11
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0      253    243    242      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      253     10     10      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     2256   2042   2040      2
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2256    214    214      0


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cf587694-f3a7-43d1-843a-ae60b9f71757/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 1 rows containing missing values (geom_errorbar).
```

![](/tmp/cf587694-f3a7-43d1-843a-ae60b9f71757/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/cf587694-f3a7-43d1-843a-ae60b9f71757/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cf587694-f3a7-43d1-843a-ae60b9f71757/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0479042   0.0154600   0.0803484
ki0047075b-MAL-ED   SOUTH AFRICA   1                    NA                0.0814815   0.0352567   0.1277063


### Parameter: E(Y)


studyid             country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED   SOUTH AFRICA   NA                   NA                0.0629139   0.0354838   0.090344


### Parameter: RR


studyid             country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED   SOUTH AFRICA   1                    0                 1.700926   0.7030659   4.115047


### Parameter: PAR


studyid             country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0150097   -0.0103058   0.0403252


### Parameter: PAF


studyid             country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.2385755   -0.2709954   0.5438478
