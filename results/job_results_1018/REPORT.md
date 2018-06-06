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

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid              country      A              n    nA   nAY0   nAY1
-------------------  -----------  ----------  ----  ----  -----  -----
ki1000108-IRC        INDIA        3 or less    410    58     51      7
ki1000108-IRC        INDIA        4-5          410   158    143     15
ki1000108-IRC        INDIA        6-7          410   107     94     13
ki1000108-IRC        INDIA        8+           410    87     78      9
ki1017093b-PROVIDE   BANGLADESH   3 or less    686   134    129      5
ki1017093b-PROVIDE   BANGLADESH   4-5          686   318    306     12
ki1017093b-PROVIDE   BANGLADESH   6-7          686   148    137     11
ki1017093b-PROVIDE   BANGLADESH   8+           686    86     85      1


The following strata were considered:

* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1017093b-PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b33bf995-637b-4023-9b19-38ed82cf6469/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 1 rows containing missing values (geom_errorbar).
```

![](/tmp/b33bf995-637b-4023-9b19-38ed82cf6469/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/b33bf995-637b-4023-9b19-38ed82cf6469/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b33bf995-637b-4023-9b19-38ed82cf6469/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC   INDIA     3 or less            NA                0.1206897   0.0367494   0.2046299
ki1000108-IRC   INDIA     4-5                  NA                0.0949367   0.0491746   0.1406989
ki1000108-IRC   INDIA     6-7                  NA                0.1214953   0.0595172   0.1834734
ki1000108-IRC   INDIA     8+                   NA                0.1034483   0.0393763   0.1675202


### Parameter: E(Y)


studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC   INDIA     NA                   NA                0.1073171   0.1061704   0.1084638


### Parameter: RR


studyid         country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
--------------  --------  -------------------  ---------------  ----------  ----------  ---------
ki1000108-IRC   INDIA     3 or less            3 or less         1.0000000   1.0000000   1.000000
ki1000108-IRC   INDIA     4-5                  3 or less         0.7866185   0.3374877   1.833455
ki1000108-IRC   INDIA     6-7                  3 or less         1.0066756   0.4249106   2.384962
ki1000108-IRC   INDIA     8+                   3 or less         0.8571429   0.3377463   2.175283


### Parameter: PAR


studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------  --------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-IRC   INDIA     3 or less            NA                -0.0133726   -0.0973207   0.0705755


### Parameter: PAF


studyid         country   intervention_level   baseline_level      estimate    ci_lower    ci_upper
--------------  --------  -------------------  ---------------  -----------  ----------  ----------
ki1000108-IRC   INDIA     3 or less            NA                -0.1246081   -1.254711   0.4390664
