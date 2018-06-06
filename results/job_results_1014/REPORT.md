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
ki0047075b-MAL-ED          BANGLADESH                     0      241    241    230     11
ki0047075b-MAL-ED          BANGLADESH                     1      241      0      0      0
ki0047075b-MAL-ED          BRAZIL                         0      220    189    169     20
ki0047075b-MAL-ED          BRAZIL                         1      220     31     28      3
ki0047075b-MAL-ED          INDIA                          0      242    242    224     18
ki0047075b-MAL-ED          INDIA                          1      242      0      0      0
ki0047075b-MAL-ED          NEPAL                          0      237    237    222     15
ki0047075b-MAL-ED          NEPAL                          1      237      0      0      0
ki0047075b-MAL-ED          PERU                           0      276    245    217     28
ki0047075b-MAL-ED          PERU                           1      276     31     30      1
ki0047075b-MAL-ED          SOUTH AFRICA                   0      296    164    149     15
ki0047075b-MAL-ED          SOUTH AFRICA                   1      296    132    116     16
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0      248    238    236      2
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      248     10     10      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     2185   1978   1976      2
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2185    207    207      0


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
![](/tmp/2122c40c-3061-4fe7-b20f-21c1f10ebeac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 1 rows containing missing values (geom_errorbar).
```

![](/tmp/2122c40c-3061-4fe7-b20f-21c1f10ebeac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/2122c40c-3061-4fe7-b20f-21c1f10ebeac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2122c40c-3061-4fe7-b20f-21c1f10ebeac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0914634   0.0472702   0.1356567
ki0047075b-MAL-ED   SOUTH AFRICA   1                    NA                0.1212121   0.0654408   0.1769835


### Parameter: E(Y)


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   NA                   NA                0.1047297   0.1030423   0.1064171


### Parameter: RR


studyid             country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED   SOUTH AFRICA   1                    0                 1.325252   0.6800389   2.582638


### Parameter: PAR


studyid             country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0132663   -0.0309591   0.0574918


### Parameter: PAF


studyid             country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.1266719   -0.4162381   0.4614592
