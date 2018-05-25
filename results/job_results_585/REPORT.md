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

**Outcome Variable:** ever_stunted

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
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CMIN
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
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
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-ResPak
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CMIN
* agecat: 3 months, studyid: ki1114097-CONTENT
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
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CMIN
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CMIN
* agecat: 12 months, studyid: ki1114097-CONTENT
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
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CMIN
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CMIN
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/54e0a282-1eb2-498f-a38a-2ac512dad537/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/54e0a282-1eb2-498f-a38a-2ac512dad537/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/54e0a282-1eb2-498f-a38a-2ac512dad537/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/54e0a282-1eb2-498f-a38a-2ac512dad537/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A         n     nA   nAY0   nAY1
----------  -------------------------  ---  ------  -----  -----  -----
3 months    ki0047075b-MAL-ED          0      1499   1300   1112    188
3 months    ki0047075b-MAL-ED          1      1499    199      0    199
3 months    ki1000108-CMC-V-BCS-2002   0        97     81     56     25
3 months    ki1000108-CMC-V-BCS-2002   1        97     16      0     16
3 months    ki1000108-IRC              0       410    362    278     84
3 months    ki1000108-IRC              1       410     48      2     46
3 months    ki1000109-EE               0         9      6      4      2
3 months    ki1000109-EE               1         9      3      0      3
3 months    ki1000109-ResPak           0        91     70     40     30
3 months    ki1000109-ResPak           1        91     21      0     21
3 months    ki1000304b-SAS-FoodSuppl   0         0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   1         0      0      0      0
3 months    ki1017093-NIH-Birth        0       624    525    484     41
3 months    ki1017093-NIH-Birth        1       624     99      0     99
3 months    ki1017093c-NIH-Crypto      0        27     22     21      1
3 months    ki1017093c-NIH-Crypto      1        27      5      0      5
3 months    ki1066203-TanzaniaChild2   0         5      5      4      1
3 months    ki1066203-TanzaniaChild2   1         5      0      0      0
3 months    ki1101329-Keneba           0      2295   2079   1725    354
3 months    ki1101329-Keneba           1      2295    216      8    208
3 months    ki1112895-Guatemala BSC    0         0      0      0      0
3 months    ki1112895-Guatemala BSC    1         0      0      0      0
3 months    ki1113344-GMS-Nepal        0        53     43     41      2
3 months    ki1113344-GMS-Nepal        1        53     10      0     10
3 months    ki1114097-CMIN             0       387    347    338      9
3 months    ki1114097-CMIN             1       387     40      0     40
3 months    ki1114097-CONTENT          0        55     49     45      4
3 months    ki1114097-CONTENT          1        55      6      0      6
3 months    ki1126311-ZVITAMBO         0      3467   3091   2726    365
3 months    ki1126311-ZVITAMBO         1      3467    376     10    366
3 months    ki1135781-COHORTS          0     10685   9580   8784    796
3 months    ki1135781-COHORTS          1     10685   1105      0   1105
3 months    ki1148112-LCNI-5           0         0      0      0      0
3 months    ki1148112-LCNI-5           1         0      0      0      0
6 months    ki0047075b-MAL-ED          0      1401   1223    947    276
6 months    ki0047075b-MAL-ED          1      1401    178      0    178
6 months    ki1000108-CMC-V-BCS-2002   0        96     80     42     38
6 months    ki1000108-CMC-V-BCS-2002   1        96     16      0     16
6 months    ki1000108-IRC              0       408    361    234    127
6 months    ki1000108-IRC              1       408     47      1     46
6 months    ki1000109-EE               0         9      6      3      3
6 months    ki1000109-EE               1         9      3      0      3
6 months    ki1000109-ResPak           0        82     65     26     39
6 months    ki1000109-ResPak           1        82     17      0     17
6 months    ki1000304b-SAS-FoodSuppl   0       104     62     61      1
6 months    ki1000304b-SAS-FoodSuppl   1       104     42      0     42
6 months    ki1017093-NIH-Birth        0       546    458    346    112
6 months    ki1017093-NIH-Birth        1       546     88      0     88
6 months    ki1017093c-NIH-Crypto      0        27     22     15      7
6 months    ki1017093c-NIH-Crypto      1        27      5      0      5
6 months    ki1066203-TanzaniaChild2   0         5      5      2      3
6 months    ki1066203-TanzaniaChild2   1         5      0      0      0
6 months    ki1101329-Keneba           0      2263   2044   1524    520
6 months    ki1101329-Keneba           1      2263    219      8    211
6 months    ki1112895-Guatemala BSC    0       114     83     79      4
6 months    ki1112895-Guatemala BSC    1       114     31      0     31
6 months    ki1113344-GMS-Nepal        0        52     42     32     10
6 months    ki1113344-GMS-Nepal        1        52     10      0     10
6 months    ki1114097-CMIN             0       462    415    393     22
6 months    ki1114097-CMIN             1       462     47      0     47
6 months    ki1114097-CONTENT          0        55     49     43      6
6 months    ki1114097-CONTENT          1        55      6      0      6
6 months    ki1126311-ZVITAMBO         0      2260   2021   1576    445
6 months    ki1126311-ZVITAMBO         1      2260    239     11    228
6 months    ki1135781-COHORTS          0      2931   2763   2182    581
6 months    ki1135781-COHORTS          1      2931    168      0    168
6 months    ki1148112-LCNI-5           0       131     79     79      0
6 months    ki1148112-LCNI-5           1       131     52      0     52
12 months   ki0047075b-MAL-ED          0      1356   1185    801    384
12 months   ki0047075b-MAL-ED          1      1356    171      0    171
12 months   ki1000108-CMC-V-BCS-2002   0        98     82     32     50
12 months   ki1000108-CMC-V-BCS-2002   1        98     16      0     16
12 months   ki1000108-IRC              0       408    361    200    161
12 months   ki1000108-IRC              1       408     47      1     46
12 months   ki1000109-EE               0         8      5      2      3
12 months   ki1000109-EE               1         8      3      0      3
12 months   ki1000109-ResPak           0        73     57     20     37
12 months   ki1000109-ResPak           1        73     16      0     16
12 months   ki1000304b-SAS-FoodSuppl   0        97     58     15     43
12 months   ki1000304b-SAS-FoodSuppl   1        97     39      0     39
12 months   ki1017093-NIH-Birth        0       537    451    262    189
12 months   ki1017093-NIH-Birth        1       537     86      0     86
12 months   ki1017093c-NIH-Crypto      0        27     22     13      9
12 months   ki1017093c-NIH-Crypto      1        27      5      0      5
12 months   ki1066203-TanzaniaChild2   0         5      5      2      3
12 months   ki1066203-TanzaniaChild2   1         5      0      0      0
12 months   ki1101329-Keneba           0      2383   2158   1406    752
12 months   ki1101329-Keneba           1      2383    225      6    219
12 months   ki1112895-Guatemala BSC    0        82     60     46     14
12 months   ki1112895-Guatemala BSC    1        82     22      0     22
12 months   ki1113344-GMS-Nepal        0        53     43     24     19
12 months   ki1113344-GMS-Nepal        1        53     10      0     10
12 months   ki1114097-CMIN             0       636    568    482     86
12 months   ki1114097-CMIN             1       636     68      0     68
12 months   ki1114097-CONTENT          0        55     49     41      8
12 months   ki1114097-CONTENT          1        55      6      0      6
12 months   ki1126311-ZVITAMBO         0      2514   2266   1554    712
12 months   ki1126311-ZVITAMBO         1      2514    248     10    238
12 months   ki1135781-COHORTS          0     10061   8972   5881   3091
12 months   ki1135781-COHORTS          1     10061   1089      0   1089
12 months   ki1148112-LCNI-5           0       397    246    205     41
12 months   ki1148112-LCNI-5           1       397    151      0    151
18 months   ki0047075b-MAL-ED          0      1295   1130    617    513
18 months   ki0047075b-MAL-ED          1      1295    165      0    165
18 months   ki1000108-CMC-V-BCS-2002   0        98     82     20     62
18 months   ki1000108-CMC-V-BCS-2002   1        98     16      0     16
18 months   ki1000108-IRC              0       409    361    178    183
18 months   ki1000108-IRC              1       409     48      1     47
18 months   ki1000109-EE               0         7      4      0      4
18 months   ki1000109-EE               1         7      3      0      3
18 months   ki1000109-ResPak           0        58     48     16     32
18 months   ki1000109-ResPak           1        58     10      0     10
18 months   ki1000304b-SAS-FoodSuppl   0        91     57     10     47
18 months   ki1000304b-SAS-FoodSuppl   1        91     34      0     34
18 months   ki1017093-NIH-Birth        0       494    413    173    240
18 months   ki1017093-NIH-Birth        1       494     81      0     81
18 months   ki1017093c-NIH-Crypto      0        25     20     11      9
18 months   ki1017093c-NIH-Crypto      1        25      5      0      5
18 months   ki1066203-TanzaniaChild2   0         4      4      2      2
18 months   ki1066203-TanzaniaChild2   1         4      0      0      0
18 months   ki1101329-Keneba           0      2283   2046   1134    912
18 months   ki1101329-Keneba           1      2283    237      8    229
18 months   ki1112895-Guatemala BSC    0        47     34     21     13
18 months   ki1112895-Guatemala BSC    1        47     13      0     13
18 months   ki1113344-GMS-Nepal        0        50     40     17     23
18 months   ki1113344-GMS-Nepal        1        50     10      0     10
18 months   ki1114097-CMIN             0       586    519    399    120
18 months   ki1114097-CMIN             1       586     67      0     67
18 months   ki1114097-CONTENT          0        55     49     41      8
18 months   ki1114097-CONTENT          1        55      6      0      6
18 months   ki1126311-ZVITAMBO         0      1833   1646    933    713
18 months   ki1126311-ZVITAMBO         1      1833    187      7    180
18 months   ki1135781-COHORTS          0      3021   2784   1069   1715
18 months   ki1135781-COHORTS          1      3021    237      0    237
18 months   ki1148112-LCNI-5           0       323    205    139     66
18 months   ki1148112-LCNI-5           1       323    118      0    118
24 months   ki0047075b-MAL-ED          0      1226   1073    528    545
24 months   ki0047075b-MAL-ED          1      1226    153      0    153
24 months   ki1000108-CMC-V-BCS-2002   0        98     82      9     73
24 months   ki1000108-CMC-V-BCS-2002   1        98     16      0     16
24 months   ki1000108-IRC              0       410    362    146    216
24 months   ki1000108-IRC              1       410     48      1     47
24 months   ki1000109-EE               0         7      4      0      4
24 months   ki1000109-EE               1         7      3      0      3
24 months   ki1000109-ResPak           0         0      0      0      0
24 months   ki1000109-ResPak           1         0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   0         9      5      1      4
24 months   ki1000304b-SAS-FoodSuppl   1         9      4      0      4
24 months   ki1017093-NIH-Birth        0       467    389    115    274
24 months   ki1017093-NIH-Birth        1       467     78      0     78
24 months   ki1017093c-NIH-Crypto      0        25     20      8     12
24 months   ki1017093c-NIH-Crypto      1        25      5      0      5
24 months   ki1066203-TanzaniaChild2   0         2      2      2      0
24 months   ki1066203-TanzaniaChild2   1         2      0      0      0
24 months   ki1101329-Keneba           0      2206   1972    937   1035
24 months   ki1101329-Keneba           1      2206    234      7    227
24 months   ki1112895-Guatemala BSC    0         0      0      0      0
24 months   ki1112895-Guatemala BSC    1         0      0      0      0
24 months   ki1113344-GMS-Nepal        0        52     43     13     30
24 months   ki1113344-GMS-Nepal        1        52      9      0      9
24 months   ki1114097-CMIN             0       552    483    352    131
24 months   ki1114097-CMIN             1       552     69      0     69
24 months   ki1114097-CONTENT          0        54     48     41      7
24 months   ki1114097-CONTENT          1        54      6      0      6
24 months   ki1126311-ZVITAMBO         0       464    398    128    270
24 months   ki1126311-ZVITAMBO         1       464     66      1     65
24 months   ki1135781-COHORTS          0      2973   2721    671   2050
24 months   ki1135781-COHORTS          1      2973    252      0    252
24 months   ki1148112-LCNI-5           0       349    219    119    100
24 months   ki1148112-LCNI-5           1       349    130      0    130

## Results Table

### Parameter: TSM


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     0                    NA                0.1702742   0.1541136   0.1864348
3 months    ki1101329-Keneba     1                    NA                0.9629629   0.9377723   0.9881536
3 months    ki1126311-ZVITAMBO   0                    NA                0.1180848   0.1067066   0.1294629
3 months    ki1126311-ZVITAMBO   1                    NA                0.9734043   0.9571387   0.9896698
6 months    ki1101329-Keneba     0                    NA                0.2544031   0.2355181   0.2732881
6 months    ki1101329-Keneba     1                    NA                0.9634703   0.9386181   0.9883225
6 months    ki1126311-ZVITAMBO   0                    NA                0.2201880   0.2021182   0.2382578
6 months    ki1126311-ZVITAMBO   1                    NA                0.9539749   0.9274037   0.9805461
12 months   ki1101329-Keneba     0                    NA                0.3484708   0.3283630   0.3685786
12 months   ki1101329-Keneba     1                    NA                0.9733333   0.9522780   0.9943887
12 months   ki1126311-ZVITAMBO   0                    NA                0.3142101   0.2950935   0.3333266
12 months   ki1126311-ZVITAMBO   1                    NA                0.9596774   0.9351899   0.9841650
18 months   ki1101329-Keneba     0                    NA                0.4457478   0.4242057   0.4672899
18 months   ki1101329-Keneba     1                    NA                0.9662447   0.9432470   0.9892423
18 months   ki1126311-ZVITAMBO   0                    NA                0.4331713   0.4092267   0.4571159
18 months   ki1126311-ZVITAMBO   1                    NA                0.9625668   0.9353530   0.9897806
24 months   ki1101329-Keneba     0                    NA                0.5248479   0.5028021   0.5468937
24 months   ki1101329-Keneba     1                    NA                0.9700855   0.9482539   0.9919170


### Parameter: E(Y)


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     NA                   NA                0.2448802   0.2354085   0.2543518
3 months    ki1126311-ZVITAMBO   NA                   NA                0.2108451   0.2019909   0.2196994
6 months    ki1101329-Keneba     NA                   NA                0.3230225   0.3143835   0.3316616
6 months    ki1126311-ZVITAMBO   NA                   NA                0.2977876   0.2884822   0.3070930
12 months   ki1101329-Keneba     NA                   NA                0.4074696   0.4001320   0.4148072
12 months   ki1126311-ZVITAMBO   NA                   NA                0.3778838   0.3703587   0.3854090
18 months   ki1101329-Keneba     NA                   NA                0.4997810   0.4932673   0.5062947
18 months   ki1126311-ZVITAMBO   NA                   NA                0.4871795   0.4798421   0.4945168
24 months   ki1101329-Keneba     NA                   NA                0.5720762   0.5663536   0.5777987


### Parameter: RR


agecat      studyid              intervention_level   baseline_level    estimate   ci_lower   ci_upper
----------  -------------------  -------------------  ---------------  ---------  ---------  ---------
3 months    ki1101329-Keneba     1                    0                 5.655367   5.125134   6.240457
3 months    ki1126311-ZVITAMBO   1                    0                 8.243267   7.475289   9.090144
6 months    ki1101329-Keneba     1                    0                 3.787179   3.500953   4.096807
6 months    ki1126311-ZVITAMBO   1                    0                 4.332547   3.972884   4.724769
12 months   ki1101329-Keneba     1                    0                 2.793156   2.626226   2.970697
12 months   ki1126311-ZVITAMBO   1                    0                 3.054254   2.859255   3.262552
18 months   ki1101329-Keneba     1                    0                 2.167694   2.054007   2.287672
18 months   ki1126311-ZVITAMBO   1                    0                 2.222139   2.088367   2.364480
24 months   ki1101329-Keneba     1                    0                 1.848317   1.762305   1.938528


### Parameter: PAR


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     0                    NA                0.0746060   0.0558743   0.0933377
3 months    ki1126311-ZVITAMBO   0                    NA                0.0927603   0.0783430   0.1071777
6 months    ki1101329-Keneba     0                    NA                0.0686194   0.0478522   0.0893866
6 months    ki1126311-ZVITAMBO   0                    NA                0.0775996   0.0572746   0.0979246
12 months   ki1101329-Keneba     0                    NA                0.0589988   0.0375940   0.0804035
12 months   ki1126311-ZVITAMBO   0                    NA                0.0636738   0.0431294   0.0842182
18 months   ki1101329-Keneba     0                    NA                0.0540332   0.0315278   0.0765386
18 months   ki1126311-ZVITAMBO   0                    NA                0.0540082   0.0289646   0.0790517
24 months   ki1101329-Keneba     0                    NA                0.0472283   0.0244519   0.0700047


### Parameter: PAF


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     0                    NA                0.3046633   0.2296197   0.3723968
3 months    ki1126311-ZVITAMBO   0                    NA                0.4399455   0.3778736   0.4958242
6 months    ki1101329-Keneba     0                    NA                0.2124292   0.1477698   0.2721828
6 months    ki1126311-ZVITAMBO   0                    NA                0.2605870   0.1927206   0.3227480
12 months   ki1101329-Keneba     0                    NA                0.1447931   0.0915036   0.1949568
12 months   ki1126311-ZVITAMBO   0                    NA                0.1685010   0.1135307   0.2200624
18 months   ki1101329-Keneba     0                    NA                0.1081137   0.0623345   0.1516579
18 months   ki1126311-ZVITAMBO   0                    NA                0.1108589   0.0584303   0.1603681
24 months   ki1101329-Keneba     0                    NA                0.0825559   0.0420740   0.1213271


