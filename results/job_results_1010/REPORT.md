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
ki0047075b-MAL-ED          BANGLADESH                     <20         241    32     31      1
ki0047075b-MAL-ED          BANGLADESH                     [20-25)     241    78     73      5
ki0047075b-MAL-ED          BANGLADESH                     [25-30)     241    89     84      5
ki0047075b-MAL-ED          BANGLADESH                     >=30        241    42     42      0
ki0047075b-MAL-ED          BRAZIL                         <20         220    42     37      5
ki0047075b-MAL-ED          BRAZIL                         [20-25)     220    69     62      7
ki0047075b-MAL-ED          BRAZIL                         [25-30)     220    59     52      7
ki0047075b-MAL-ED          BRAZIL                         >=30        220    50     46      4
ki0047075b-MAL-ED          INDIA                          <20         242    34     28      6
ki0047075b-MAL-ED          INDIA                          [20-25)     242   104     97      7
ki0047075b-MAL-ED          INDIA                          [25-30)     242    83     80      3
ki0047075b-MAL-ED          INDIA                          >=30        242    21     19      2
ki0047075b-MAL-ED          NEPAL                          <20         237     4      3      1
ki0047075b-MAL-ED          NEPAL                          [20-25)     237    60     57      3
ki0047075b-MAL-ED          NEPAL                          [25-30)     237   127    119      8
ki0047075b-MAL-ED          NEPAL                          >=30        237    46     43      3
ki0047075b-MAL-ED          PERU                           <20         276    77     67     10
ki0047075b-MAL-ED          PERU                           [20-25)     276    79     73      6
ki0047075b-MAL-ED          PERU                           [25-30)     276    60     52      8
ki0047075b-MAL-ED          PERU                           >=30        276    60     55      5
ki0047075b-MAL-ED          SOUTH AFRICA                   <20         296    47     44      3
ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)     296    94     85      9
ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)     296    53     46      7
ki0047075b-MAL-ED          SOUTH AFRICA                   >=30        296   102     90     12
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20         248    15     15      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)     248    62     61      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     248    68     68      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30        248   103    102      1
ki1000108-CMC-V-BCS-2002   INDIA                          <20         370    34     29      5
ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)     370   186    174     12
ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)     370   107    103      4
ki1000108-CMC-V-BCS-2002   INDIA                          >=30        370    43     41      2
ki1000108-IRC              INDIA                          <20         410    37     32      5
ki1000108-IRC              INDIA                          [20-25)     410   221    199     22
ki1000108-IRC              INDIA                          [25-30)     410   123    109     14
ki1000108-IRC              INDIA                          >=30        410    29     26      3
ki1000109-EE               PAKISTAN                       <20         123     0      0      0
ki1000109-EE               PAKISTAN                       [20-25)     123     7      7      0
ki1000109-EE               PAKISTAN                       [25-30)     123    42     42      0
ki1000109-EE               PAKISTAN                       >=30        123    74     74      0
ki1017093b-PROVIDE         BANGLADESH                     <20         686    84     79      5
ki1017093b-PROVIDE         BANGLADESH                     [20-25)     686   275    267      8
ki1017093b-PROVIDE         BANGLADESH                     [25-30)     686   207    198      9
ki1017093b-PROVIDE         BANGLADESH                     >=30        686   120    113      7
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20        2188   149    149      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)    2188   692    691      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)    2188   750    749      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30       2188   597    597      0
ki1101329-Keneba           GAMBIA                         <20        2411   341    313     28
ki1101329-Keneba           GAMBIA                         [20-25)    2411   617    562     55
ki1101329-Keneba           GAMBIA                         [25-30)    2411   538    506     32
ki1101329-Keneba           GAMBIA                         >=30       2411   915    863     52
ki1113344-GMS-Nepal        NEPAL                          <20         593   120    112      8
ki1113344-GMS-Nepal        NEPAL                          [20-25)     593   207    200      7
ki1113344-GMS-Nepal        NEPAL                          [25-30)     593   177    174      3
ki1113344-GMS-Nepal        NEPAL                          >=30        593    89     88      1


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
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/4b95af49-f6e5-49eb-b9d1-406b6885d88b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 3 rows containing missing values (geom_errorbar).
```

![](/tmp/4b95af49-f6e5-49eb-b9d1-406b6885d88b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4b95af49-f6e5-49eb-b9d1-406b6885d88b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b95af49-f6e5-49eb-b9d1-406b6885d88b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED    PERU         <20                  NA                0.1298701   0.0546494   0.2050909
ki0047075b-MAL-ED    PERU         [20-25)              NA                0.0759494   0.0174255   0.1344732
ki0047075b-MAL-ED    PERU         [25-30)              NA                0.1333333   0.0471633   0.2195033
ki0047075b-MAL-ED    PERU         >=30                 NA                0.0833333   0.0132724   0.1533942
ki1017093b-PROVIDE   BANGLADESH   <20                  NA                0.0595238   0.0088895   0.1101581
ki1017093b-PROVIDE   BANGLADESH   [20-25)              NA                0.0290909   0.0092132   0.0489686
ki1017093b-PROVIDE   BANGLADESH   [25-30)              NA                0.0434783   0.0156771   0.0712794
ki1017093b-PROVIDE   BANGLADESH   >=30                 NA                0.0583333   0.0163689   0.1002978
ki1101329-Keneba     GAMBIA       <20                  NA                0.0821114   0.0529669   0.1112560
ki1101329-Keneba     GAMBIA       [20-25)              NA                0.0891410   0.0666525   0.1116295
ki1101329-Keneba     GAMBIA       [25-30)              NA                0.0594796   0.0394895   0.0794697
ki1101329-Keneba     GAMBIA       >=30                 NA                0.0568306   0.0418264   0.0718348


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED    PERU         NA                   NA                0.1050725   0.1019663   0.1081786
ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0422741   0.0413518   0.0431963
ki1101329-Keneba     GAMBIA       NA                   NA                0.0692659   0.0686950   0.0698368


### Parameter: RR


studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED    PERU         <20                  <20               1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED    PERU         [20-25)              <20               0.5848101   0.2230321   1.533424
ki0047075b-MAL-ED    PERU         [25-30)              <20               1.0266667   0.4310543   2.445271
ki0047075b-MAL-ED    PERU         >=30                 <20               0.6416667   0.2311664   1.781125
ki1017093b-PROVIDE   BANGLADESH   <20                  <20               1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE   BANGLADESH   [20-25)              <20               0.4887273   0.1641368   1.455215
ki1017093b-PROVIDE   BANGLADESH   [25-30)              <20               0.7304348   0.2520074   2.117140
ki1017093b-PROVIDE   BANGLADESH   >=30                 <20               0.9800000   0.3216581   2.985779
ki1101329-Keneba     GAMBIA       <20                  <20               1.0000000   1.0000000   1.000000
ki1101329-Keneba     GAMBIA       [20-25)              <20               1.0856101   0.7023526   1.678002
ki1101329-Keneba     GAMBIA       [25-30)              <20               0.7243760   0.4443008   1.181003
ki1101329-Keneba     GAMBIA       >=30                 <20               0.6921155   0.4446947   1.077197


### Parameter: PAR


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED    PERU         <20                  NA                -0.0247977   -0.1000825   0.0504872
ki1017093b-PROVIDE   BANGLADESH   <20                  NA                -0.0172498   -0.0678924   0.0333929
ki1101329-Keneba     GAMBIA       <20                  NA                -0.0128456   -0.0419957   0.0163046


### Parameter: PAF


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED    PERU         <20                  NA                -0.2360054   -1.2074507   0.3079305
ki1017093b-PROVIDE   BANGLADESH   <20                  NA                -0.4080460   -2.2974129   0.3987427
ki1101329-Keneba     GAMBIA       <20                  NA                -0.1854531   -0.6907296   0.1688209
