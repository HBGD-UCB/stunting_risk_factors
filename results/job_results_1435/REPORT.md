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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A             n    nA   nAY0   nAY1
-------------------------  -----------------------------  --------  -----  ----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     <20         247    32     31      1
ki0047075b-MAL-ED          BANGLADESH                     [20-25)     247    83     80      3
ki0047075b-MAL-ED          BANGLADESH                     [25-30)     247    90     86      4
ki0047075b-MAL-ED          BANGLADESH                     >=30        247    42     42      0
ki0047075b-MAL-ED          BRAZIL                         <20         223    43     38      5
ki0047075b-MAL-ED          BRAZIL                         [20-25)     223    69     64      5
ki0047075b-MAL-ED          BRAZIL                         [25-30)     223    61     56      5
ki0047075b-MAL-ED          BRAZIL                         >=30        223    50     47      3
ki0047075b-MAL-ED          INDIA                          <20         244    34     29      5
ki0047075b-MAL-ED          INDIA                          [20-25)     244   106    101      5
ki0047075b-MAL-ED          INDIA                          [25-30)     244    83     82      1
ki0047075b-MAL-ED          INDIA                          >=30        244    21     20      1
ki0047075b-MAL-ED          NEPAL                          <20         238     4      3      1
ki0047075b-MAL-ED          NEPAL                          [20-25)     238    60     57      3
ki0047075b-MAL-ED          NEPAL                          [25-30)     238   128    122      6
ki0047075b-MAL-ED          NEPAL                          >=30        238    46     45      1
ki0047075b-MAL-ED          PERU                           <20         284    78     72      6
ki0047075b-MAL-ED          PERU                           [20-25)     284    81     78      3
ki0047075b-MAL-ED          PERU                           [25-30)     284    61     54      7
ki0047075b-MAL-ED          PERU                           >=30        284    64     61      3
ki0047075b-MAL-ED          SOUTH AFRICA                   <20         302    47     45      2
ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)     302    96     89      7
ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)     302    55     51      4
ki0047075b-MAL-ED          SOUTH AFRICA                   >=30        302   104     98      6
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20         253    16     16      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)     253    65     65      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     253    68     68      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30        253   104    103      1
ki1000108-CMC-V-BCS-2002   INDIA                          <20         370    34     29      5
ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)     370   186    177      9
ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)     370   107    104      3
ki1000108-CMC-V-BCS-2002   INDIA                          >=30        370    43     43      0
ki1000108-IRC              INDIA                          <20         410    37     34      3
ki1000108-IRC              INDIA                          [20-25)     410   221    206     15
ki1000108-IRC              INDIA                          [25-30)     410   123    115      8
ki1000108-IRC              INDIA                          >=30        410    29     27      2
ki1000109-EE               PAKISTAN                       <20         174     0      0      0
ki1000109-EE               PAKISTAN                       [20-25)     174    10     10      0
ki1000109-EE               PAKISTAN                       [25-30)     174    59     59      0
ki1000109-EE               PAKISTAN                       >=30        174   105    105      0
ki1017093b-PROVIDE         BANGLADESH                     <20         690    84     82      2
ki1017093b-PROVIDE         BANGLADESH                     [20-25)     690   279    272      7
ki1017093b-PROVIDE         BANGLADESH                     [25-30)     690   207    200      7
ki1017093b-PROVIDE         BANGLADESH                     >=30        690   120    114      6
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20        2258   154    154      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)    2258   719    718      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)    2258   772    771      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30       2258   613    613      0
ki1101329-Keneba           GAMBIA                         <20        2448   348    326     22
ki1101329-Keneba           GAMBIA                         [20-25)    2448   629    601     28
ki1101329-Keneba           GAMBIA                         [25-30)    2448   548    539      9
ki1101329-Keneba           GAMBIA                         >=30       2448   923    903     20
ki1113344-GMS-Nepal        NEPAL                          <20         594   121    115      6
ki1113344-GMS-Nepal        NEPAL                          [20-25)     594   207    202      5
ki1113344-GMS-Nepal        NEPAL                          [25-30)     594   177    174      3
ki1113344-GMS-Nepal        NEPAL                          >=30        594    89     88      1


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/dffc39b3-ee4e-4f35-bc26-d1499364d08b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 1 rows containing missing values (geom_errorbar).
```

![](/tmp/dffc39b3-ee4e-4f35-bc26-d1499364d08b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/dffc39b3-ee4e-4f35-bc26-d1499364d08b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dffc39b3-ee4e-4f35-bc26-d1499364d08b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    <20                  NA                0.0632184   0.0376450   0.0887918
ki1101329-Keneba   GAMBIA    [20-25)              NA                0.0445151   0.0283947   0.0606356
ki1101329-Keneba   GAMBIA    [25-30)              NA                0.0164234   0.0057799   0.0270668
ki1101329-Keneba   GAMBIA    >=30                 NA                0.0216685   0.0122736   0.0310634


### Parameter: E(Y)


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    NA                   NA                0.0322712   0.0252693   0.0392731


### Parameter: RR


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    <20                  <20               1.0000000   1.0000000   1.0000000
ki1101329-Keneba   GAMBIA    [20-25)              <20               0.7041480   0.4091374   1.2118776
ki1101329-Keneba   GAMBIA    [25-30)              <20               0.2597877   0.1210142   0.5577003
ki1101329-Keneba   GAMBIA    >=30                 <20               0.3427558   0.1894332   0.6201742


### Parameter: PAR


studyid            country   intervention_level   baseline_level      estimate     ci_lower     ci_upper
-----------------  --------  -------------------  ---------------  -----------  -----------  -----------
ki1101329-Keneba   GAMBIA    <20                  NA                -0.0309471   -0.0536866   -0.0082077


### Parameter: PAF


studyid            country   intervention_level   baseline_level      estimate    ci_lower     ci_upper
-----------------  --------  -------------------  ---------------  -----------  ----------  -----------
ki1101329-Keneba   GAMBIA    <20                  NA                -0.9589699   -1.768248   -0.3862786
