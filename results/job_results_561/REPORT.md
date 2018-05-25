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
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.csv'
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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CMIN
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CMIN
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CMIN
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-ResPak
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CMIN
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000109-ResPak
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CMIN
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000109-ResPak
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CMIN
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CMIN
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CMIN
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000109-ResPak
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/b44b212b-a1ac-438c-a4da-a472263301a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b44b212b-a1ac-438c-a4da-a472263301a7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/b44b212b-a1ac-438c-a4da-a472263301a7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b44b212b-a1ac-438c-a4da-a472263301a7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A         n     nA   nAY0   nAY1
----------  -------------------------  ---  ------  -----  -----  -----
Birth       ki0047075b-MAL-ED          0      1499   1300   1300      0
Birth       ki0047075b-MAL-ED          1      1499    199    153     46
Birth       ki1000108-CMC-V-BCS-2002   0        90     74     74      0
Birth       ki1000108-CMC-V-BCS-2002   1        90     16     13      3
Birth       ki1000108-IRC              0       388    343    343      0
Birth       ki1000108-IRC              1       388     45     29     16
Birth       ki1000109-EE               0         2      1      1      0
Birth       ki1000109-EE               1         2      1      1      0
Birth       ki1000109-ResPak           0         7      5      5      0
Birth       ki1000109-ResPak           1         7      2      2      0
Birth       ki1000304b-SAS-FoodSuppl   0         0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   1         0      0      0      0
Birth       ki1017093-NIH-Birth        0        28     27     27      0
Birth       ki1017093-NIH-Birth        1        28      1      1      0
Birth       ki1017093c-NIH-Crypto      0        27     22     22      0
Birth       ki1017093c-NIH-Crypto      1        27      5      4      1
Birth       ki1066203-TanzaniaChild2   0         0      0      0      0
Birth       ki1066203-TanzaniaChild2   1         0      0      0      0
Birth       ki1101329-Keneba           0      1541   1459   1459      0
Birth       ki1101329-Keneba           1      1541     82     53     29
Birth       ki1112895-Guatemala BSC    0         0      0      0      0
Birth       ki1112895-Guatemala BSC    1         0      0      0      0
Birth       ki1113344-GMS-Nepal        0         0      0      0      0
Birth       ki1113344-GMS-Nepal        1         0      0      0      0
Birth       ki1114097-CMIN             0       138    127    127      0
Birth       ki1114097-CMIN             1       138     11      3      8
Birth       ki1114097-CONTENT          0         2      2      2      0
Birth       ki1114097-CONTENT          1         2      0      0      0
Birth       ki1126311-ZVITAMBO         0      3449   3089   3089      0
Birth       ki1126311-ZVITAMBO         1      3449    360    248    112
Birth       ki1135781-COHORTS          0     10097   9099   9099      0
Birth       ki1135781-COHORTS          1     10097    998    742    256
Birth       ki1148112-LCNI-5           0         0      0      0      0
Birth       ki1148112-LCNI-5           1         0      0      0      0
3 months    ki0047075b-MAL-ED          0      1427   1244   1233     11
3 months    ki0047075b-MAL-ED          1      1427    183    145     38
3 months    ki1000108-CMC-V-BCS-2002   0        96     81     78      3
3 months    ki1000108-CMC-V-BCS-2002   1        96     15      9      6
3 months    ki1000108-IRC              0       407    359    342     17
3 months    ki1000108-IRC              1       407     48     29     19
3 months    ki1000109-EE               0         9      6      6      0
3 months    ki1000109-EE               1         9      3      0      3
3 months    ki1000109-ResPak           0        83     65     50     15
3 months    ki1000109-ResPak           1        83     18     10      8
3 months    ki1000304b-SAS-FoodSuppl   0        96     58     58      0
3 months    ki1000304b-SAS-FoodSuppl   1        96     38     25     13
3 months    ki1017093-NIH-Birth        0       565    476    467      9
3 months    ki1017093-NIH-Birth        1       565     89     65     24
3 months    ki1017093c-NIH-Crypto      0        26     21     19      2
3 months    ki1017093c-NIH-Crypto      1        26      5      4      1
3 months    ki1066203-TanzaniaChild2   0         5      5      5      0
3 months    ki1066203-TanzaniaChild2   1         5      0      0      0
3 months    ki1101329-Keneba           0      2189   1981   1949     32
3 months    ki1101329-Keneba           1      2189    208    168     40
3 months    ki1112895-Guatemala BSC    0         6      4      4      0
3 months    ki1112895-Guatemala BSC    1         6      2      0      2
3 months    ki1113344-GMS-Nepal        0        51     41     41      0
3 months    ki1113344-GMS-Nepal        1        51     10      7      3
3 months    ki1114097-CMIN             0       329    300    298      2
3 months    ki1114097-CMIN             1       329     29     20      9
3 months    ki1114097-CONTENT          0        55     49     49      0
3 months    ki1114097-CONTENT          1        55      6      4      2
3 months    ki1126311-ZVITAMBO         0      2242   2009   1933     76
3 months    ki1126311-ZVITAMBO         1      2242    233    197     36
3 months    ki1135781-COHORTS          0     10285   9240   9121    119
3 months    ki1135781-COHORTS          1     10285   1045    796    249
3 months    ki1148112-LCNI-5           0         0      0      0      0
3 months    ki1148112-LCNI-5           1         0      0      0      0
6 months    ki0047075b-MAL-ED          0      1360   1189   1180      9
6 months    ki0047075b-MAL-ED          1      1360    171    143     28
6 months    ki1000108-CMC-V-BCS-2002   0        96     81     77      4
6 months    ki1000108-CMC-V-BCS-2002   1        96     15     14      1
6 months    ki1000108-IRC              0       407    361    343     18
6 months    ki1000108-IRC              1       407     46     35     11
6 months    ki1000109-EE               0         8      5      4      1
6 months    ki1000109-EE               1         8      3      1      2
6 months    ki1000109-ResPak           0        77     61     48     13
6 months    ki1000109-ResPak           1        77     16     11      5
6 months    ki1000304b-SAS-FoodSuppl   0        94     58     58      0
6 months    ki1000304b-SAS-FoodSuppl   1        94     36     22     14
6 months    ki1017093-NIH-Birth        0       533    448    433     15
6 months    ki1017093-NIH-Birth        1       533     85     65     20
6 months    ki1017093c-NIH-Crypto      0        27     22     22      0
6 months    ki1017093c-NIH-Crypto      1        27      5      5      0
6 months    ki1066203-TanzaniaChild2   0         5      5      4      1
6 months    ki1066203-TanzaniaChild2   1         5      0      0      0
6 months    ki1101329-Keneba           0      2088   1891   1851     40
6 months    ki1101329-Keneba           1      2088    197    167     30
6 months    ki1112895-Guatemala BSC    0       103     76     76      0
6 months    ki1112895-Guatemala BSC    1       103     27     17     10
6 months    ki1113344-GMS-Nepal        0        52     42     42      0
6 months    ki1113344-GMS-Nepal        1        52     10      7      3
6 months    ki1114097-CMIN             0       519    471    468      3
6 months    ki1114097-CMIN             1       519     48     44      4
6 months    ki1114097-CONTENT          0        55     49     49      0
6 months    ki1114097-CONTENT          1        55      6      3      3
6 months    ki1126311-ZVITAMBO         0      2030   1833   1781     52
6 months    ki1126311-ZVITAMBO         1      2030    197    180     17
6 months    ki1135781-COHORTS          0      9835   8833   8569    264
6 months    ki1135781-COHORTS          1      9835   1002    763    239
6 months    ki1148112-LCNI-5           0       411    258    258      0
6 months    ki1148112-LCNI-5           1       411    153    124     29
9 months    ki0047075b-MAL-ED          0      1314   1148   1126     22
9 months    ki0047075b-MAL-ED          1      1314    166    136     30
9 months    ki1000108-CMC-V-BCS-2002   0        97     82     76      6
9 months    ki1000108-CMC-V-BCS-2002   1        97     15     12      3
9 months    ki1000108-IRC              0       407    361    338     23
9 months    ki1000108-IRC              1       407     46     35     11
9 months    ki1000109-EE               0         8      5      4      1
9 months    ki1000109-EE               1         8      3      1      2
9 months    ki1000109-ResPak           0        67     55     45     10
9 months    ki1000109-ResPak           1        67     12      9      3
9 months    ki1000304b-SAS-FoodSuppl   0        84     51     47      4
9 months    ki1000304b-SAS-FoodSuppl   1        84     33     17     16
9 months    ki1017093-NIH-Birth        0       503    423    402     21
9 months    ki1017093-NIH-Birth        1       503     80     56     24
9 months    ki1017093c-NIH-Crypto      0        26     21     21      0
9 months    ki1017093c-NIH-Crypto      1        26      5      5      0
9 months    ki1066203-TanzaniaChild2   0         5      5      4      1
9 months    ki1066203-TanzaniaChild2   1         5      0      0      0
9 months    ki1101329-Keneba           0      2066   1877   1820     57
9 months    ki1101329-Keneba           1      2066    189    148     41
9 months    ki1112895-Guatemala BSC    0        57     42     42      0
9 months    ki1112895-Guatemala BSC    1        57     15      6      9
9 months    ki1113344-GMS-Nepal        0        51     41     40      1
9 months    ki1113344-GMS-Nepal        1        51     10      6      4
9 months    ki1114097-CMIN             0       536    480    471      9
9 months    ki1114097-CMIN             1       536     56     44     12
9 months    ki1114097-CONTENT          0        54     48     47      1
9 months    ki1114097-CONTENT          1        54      6      3      3
9 months    ki1126311-ZVITAMBO         0      1939   1744   1678     66
9 months    ki1126311-ZVITAMBO         1      1939    195    175     20
9 months    ki1135781-COHORTS          0      8970   8057   7590    467
9 months    ki1135781-COHORTS          1      8970    913    643    270
9 months    ki1148112-LCNI-5           0       319    200    199      1
9 months    ki1148112-LCNI-5           1       319    119    102     17
12 months   ki0047075b-MAL-ED          0      1298   1133   1095     38
12 months   ki0047075b-MAL-ED          1      1298    165    131     34
12 months   ki1000108-CMC-V-BCS-2002   0        97     81     72      9
12 months   ki1000108-CMC-V-BCS-2002   1        97     16     15      1
12 months   ki1000108-IRC              0       406    360    339     21
12 months   ki1000108-IRC              1       406     46     33     13
12 months   ki1000109-EE               0         7      4      3      1
12 months   ki1000109-EE               1         7      3      1      2
12 months   ki1000109-ResPak           0        59     49     44      5
12 months   ki1000109-ResPak           1        59     10      9      1
12 months   ki1000304b-SAS-FoodSuppl   0        91     56     42     14
12 months   ki1000304b-SAS-FoodSuppl   1        91     35      8     27
12 months   ki1017093-NIH-Birth        0       488    409    387     22
12 months   ki1017093-NIH-Birth        1       488     79     54     25
12 months   ki1017093c-NIH-Crypto      0        25     21     20      1
12 months   ki1017093c-NIH-Crypto      1        25      4      4      0
12 months   ki1066203-TanzaniaChild2   0         4      4      3      1
12 months   ki1066203-TanzaniaChild2   1         4      0      0      0
12 months   ki1101329-Keneba           0      1947   1753   1671     82
12 months   ki1101329-Keneba           1      1947    194    148     46
12 months   ki1112895-Guatemala BSC    0        50     37     36      1
12 months   ki1112895-Guatemala BSC    1        50     13      4      9
12 months   ki1113344-GMS-Nepal        0        50     40     39      1
12 months   ki1113344-GMS-Nepal        1        50     10      5      5
12 months   ki1114097-CMIN             0       402    360    350     10
12 months   ki1114097-CMIN             1       402     42     34      8
12 months   ki1114097-CONTENT          0        55     49     47      2
12 months   ki1114097-CONTENT          1        55      6      5      1
12 months   ki1126311-ZVITAMBO         0      1677   1506   1421     85
12 months   ki1126311-ZVITAMBO         1      1677    171    151     20
12 months   ki1135781-COHORTS          0      8292   7421   6668    753
12 months   ki1135781-COHORTS          1      8292    871    541    330
12 months   ki1148112-LCNI-5           0       305    188    185      3
12 months   ki1148112-LCNI-5           1       305    117     88     29
18 months   ki0047075b-MAL-ED          0      1236   1082   1000     82
18 months   ki0047075b-MAL-ED          1      1236    154    109     45
18 months   ki1000108-CMC-V-BCS-2002   0        97     81     63     18
18 months   ki1000108-CMC-V-BCS-2002   1        97     16     13      3
18 months   ki1000108-IRC              0       405    358    334     24
18 months   ki1000108-IRC              1       405     47     37     10
18 months   ki1000109-EE               0         7      4      3      1
18 months   ki1000109-EE               1         7      3      1      2
18 months   ki1000109-ResPak           0         1      0      0      0
18 months   ki1000109-ResPak           1         1      1      1      0
18 months   ki1000304b-SAS-FoodSuppl   0        82     51     37     14
18 months   ki1000304b-SAS-FoodSuppl   1        82     31     10     21
18 months   ki1017093-NIH-Birth        0       460    382    320     62
18 months   ki1017093-NIH-Birth        1       460     78     40     38
18 months   ki1017093c-NIH-Crypto      0        25     20     19      1
18 months   ki1017093c-NIH-Crypto      1        25      5      4      1
18 months   ki1066203-TanzaniaChild2   0         2      2      2      0
18 months   ki1066203-TanzaniaChild2   1         2      0      0      0
18 months   ki1101329-Keneba           0      1922   1740   1621    119
18 months   ki1101329-Keneba           1      1922    182    132     50
18 months   ki1112895-Guatemala BSC    0         0      0      0      0
18 months   ki1112895-Guatemala BSC    1         0      0      0      0
18 months   ki1113344-GMS-Nepal        0        49     39     34      5
18 months   ki1113344-GMS-Nepal        1        49     10      3      7
18 months   ki1114097-CMIN             0       453    402    383     19
18 months   ki1114097-CMIN             1       453     51     36     15
18 months   ki1114097-CONTENT          0        54     48     47      1
18 months   ki1114097-CONTENT          1        54      6      5      1
18 months   ki1126311-ZVITAMBO         0       420    355    299     56
18 months   ki1126311-ZVITAMBO         1       420     65     54     11
18 months   ki1135781-COHORTS          0      2866   2641   1970    671
18 months   ki1135781-COHORTS          1      2866    225     86    139
18 months   ki1148112-LCNI-5           0       352    221    213      8
18 months   ki1148112-LCNI-5           1       352    131     89     42
24 months   ki0047075b-MAL-ED          0      1185   1038    959     79
24 months   ki0047075b-MAL-ED          1      1185    147    111     36
24 months   ki1000108-CMC-V-BCS-2002   0        98     82     57     25
24 months   ki1000108-CMC-V-BCS-2002   1        98     16     12      4
24 months   ki1000108-IRC              0       409    362    332     30
24 months   ki1000108-IRC              1       409     47     36     11
24 months   ki1000109-EE               0         0      0      0      0
24 months   ki1000109-EE               1         0      0      0      0
24 months   ki1000109-ResPak           0         0      0      0      0
24 months   ki1000109-ResPak           1         0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   0         0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   1         0      0      0      0
24 months   ki1017093-NIH-Birth        0       426    352    296     56
24 months   ki1017093-NIH-Birth        1       426     74     38     36
24 months   ki1017093c-NIH-Crypto      0        19     16     16      0
24 months   ki1017093c-NIH-Crypto      1        19      3      3      0
24 months   ki1066203-TanzaniaChild2   0         0      0      0      0
24 months   ki1066203-TanzaniaChild2   1         0      0      0      0
24 months   ki1101329-Keneba           0      1724   1548   1454     94
24 months   ki1101329-Keneba           1      1724    176    133     43
24 months   ki1112895-Guatemala BSC    0         0      0      0      0
24 months   ki1112895-Guatemala BSC    1         0      0      0      0
24 months   ki1113344-GMS-Nepal        0        44     38     35      3
24 months   ki1113344-GMS-Nepal        1        44      6      3      3
24 months   ki1114097-CMIN             0       217    190    185      5
24 months   ki1114097-CMIN             1       217     27     18      9
24 months   ki1114097-CONTENT          0        46     40     40      0
24 months   ki1114097-CONTENT          1        46      6      5      1
24 months   ki1126311-ZVITAMBO         0       114     95     77     18
24 months   ki1126311-ZVITAMBO         1       114     19     16      3
24 months   ki1135781-COHORTS          0      8142   7232   5794   1438
24 months   ki1135781-COHORTS          1      8142    910    471    439
24 months   ki1148112-LCNI-5           0       293    188    181      7
24 months   ki1148112-LCNI-5           1       293    105     75     30

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          0                    NA                0.0088424   0.0036383   0.0140466
3 months    ki0047075b-MAL-ED          1                    NA                0.2076503   0.1488608   0.2664397
3 months    ki1000108-IRC              0                    NA                0.0473538   0.0253560   0.0693515
3 months    ki1000108-IRC              1                    NA                0.3958333   0.2573185   0.5343481
3 months    ki1000109-ResPak           0                    NA                0.2307692   0.1277209   0.3338175
3 months    ki1000109-ResPak           1                    NA                0.4444444   0.2134953   0.6753936
3 months    ki1017093-NIH-Birth        0                    NA                0.0189076   0.0066613   0.0311538
3 months    ki1017093-NIH-Birth        1                    NA                0.2696629   0.1773824   0.3619434
3 months    ki1101329-Keneba           0                    NA                0.0161535   0.0106008   0.0217061
3 months    ki1101329-Keneba           1                    NA                0.1923077   0.1387358   0.2458796
3 months    ki1126311-ZVITAMBO         0                    NA                0.0378298   0.0294853   0.0461742
3 months    ki1126311-ZVITAMBO         1                    NA                0.1545064   0.1080875   0.2009254
3 months    ki1135781-COHORTS          0                    NA                0.0128788   0.0105797   0.0151779
3 months    ki1135781-COHORTS          1                    NA                0.2382775   0.2124459   0.2641091
6 months    ki0047075b-MAL-ED          0                    NA                0.0075694   0.0026411   0.0124977
6 months    ki0047075b-MAL-ED          1                    NA                0.1637427   0.1082596   0.2192258
6 months    ki1000108-IRC              0                    NA                0.0498615   0.0273811   0.0723419
6 months    ki1000108-IRC              1                    NA                0.2391304   0.1157132   0.3625477
6 months    ki1000109-ResPak           0                    NA                0.2131148   0.1096758   0.3165537
6 months    ki1000109-ResPak           1                    NA                0.3125000   0.0838938   0.5411062
6 months    ki1017093-NIH-Birth        0                    NA                0.0334821   0.0168086   0.0501557
6 months    ki1017093-NIH-Birth        1                    NA                0.2352941   0.1450333   0.3255549
6 months    ki1101329-Keneba           0                    NA                0.0211528   0.0146658   0.0276399
6 months    ki1101329-Keneba           1                    NA                0.1522843   0.1020995   0.2024690
6 months    ki1126311-ZVITAMBO         0                    NA                0.0283688   0.0207665   0.0359711
6 months    ki1126311-ZVITAMBO         1                    NA                0.0862944   0.0470736   0.1255152
6 months    ki1135781-COHORTS          0                    NA                0.0298879   0.0263367   0.0334391
6 months    ki1135781-COHORTS          1                    NA                0.2385230   0.2121335   0.2649124
9 months    ki0047075b-MAL-ED          0                    NA                0.0191638   0.0112300   0.0270976
9 months    ki0047075b-MAL-ED          1                    NA                0.1807229   0.1221655   0.2392802
9 months    ki1000108-IRC              0                    NA                0.0637119   0.0384862   0.0889376
9 months    ki1000108-IRC              1                    NA                0.2391304   0.1157132   0.3625477
9 months    ki1017093-NIH-Birth        0                    NA                0.0496454   0.0289253   0.0703655
9 months    ki1017093-NIH-Birth        1                    NA                0.3000000   0.1994818   0.4005182
9 months    ki1101329-Keneba           0                    NA                0.0303676   0.0226028   0.0381324
9 months    ki1101329-Keneba           1                    NA                0.2169312   0.1581575   0.2757050
9 months    ki1114097-CMIN             0                    NA                0.0187500   0.0066043   0.0308957
9 months    ki1114097-CMIN             1                    NA                0.2142857   0.1067164   0.3218551
9 months    ki1126311-ZVITAMBO         0                    NA                0.0378440   0.0288861   0.0468020
9 months    ki1126311-ZVITAMBO         1                    NA                0.1025641   0.0599707   0.1451575
9 months    ki1135781-COHORTS          0                    NA                0.0579620   0.0528594   0.0630646
9 months    ki1135781-COHORTS          1                    NA                0.2957284   0.2661242   0.3253326
12 months   ki0047075b-MAL-ED          0                    NA                0.0335393   0.0230518   0.0440267
12 months   ki0047075b-MAL-ED          1                    NA                0.2060606   0.1443209   0.2678003
12 months   ki1000108-IRC              0                    NA                0.0583333   0.0340930   0.0825737
12 months   ki1000108-IRC              1                    NA                0.2826087   0.1523294   0.4128880
12 months   ki1000304b-SAS-FoodSuppl   0                    NA                0.2500000   0.1359608   0.3640392
12 months   ki1000304b-SAS-FoodSuppl   1                    NA                0.7714286   0.6315432   0.9113140
12 months   ki1017093-NIH-Birth        0                    NA                0.0537897   0.0319033   0.0756762
12 months   ki1017093-NIH-Birth        1                    NA                0.3164557   0.2137913   0.4191201
12 months   ki1101329-Keneba           0                    NA                0.0467770   0.0368896   0.0566644
12 months   ki1101329-Keneba           1                    NA                0.2371134   0.1772493   0.2969776
12 months   ki1114097-CMIN             0                    NA                0.0277778   0.0107809   0.0447747
12 months   ki1114097-CMIN             1                    NA                0.1904762   0.0715714   0.3093810
12 months   ki1126311-ZVITAMBO         0                    NA                0.0564409   0.0447823   0.0680995
12 months   ki1126311-ZVITAMBO         1                    NA                0.1169591   0.0687768   0.1651413
12 months   ki1135781-COHORTS          0                    NA                0.1014688   0.0945985   0.1083391
12 months   ki1135781-COHORTS          1                    NA                0.3788749   0.3466566   0.4110932
18 months   ki0047075b-MAL-ED          0                    NA                0.0757856   0.0600098   0.0915613
18 months   ki0047075b-MAL-ED          1                    NA                0.2922078   0.2203519   0.3640637
18 months   ki1000108-IRC              0                    NA                0.0670391   0.0411009   0.0929773
18 months   ki1000108-IRC              1                    NA                0.2127660   0.0956168   0.3299151
18 months   ki1000304b-SAS-FoodSuppl   0                    NA                0.2745098   0.1512782   0.3977414
18 months   ki1000304b-SAS-FoodSuppl   1                    NA                0.6774194   0.5118501   0.8429886
18 months   ki1017093-NIH-Birth        0                    NA                0.1623037   0.1252871   0.1993203
18 months   ki1017093-NIH-Birth        1                    NA                0.4871795   0.3761341   0.5982249
18 months   ki1101329-Keneba           0                    NA                0.0683908   0.0565276   0.0802540
18 months   ki1101329-Keneba           1                    NA                0.2747253   0.2098580   0.3395926
18 months   ki1114097-CMIN             0                    NA                0.0472637   0.0264971   0.0680303
18 months   ki1114097-CMIN             1                    NA                0.2941176   0.1689277   0.4193076
18 months   ki1126311-ZVITAMBO         0                    NA                0.1577465   0.1197842   0.1957088
18 months   ki1126311-ZVITAMBO         1                    NA                0.1692308   0.0779690   0.2604925
18 months   ki1135781-COHORTS          0                    NA                0.2540704   0.2374644   0.2706765
18 months   ki1135781-COHORTS          1                    NA                0.6177778   0.5542730   0.6812826
18 months   ki1148112-LCNI-5           0                    NA                0.0361991   0.0115380   0.0608602
18 months   ki1148112-LCNI-5           1                    NA                0.3206107   0.2405759   0.4006454
24 months   ki0047075b-MAL-ED          0                    NA                0.0761079   0.0599696   0.0922462
24 months   ki0047075b-MAL-ED          1                    NA                0.2448980   0.1753526   0.3144433
24 months   ki1000108-IRC              0                    NA                0.0828729   0.0544384   0.1113075
24 months   ki1000108-IRC              1                    NA                0.2340426   0.1128487   0.3552364
24 months   ki1017093-NIH-Birth        0                    NA                0.1590909   0.1208363   0.1973456
24 months   ki1017093-NIH-Birth        1                    NA                0.4864865   0.3724736   0.6004994
24 months   ki1101329-Keneba           0                    NA                0.0607235   0.0488231   0.0726240
24 months   ki1101329-Keneba           1                    NA                0.2443182   0.1808194   0.3078169
24 months   ki1114097-CMIN             0                    NA                0.0263158   0.0035023   0.0491293
24 months   ki1114097-CMIN             1                    NA                0.3333333   0.1551107   0.5115560
24 months   ki1135781-COHORTS          0                    NA                0.1988385   0.1896392   0.2080378
24 months   ki1135781-COHORTS          1                    NA                0.4824176   0.4499496   0.5148856
24 months   ki1148112-LCNI-5           0                    NA                0.0372340   0.0101233   0.0643448
24 months   ki1148112-LCNI-5           1                    NA                0.2857143   0.1991582   0.3722704


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.0343378   0.0308877   0.0377879
3 months    ki1000108-IRC              NA                   NA                0.0884521   0.0775192   0.0993850
3 months    ki1000109-ResPak           NA                   NA                0.2771084   0.2580490   0.2961679
3 months    ki1017093-NIH-Birth        NA                   NA                0.0584071   0.0508682   0.0659460
3 months    ki1101329-Keneba           NA                   NA                0.0328917   0.0307273   0.0350562
3 months    ki1126311-ZVITAMBO         NA                   NA                0.0499554   0.0484812   0.0514296
3 months    ki1135781-COHORTS          NA                   NA                0.0357803   0.0344641   0.0370964
6 months    ki0047075b-MAL-ED          NA                   NA                0.0272059   0.0244530   0.0299588
6 months    ki1000108-IRC              NA                   NA                0.0712531   0.0654240   0.0770822
6 months    ki1000109-ResPak           NA                   NA                0.2337662   0.2247006   0.2428319
6 months    ki1017093-NIH-Birth        NA                   NA                0.0656660   0.0593875   0.0719446
6 months    ki1101329-Keneba           NA                   NA                0.0335249   0.0318804   0.0351694
6 months    ki1126311-ZVITAMBO         NA                   NA                0.0339901   0.0332440   0.0347362
6 months    ki1135781-COHORTS          NA                   NA                0.0511439   0.0498965   0.0523912
9 months    ki0047075b-MAL-ED          NA                   NA                0.0395738   0.0366706   0.0424770
9 months    ki1000108-IRC              NA                   NA                0.0835381   0.0781355   0.0889406
9 months    ki1017093-NIH-Birth        NA                   NA                0.0894632   0.0814538   0.0974726
9 months    ki1101329-Keneba           NA                   NA                0.0474347   0.0451149   0.0497544
9 months    ki1114097-CMIN             NA                   NA                0.0391791   0.0341110   0.0442472
9 months    ki1126311-ZVITAMBO         NA                   NA                0.0443528   0.0434862   0.0452194
9 months    ki1135781-COHORTS          NA                   NA                0.0821628   0.0806749   0.0836506
12 months   ki0047075b-MAL-ED          NA                   NA                0.0554700   0.0523424   0.0585975
12 months   ki1000108-IRC              NA                   NA                0.0837438   0.0768207   0.0906670
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4505495   0.3981402   0.5029587
12 months   ki1017093-NIH-Birth        NA                   NA                0.0963115   0.0877185   0.1049044
12 months   ki1101329-Keneba           NA                   NA                0.0657422   0.0632092   0.0682751
12 months   ki1114097-CMIN             NA                   NA                0.0447761   0.0399052   0.0496470
12 months   ki1126311-ZVITAMBO         NA                   NA                0.0626118   0.0617351   0.0634886
12 months   ki1135781-COHORTS          NA                   NA                0.1306078   0.1287770   0.1324386
18 months   ki0047075b-MAL-ED          NA                   NA                0.1027508   0.0987645   0.1067371
18 months   ki1000108-IRC              NA                   NA                0.0839506   0.0793993   0.0885019
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4268293   0.3842826   0.4693759
18 months   ki1017093-NIH-Birth        NA                   NA                0.2173913   0.2062386   0.2285440
18 months   ki1101329-Keneba           NA                   NA                0.0879292   0.0852277   0.0906308
18 months   ki1114097-CMIN             NA                   NA                0.0750552   0.0678620   0.0822483
18 months   ki1126311-ZVITAMBO         NA                   NA                0.1595238   0.1591261   0.1599215
18 months   ki1135781-COHORTS          NA                   NA                0.2826239   0.2790418   0.2862060
18 months   ki1148112-LCNI-5           NA                   NA                0.1420455   0.1276631   0.1564278
24 months   ki0047075b-MAL-ED          NA                   NA                0.0970464   0.0938772   0.1002157
24 months   ki1000108-IRC              NA                   NA                0.1002445   0.0955665   0.1049225
24 months   ki1017093-NIH-Birth        NA                   NA                0.2159624   0.2041700   0.2277549
24 months   ki1101329-Keneba           NA                   NA                0.0794664   0.0768417   0.0820910
24 months   ki1114097-CMIN             NA                   NA                0.0645161   0.0510021   0.0780301
24 months   ki1135781-COHORTS          NA                   NA                0.2305330   0.2285921   0.2324739
24 months   ki1148112-LCNI-5           NA                   NA                0.1262799   0.1126135   0.1399463


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          1                    0                 23.483358   12.2214963   45.122798
3 months    ki1000108-IRC              1                    0                  8.359068    4.6727790   14.953420
3 months    ki1000109-ResPak           1                    0                  1.925926    0.9707012    3.821146
3 months    ki1017093-NIH-Birth        1                    0                 14.262172    6.8556725   29.670255
3 months    ki1101329-Keneba           1                    0                 11.905048    7.6485073   18.530435
3 months    ki1126311-ZVITAMBO         1                    0                  4.084256    2.8134900    5.928987
3 months    ki1135781-COHORTS          1                    0                 18.501548   15.0142174   22.798876
6 months    ki0047075b-MAL-ED          1                    0                 21.632229   10.3833737   45.067560
6 months    ki1000108-IRC              1                    0                  4.795894    2.4168299    9.516845
6 months    ki1000109-ResPak           1                    0                  1.466346    0.6094857    3.527845
6 months    ki1017093-NIH-Birth        1                    0                  7.027451    3.7479906   13.176412
6 months    ki1101329-Keneba           1                    0                  7.199239    4.5896676   11.292547
6 months    ki1126311-ZVITAMBO         1                    0                  3.041878    1.7947291    5.155665
6 months    ki1135781-COHORTS          1                    0                  7.980581    6.7846291    9.387347
9 months    ki0047075b-MAL-ED          1                    0                  9.430449    5.5746086   15.953293
9 months    ki1000108-IRC              1                    0                  3.753308    1.9584467    7.193110
9 months    ki1017093-NIH-Birth        1                    0                  6.042857    3.5383481   10.320104
9 months    ki1101329-Keneba           1                    0                  7.143507    4.9217650   10.368169
9 months    ki1114097-CMIN             1                    0                 11.428571    5.0359527   25.935955
9 months    ki1126311-ZVITAMBO         1                    0                  2.710179    1.6803565    4.371137
9 months    ki1135781-COHORTS          1                    0                  5.102106    4.4653383    5.829678
12 months   ki0047075b-MAL-ED          1                    0                  6.143860    3.9843955    9.473711
12 months   ki1000108-IRC              1                    0                  4.844721    2.6045283    9.011734
12 months   ki1000304b-SAS-FoodSuppl   1                    0                  3.085714    1.8887321    5.041283
12 months   ki1017093-NIH-Birth        1                    0                  5.883199    3.4963158    9.899572
12 months   ki1101329-Keneba           1                    0                  5.069022    3.6468942    7.045716
12 months   ki1114097-CMIN             1                    0                  6.857143    2.8609840   16.435048
12 months   ki1126311-ZVITAMBO         1                    0                  2.072239    1.3070664    3.285354
12 months   ki1135781-COHORTS          1                    0                  3.733905    3.3493104    4.162661
18 months   ki0047075b-MAL-ED          1                    0                  3.855717    2.7937200    5.321420
18 months   ki1000108-IRC              1                    0                  3.173759    1.6192562    6.220600
18 months   ki1000304b-SAS-FoodSuppl   1                    0                  2.467742    1.4801829    4.114188
18 months   ki1017093-NIH-Birth        1                    0                  3.001654    2.1743269    4.143778
18 months   ki1101329-Keneba           1                    0                  4.016991    2.9968088    5.384468
18 months   ki1114097-CMIN             1                    0                  6.222910    3.3753427   11.472794
18 months   ki1126311-ZVITAMBO         1                    0                  1.072802    0.5943658    1.936357
18 months   ki1135781-COHORTS          1                    0                  2.431522    2.1526561    2.746513
18 months   ki1148112-LCNI-5           1                    0                  8.856870    4.2872054   18.297269
24 months   ki0047075b-MAL-ED          1                    0                  3.217773    2.2575499    4.586417
24 months   ki1000108-IRC              1                    0                  2.824114    1.5174171    5.256048
24 months   ki1017093-NIH-Birth        1                    0                  3.057915    2.1857497    4.278095
24 months   ki1101329-Keneba           1                    0                  4.023453    2.9055746    5.571418
24 months   ki1114097-CMIN             1                    0                 12.666667    4.5742475   35.075593
24 months   ki1135781-COHORTS          1                    0                  2.426178    2.2359056    2.632642
24 months   ki1148112-LCNI-5           1                    0                  7.673469    3.4873491   16.884496


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          0                    NA                0.0254953    0.0192514   0.0317392
3 months    ki1000108-IRC              0                    NA                0.0410983    0.0165335   0.0656631
3 months    ki1000109-ResPak           0                    NA                0.0463392   -0.0584569   0.1511353
3 months    ki1017093-NIH-Birth        0                    NA                0.0394995    0.0251188   0.0538802
3 months    ki1101329-Keneba           0                    NA                0.0167383    0.0107787   0.0226979
3 months    ki1126311-ZVITAMBO         0                    NA                0.0121256    0.0036520   0.0205993
3 months    ki1135781-COHORTS          0                    NA                0.0229015    0.0202523   0.0255506
6 months    ki0047075b-MAL-ED          0                    NA                0.0196365    0.0139914   0.0252816
6 months    ki1000108-IRC              0                    NA                0.0213916   -0.0018323   0.0446155
6 months    ki1000109-ResPak           0                    NA                0.0206515   -0.0831840   0.1244870
6 months    ki1017093-NIH-Birth        0                    NA                0.0321839    0.0143674   0.0500004
6 months    ki1101329-Keneba           0                    NA                0.0123721    0.0056798   0.0190643
6 months    ki1126311-ZVITAMBO         0                    NA                0.0056214   -0.0020175   0.0132602
6 months    ki1135781-COHORTS          0                    NA                0.0212560    0.0174921   0.0250198
9 months    ki0047075b-MAL-ED          0                    NA                0.0204101    0.0119618   0.0288584
9 months    ki1000108-IRC              0                    NA                0.0198262   -0.0059716   0.0456239
9 months    ki1017093-NIH-Birth        0                    NA                0.0398178    0.0176036   0.0620321
9 months    ki1101329-Keneba           0                    NA                0.0170670    0.0089631   0.0251710
9 months    ki1114097-CMIN             0                    NA                0.0204291    0.0072684   0.0335898
9 months    ki1126311-ZVITAMBO         0                    NA                0.0065087   -0.0024910   0.0155085
9 months    ki1135781-COHORTS          0                    NA                0.0242007    0.0188857   0.0295158
12 months   ki0047075b-MAL-ED          0                    NA                0.0219307    0.0109868   0.0328745
12 months   ki1000108-IRC              0                    NA                0.0254105    0.0002009   0.0506202
12 months   ki1000304b-SAS-FoodSuppl   0                    NA                0.2005495    0.0750438   0.3260551
12 months   ki1017093-NIH-Birth        0                    NA                0.0425217    0.0190089   0.0660346
12 months   ki1101329-Keneba           0                    NA                0.0189652    0.0087585   0.0291719
12 months   ki1114097-CMIN             0                    NA                0.0169983   -0.0006827   0.0346794
12 months   ki1126311-ZVITAMBO         0                    NA                0.0061709   -0.0055206   0.0178624
12 months   ki1135781-COHORTS          0                    NA                0.0291390    0.0220290   0.0362491
18 months   ki0047075b-MAL-ED          0                    NA                0.0269652    0.0106936   0.0432368
18 months   ki1000108-IRC              0                    NA                0.0169115   -0.0094229   0.0432459
18 months   ki1000304b-SAS-FoodSuppl   0                    NA                0.1523195    0.0219498   0.2826891
18 months   ki1017093-NIH-Birth        0                    NA                0.0550876    0.0164274   0.0937478
18 months   ki1101329-Keneba           0                    NA                0.0195384    0.0073715   0.0317054
18 months   ki1114097-CMIN             0                    NA                0.0277915    0.0058144   0.0497686
18 months   ki1126311-ZVITAMBO         0                    NA                0.0017773   -0.0361871   0.0397417
18 months   ki1135781-COHORTS          0                    NA                0.0285534    0.0115655   0.0455414
18 months   ki1148112-LCNI-5           0                    NA                0.1058464    0.0772978   0.1343950
24 months   ki0047075b-MAL-ED          0                    NA                0.0209385    0.0044919   0.0373851
24 months   ki1000108-IRC              0                    NA                0.0173716   -0.0114452   0.0461884
24 months   ki1017093-NIH-Birth        0                    NA                0.0568715    0.0168405   0.0969025
24 months   ki1101329-Keneba           0                    NA                0.0187428    0.0065564   0.0309293
24 months   ki1114097-CMIN             0                    NA                0.0382003    0.0116846   0.0647160
24 months   ki1135781-COHORTS          0                    NA                0.0316945    0.0222927   0.0410964
24 months   ki1148112-LCNI-5           0                    NA                0.0890458    0.0586852   0.1194064


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          0                    NA                0.7424864    0.5321598   0.8582566
3 months    ki1000108-IRC              0                    NA                0.4646394    0.1342089   0.6689606
3 months    ki1000109-ResPak           0                    NA                0.1672241   -0.3084168   0.4699581
3 months    ki1017093-NIH-Birth        0                    NA                0.6762796    0.3734019   0.8327558
3 months    ki1101329-Keneba           0                    NA                0.5088900    0.3030910   0.6539160
3 months    ki1126311-ZVITAMBO         0                    NA                0.2427291    0.0539787   0.3938201
3 months    ki1135781-COHORTS          0                    NA                0.6400589    0.5680938   0.7000330
6 months    ki0047075b-MAL-ED          0                    NA                0.7217739    0.4622823   0.8560402
6 months    ki1000108-IRC              0                    NA                0.3002197   -0.1065321   0.5574530
6 months    ki1000109-ResPak           0                    NA                0.0883424   -0.4835286   0.4397685
6 months    ki1017093-NIH-Birth        0                    NA                0.4901148    0.1533687   0.6929207
6 months    ki1101329-Keneba           0                    NA                0.3690413    0.1392409   0.5374910
6 months    ki1126311-ZVITAMBO         0                    NA                0.1653818   -0.0920947   0.3621547
6 months    ki1135781-COHORTS          0                    NA                0.4156109    0.3402498   0.4823639
9 months    ki0047075b-MAL-ED          0                    NA                0.5157464    0.2626532   0.6819658
9 months    ki1000108-IRC              0                    NA                0.2373309   -0.1391133   0.4893712
9 months    ki1017093-NIH-Birth        0                    NA                0.4450749    0.1496145   0.6378796
9 months    ki1101329-Keneba           0                    NA                0.3598012    0.1694345   0.5065357
9 months    ki1114097-CMIN             0                    NA                0.5214286    0.0735432   0.7527887
9 months    ki1126311-ZVITAMBO         0                    NA                0.1467490   -0.0819992   0.3271369
9 months    ki1135781-COHORTS          0                    NA                0.2945464    0.2282060   0.3551844
12 months   ki0047075b-MAL-ED          0                    NA                0.3953614    0.1692201   0.5599462
12 months   ki1000108-IRC              0                    NA                0.3034314   -0.0640730   0.5440089
12 months   ki1000304b-SAS-FoodSuppl   0                    NA                0.4451220    0.1115280   0.6534616
12 months   ki1017093-NIH-Birth        0                    NA                0.4415024    0.1529104   0.6317750
12 months   ki1101329-Keneba           0                    NA                0.2884787    0.1179389   0.4260459
12 months   ki1114097-CMIN             0                    NA                0.3796296   -0.1549347   0.6667696
12 months   ki1126311-ZVITAMBO         0                    NA                0.0985581   -0.1087990   0.2671373
12 months   ki1135781-COHORTS          0                    NA                0.2231031    0.1674844   0.2750060
18 months   ki0047075b-MAL-ED          0                    NA                0.2624332    0.0884888   0.4031837
18 months   ki1000108-IRC              0                    NA                0.2014459   -0.1802639   0.4597068
18 months   ki1000304b-SAS-FoodSuppl   0                    NA                0.3568627   -0.0186231   0.5939366
18 months   ki1017093-NIH-Birth        0                    NA                0.2534031    0.0567851   0.4090351
18 months   ki1101329-Keneba           0                    NA                0.2222064    0.0723790   0.3478339
18 months   ki1114097-CMIN             0                    NA                0.3702809    0.0126923   0.5983561
18 months   ki1126311-ZVITAMBO         0                    NA                0.0111415   -0.2579242   0.2226549
18 months   ki1135781-COHORTS          0                    NA                0.1010298    0.0391413   0.1589321
18 months   ki1148112-LCNI-5           0                    NA                0.7451584    0.4925552   0.8720171
24 months   ki0047075b-MAL-ED          0                    NA                0.2157577    0.0280900   0.3671884
24 months   ki1000108-IRC              0                    NA                0.1732920   -0.1687859   0.4152513
24 months   ki1017093-NIH-Birth        0                    NA                0.2633399    0.0573394   0.4243230
24 months   ki1101329-Keneba           0                    NA                0.2358588    0.0678498   0.3735863
24 months   ki1114097-CMIN             0                    NA                0.5921053    0.0048748   0.8328068
24 months   ki1135781-COHORTS          0                    NA                0.1374837    0.0959550   0.1771048
24 months   ki1148112-LCNI-5           0                    NA                0.7051466    0.3844014   0.8587740


