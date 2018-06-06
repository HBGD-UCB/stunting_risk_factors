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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A        n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ---  -----  -----  -----  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0       90     90     87      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1       90      0      0      0
Birth       ki1000108-IRC              INDIA                          0      388    381    365     16
Birth       ki1000108-IRC              INDIA                          1      388      7      7      0
Birth       ki1000109-EE               PAKISTAN                       0        2      2      2      0
Birth       ki1000109-EE               PAKISTAN                       1        2      0      0      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0       27     22     21      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1       27      5      5      0
Birth       ki1135781-COHORTS          INDIA                          0     4694   2938   2855     83
Birth       ki1135781-COHORTS          INDIA                          1     4694   1756   1702     54
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0      359    352    319     33
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      359      7      7      0
3 months    ki1000108-IRC              INDIA                          0      407    399    363     36
3 months    ki1000108-IRC              INDIA                          1      407      8      8      0
3 months    ki1000109-EE               PAKISTAN                       0      374    252    166     86
3 months    ki1000109-EE               PAKISTAN                       1      374    122     86     36
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          0       97     24     21      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1       97     73     63     10
3 months    ki1017093b-PROVIDE         BANGLADESH                     0      645    482    477      5
3 months    ki1017093b-PROVIDE         BANGLADESH                     1      645    163    158      5
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0      728    565    542     23
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      728    163    153     10
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     2174   2136   2115     21
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2174     38     37      1
3 months    ki1113344-GMS-Nepal        NEPAL                          0      534    132    130      2
3 months    ki1113344-GMS-Nepal        NEPAL                          1      534    402    383     19
3 months    ki1135781-COHORTS          INDIA                          0     4848   2982   2885     97
3 months    ki1135781-COHORTS          INDIA                          1     4848   1866   1785     81
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0      366    358    318     40
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      366      8      7      1
6 months    ki1000108-IRC              INDIA                          0      407    399    370     29
6 months    ki1000108-IRC              INDIA                          1      407      8      8      0
6 months    ki1000109-EE               PAKISTAN                       0      370    248    186     62
6 months    ki1000109-EE               PAKISTAN                       1      370    122     90     32
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0       96     24     23      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1       96     72     58     14
6 months    ki1017093b-PROVIDE         BANGLADESH                     0      583    433    426      7
6 months    ki1017093b-PROVIDE         BANGLADESH                     1      583    150    143      7
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0      715    554    535     19
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      715    161    157      4
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     1921   1889   1873     16
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     1921     32     30      2
6 months    ki1113344-GMS-Nepal        NEPAL                          0      527    129    127      2
6 months    ki1113344-GMS-Nepal        NEPAL                          1      527    398    383     15
6 months    ki1135781-COHORTS          INDIA                          0     4699   2900   2788    112
6 months    ki1135781-COHORTS          INDIA                          1     4699   1799   1680    119
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0      363    355    310     45
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      363      8      7      1
9 months    ki1000108-IRC              INDIA                          0      407    399    365     34
9 months    ki1000108-IRC              INDIA                          1      407      8      8      0
9 months    ki1000109-EE               PAKISTAN                       0      364    246    188     58
9 months    ki1000109-EE               PAKISTAN                       1      364    118     82     36
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          0       85     21     17      4
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1       85     64     48     16
9 months    ki1017093b-PROVIDE         BANGLADESH                     0      605    450    435     15
9 months    ki1017093b-PROVIDE         BANGLADESH                     1      605    155    145     10
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0      706    552    530     22
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      706    154    148      6
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     1692   1666   1636     30
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     1692     26     23      3
9 months    ki1113344-GMS-Nepal        NEPAL                          0      515    124    119      5
9 months    ki1113344-GMS-Nepal        NEPAL                          1      515    391    361     30
9 months    ki1135781-COHORTS          INDIA                          0     4092   2519   2365    154
9 months    ki1135781-COHORTS          INDIA                          1     4092   1573   1380    193
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0      365    357    275     82
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      365      8      8      0
12 months   ki1000108-IRC              INDIA                          0      406    398    364     34
12 months   ki1000108-IRC              INDIA                          1      406      8      8      0
12 months   ki1000109-EE               PAKISTAN                       0      355    242    166     76
12 months   ki1000109-EE               PAKISTAN                       1      355    113     70     43
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          0       92     24     15      9
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1       92     68     36     32
12 months   ki1017093b-PROVIDE         BANGLADESH                     0      600    448    426     22
12 months   ki1017093b-PROVIDE         BANGLADESH                     1      600    152    138     14
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0      706    548    518     30
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      706    158    147     11
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     1371   1354   1324     30
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     1371     17     15      2
12 months   ki1113344-GMS-Nepal        NEPAL                          0      521    126    117      9
12 months   ki1113344-GMS-Nepal        NEPAL                          1      521    395    357     38
12 months   ki1135781-COHORTS          INDIA                          0     3645   2268   2071    197
12 months   ki1135781-COHORTS          INDIA                          1     3645   1377   1121    256
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0      366    358    252    106
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      366      8      7      1
18 months   ki1000108-IRC              INDIA                          0      405    397    365     32
18 months   ki1000108-IRC              INDIA                          1      405      8      6      2
18 months   ki1000109-EE               PAKISTAN                       0      348    236    128    108
18 months   ki1000109-EE               PAKISTAN                       1      348    112     50     62
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0       84     23     15      8
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1       84     61     32     29
18 months   ki1017093b-PROVIDE         BANGLADESH                     0      552    413    376     37
18 months   ki1017093b-PROVIDE         BANGLADESH                     1      552    139    119     20
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0      634    487    457     30
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      634    147    135     12
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      927    918    881     37
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      927      9      8      1
18 months   ki1113344-GMS-Nepal        NEPAL                          0      512    129    109     20
18 months   ki1113344-GMS-Nepal        NEPAL                          1      512    383    326     57
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0      369    361    241    120
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      369      8      6      2
24 months   ki1000108-IRC              INDIA                          0      409    401    362     39
24 months   ki1000108-IRC              INDIA                          1      409      8      6      2
24 months   ki1017093b-PROVIDE         BANGLADESH                     0      577    432    398     34
24 months   ki1017093b-PROVIDE         BANGLADESH                     1      577    145    130     15
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0      514    391    365     26
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      514    123    114      9
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        6      6      5      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        6      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          0      467    120    107     13
24 months   ki1113344-GMS-Nepal        NEPAL                          1      467    347    313     34
24 months   ki1135781-COHORTS          INDIA                          0     3559   2233   1912    321
24 months   ki1135781-COHORTS          INDIA                          1     3559   1326    904    422


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c3732dd8-d4ab-4fa9-8954-5478359d5537/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 28 rows containing missing values (geom_errorbar).
```

![](/tmp/c3732dd8-d4ab-4fa9-8954-5478359d5537/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/c3732dd8-d4ab-4fa9-8954-5478359d5537/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c3732dd8-d4ab-4fa9-8954-5478359d5537/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.0282505   0.0222587   0.0342423
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.0307517   0.0226759   0.0388275
3 months    ki1000109-EE               PAKISTAN     0                    NA                0.3412698   0.2826517   0.3998880
3 months    ki1000109-EE               PAKISTAN     1                    NA                0.2950820   0.2140437   0.3761202
3 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0103734   0.0013212   0.0194257
3 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0306748   0.0041827   0.0571670
3 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0407080   0.0244023   0.0570136
3 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0613497   0.0244850   0.0982144
3 months    ki1135781-COHORTS          INDIA        0                    NA                0.0325285   0.0261607   0.0388963
3 months    ki1135781-COHORTS          INDIA        1                    NA                0.0434084   0.0341617   0.0526551
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.2500000   0.1960352   0.3039648
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.2622951   0.1841337   0.3404565
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0161663   0.0042773   0.0280552
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0466667   0.0128834   0.0804499
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0386207   0.0316069   0.0456345
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0661479   0.0546617   0.0776340
9 months    ki1000109-EE               PAKISTAN     0                    NA                0.2357724   0.1826551   0.2888896
9 months    ki1000109-EE               PAKISTAN     1                    NA                0.3050847   0.2218929   0.3882766
9 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0333333   0.0167345   0.0499322
9 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0645161   0.0258088   0.1032235
9 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0398551   0.0235247   0.0561855
9 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0389610   0.0083780   0.0695441
9 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0403226   0.0056652   0.0749800
9 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0767263   0.0503193   0.1031334
9 months    ki1135781-COHORTS          INDIA        0                    NA                0.0611354   0.0517784   0.0704923
9 months    ki1135781-COHORTS          INDIA        1                    NA                0.1226955   0.1064801   0.1389108
12 months   ki1000109-EE               PAKISTAN     0                    NA                0.3140496   0.2554899   0.3726092
12 months   ki1000109-EE               PAKISTAN     1                    NA                0.3805310   0.2908859   0.4701760
12 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3750000   0.1802528   0.5697472
12 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.4705882   0.3513037   0.5898728
12 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0491071   0.0290804   0.0691338
12 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0921053   0.0460957   0.1381149
12 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0547445   0.0356851   0.0738040
12 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0696203   0.0299079   0.1093326
12 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0714286   0.0264171   0.1164401
12 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0962025   0.0670957   0.1253094
12 months   ki1135781-COHORTS          INDIA        0                    NA                0.0868607   0.0752685   0.0984529
12 months   ki1135781-COHORTS          INDIA        1                    NA                0.1859114   0.1653606   0.2064622
18 months   ki1000109-EE               PAKISTAN     0                    NA                0.4576271   0.3939737   0.5212806
18 months   ki1000109-EE               PAKISTAN     1                    NA                0.5535714   0.4613723   0.6457706
18 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3478261   0.1520104   0.5436418
18 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.4754098   0.3493351   0.6014845
18 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0895884   0.0620200   0.1171568
18 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1438849   0.0854855   0.2022843
18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0616016   0.0402311   0.0829722
18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0816327   0.0373359   0.1259295
18 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1550388   0.0925191   0.2175584
18 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1488251   0.1131454   0.1845047
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0787037   0.0532893   0.1041181
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1034483   0.0538359   0.1530607
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0664962   0.0417767   0.0912156
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0731707   0.0271040   0.1192374
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1083333   0.0526654   0.1640013
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0979827   0.0666693   0.1292962
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.1437528   0.1291991   0.1583065
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.3182504   0.2931758   0.3433250


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.0291862   0.0291516   0.0292208
3 months    ki1000109-EE               PAKISTAN     NA                   NA                0.3262032   0.3240057   0.3284007
3 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0155039   0.0148225   0.0161853
3 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0453297   0.0447042   0.0459552
3 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0367162   0.0365671   0.0368652
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.2540541   0.2534643   0.2546438
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0240137   0.0229305   0.0250969
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0491594   0.0487768   0.0495420
9 months    ki1000109-EE               PAKISTAN     NA                   NA                0.2582418   0.2549043   0.2615792
9 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0413223   0.0402367   0.0424079
9 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0396601   0.0396328   0.0396873
9 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0679612   0.0666156   0.0693067
9 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0847996   0.0838820   0.0857173
12 months   ki1000109-EE               PAKISTAN     NA                   NA                0.3352113   0.3319853   0.3384373
12 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4456522   0.4370283   0.4542761
12 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0600000   0.0585024   0.0614976
12 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0580737   0.0576160   0.0585313
12 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0902111   0.0892994   0.0911229
12 months   ki1135781-COHORTS          INDIA        NA                   NA                0.1242798   0.1227206   0.1258391
18 months   ki1000109-EE               PAKISTAN     NA                   NA                0.4885057   0.4837896   0.4932219
18 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4404762   0.4282370   0.4527154
18 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1032609   0.1012930   0.1052287
18 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0662461   0.0655875   0.0669046
18 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1503906   0.1501567   0.1506245
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0849220   0.0840455   0.0857985
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0680934   0.0678470   0.0683398
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1006424   0.1002318   0.1010530
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.2087665   0.2059943   0.2115387


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0885364   0.7766770    1.525617
3 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
3 months    ki1000109-EE               PAKISTAN     1                    0                 0.8646588   0.6254143    1.195423
3 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
3 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.9570552   0.8662675   10.094083
3 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.5070686   0.7319858    3.102869
3 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          INDIA        1                    0                 1.3344714   0.9992287    1.782189
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.0491803   0.7261859    1.515837
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.8866667   1.0285604    8.101463
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 1.7127571   1.3322122    2.202004
9 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
9 months    ki1000109-EE               PAKISTAN     1                    0                 1.2939801   0.9084734    1.843075
9 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
9 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.9354839   0.8875061    4.220926
9 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.9775679   0.4032655    2.369752
9 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000    1.000000
9 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.9028131   0.7538832    4.802730
9 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          INDIA        1                    0                 2.0069476   1.6395124    2.456730
12 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
12 months   ki1000109-EE               PAKISTAN     1                    0                 1.2116907   0.8972435    1.636339
12 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000    1.000000
12 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.2549020   0.7041050    2.236569
12 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
12 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.8755981   0.9841916    3.574373
12 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.2717300   0.6518834    2.480961
12 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000    1.000000
12 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.3468354   0.6694669    2.709567
12 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          INDIA        1                    0                 2.1403404   1.7997946    2.545322
18 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
18 months   ki1000109-EE               PAKISTAN     1                    0                 1.2096561   0.9736923    1.502803
18 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000    1.000000
18 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.3668033   0.7335723    2.546649
18 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.6060665   0.9650715    2.672807
18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.3251701   0.6959259    2.523366
18 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000    1.000000
18 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.9599217   0.6004721    1.534542
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3144016   0.7372825    2.343270
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.1003752   0.5296782    2.285965
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.9044558   0.4938359    1.656502
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 2.2138726   1.9473253    2.516904


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0009357   -0.0050562   0.0069276
3 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0150666   -0.0737259   0.0435927
3 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0051304   -0.0039475   0.0142083
3 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0046217   -0.0116959   0.0209393
3 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0041877   -0.0021819   0.0105572
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0040541   -0.0499140   0.0580221
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0078474   -0.0040907   0.0197856
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0105387    0.0035145   0.0175629
9 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0224694   -0.0307526   0.0756914
9 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0079890   -0.0086454   0.0246233
9 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0001950   -0.0165254   0.0161354
9 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0276386   -0.0070449   0.0623221
9 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0236642    0.0142624   0.0330661
12 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0211617   -0.0374868   0.0798101
12 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0706522   -0.1242859   0.2655903
12 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0108929   -0.0091898   0.0309755
12 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0033291   -0.0157358   0.0223941
12 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0187826   -0.0262382   0.0638033
12 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0374192    0.0257226   0.0491158
18 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0308786   -0.0329493   0.0947065
18 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0926501   -0.1035477   0.2888480
18 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0136725   -0.0139660   0.0413110
18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0046444   -0.0167363   0.0260251
18 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0046481   -0.0671682   0.0578719
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0062183   -0.0192112   0.0316478
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0015972   -0.0231235   0.0263179
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0076909   -0.0633604   0.0479785
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0650137    0.0501984   0.0798290


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0320591   -0.1966369   0.2170478
3 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0461879   -0.2424059   0.1190407
3 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.3309129   -0.6030470   0.7207333
3 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1019576   -0.3407790   0.3984989
3 months    ki1135781-COHORTS          INDIA        0                    NA                 0.1140551   -0.0775635   0.2715990
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0159574   -0.2211408   0.2070204
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.3267898   -0.4064935   0.6777718
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.2143783    0.0577702   0.3449565
9 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0870092   -0.1441150   0.2714436
9 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1933333   -0.3281861   0.5100753
9 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0049172   -0.5138408   0.3329163
9 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.4066820   -0.4017297   0.7488629
9 months    ki1135781-COHORTS          INDIA        0                    NA                 0.2790607    0.1595057   0.3816098
12 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0631294   -0.1291943   0.2226966
12 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.1585366   -0.4149209   0.4995758
12 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1815476   -0.2315081   0.4560618
12 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0573260   -0.3353684   0.3345400
12 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.2082067   -0.4870397   0.5783995
12 months   ki1135781-COHORTS          INDIA        0                    NA                 0.3010880    0.2008323   0.3887666
18 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0632104   -0.0769496   0.1851292
18 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.2103408   -0.3874974   0.5505853
18 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1324073   -0.1809032   0.3625920
18 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0701085   -0.3157023   0.3427859
18 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0309071   -0.5429460   0.3112077
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0732237   -0.2802232   0.3290902
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0234563   -0.4162668   0.3266541
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0764184   -0.7995084   0.3561149
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.3114183    0.2373936   0.3782576
