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

**Intervention Variable:** sex

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
* agecat: 12 months, studyid: ki1017093b-PROVIDE
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
* agecat: 18 months, studyid: ki1017093b-PROVIDE
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE
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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE
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
* agecat: 9 months, studyid: ki1017093b-PROVIDE
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

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1114097-CONTENT

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/a6cebfe9-1143-4bb5-96b0-252bf93b6e45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a6cebfe9-1143-4bb5-96b0-252bf93b6e45/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/a6cebfe9-1143-4bb5-96b0-252bf93b6e45/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a6cebfe9-1143-4bb5-96b0-252bf93b6e45/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n     nA   nAY0   nAY1
----------  -------------------------  -------  ------  -----  -----  -----
Birth       ki0047075b-MAL-ED          Female     1499    744    719     25
Birth       ki0047075b-MAL-ED          Male       1499    755    734     21
Birth       ki1000108-CMC-V-BCS-2002   Female       90     45     44      1
Birth       ki1000108-CMC-V-BCS-2002   Male         90     45     43      2
Birth       ki1000108-IRC              Female      388    173    166      7
Birth       ki1000108-IRC              Male        388    215    206      9
Birth       ki1000109-EE               Female        2      0      0      0
Birth       ki1000109-EE               Male          2      2      2      0
Birth       ki1000109-ResPak           Female        7      3      3      0
Birth       ki1000109-ResPak           Male          7      4      4      0
Birth       ki1000304b-SAS-FoodSuppl   Female        0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Male          0      0      0      0
Birth       ki1017093-NIH-Birth        Female       28     12     12      0
Birth       ki1017093-NIH-Birth        Male         28     16     16      0
Birth       ki1017093b-PROVIDE         Female        0      0      0      0
Birth       ki1017093b-PROVIDE         Male          0      0      0      0
Birth       ki1017093c-NIH-Crypto      Female       27     13     12      1
Birth       ki1017093c-NIH-Crypto      Male         27     14     14      0
Birth       ki1066203-TanzaniaChild2   Female        0      0      0      0
Birth       ki1066203-TanzaniaChild2   Male          0      0      0      0
Birth       ki1101329-Keneba           Female     1541    738    722     16
Birth       ki1101329-Keneba           Male       1541    803    790     13
Birth       ki1112895-Guatemala BSC    Female        0      0      0      0
Birth       ki1112895-Guatemala BSC    Male          0      0      0      0
Birth       ki1113344-GMS-Nepal        Female        0      0      0      0
Birth       ki1113344-GMS-Nepal        Male          0      0      0      0
Birth       ki1114097-CMIN             Female      138     72     70      2
Birth       ki1114097-CMIN             Male        138     66     60      6
Birth       ki1114097-CONTENT          Female        2      2      2      0
Birth       ki1114097-CONTENT          Male          2      0      0      0
Birth       ki1126311-ZVITAMBO         Female     3449   1662   1611     51
Birth       ki1126311-ZVITAMBO         Male       3449   1787   1726     61
Birth       ki1135781-COHORTS          Female    10097   4814   4700    114
Birth       ki1135781-COHORTS          Male      10097   5283   5141    142
Birth       ki1148112-LCNI-5           Female        0      0      0      0
Birth       ki1148112-LCNI-5           Male          0      0      0      0
3 months    ki0047075b-MAL-ED          Female     1778    889    867     22
3 months    ki0047075b-MAL-ED          Male       1778    889    845     44
3 months    ki1000108-CMC-V-BCS-2002   Female      362    183    172     11
3 months    ki1000108-CMC-V-BCS-2002   Male        362    179    157     22
3 months    ki1000108-IRC              Female      407    182    169     13
3 months    ki1000108-IRC              Male        407    225    202     23
3 months    ki1000109-EE               Female      376    182    132     50
3 months    ki1000109-EE               Male        376    194    122     72
3 months    ki1000109-ResPak           Female      260    124    105     19
3 months    ki1000109-ResPak           Male        260    136    100     36
3 months    ki1000304b-SAS-FoodSuppl   Female       97     54     48      6
3 months    ki1000304b-SAS-FoodSuppl   Male         97     43     36      7
3 months    ki1017093-NIH-Birth        Female      570    269    256     13
3 months    ki1017093-NIH-Birth        Male        570    301    281     20
3 months    ki1017093b-PROVIDE         Female      168     71     70      1
3 months    ki1017093b-PROVIDE         Male        168     97     93      4
3 months    ki1017093c-NIH-Crypto      Female      728    370    356     14
3 months    ki1017093c-NIH-Crypto      Male        728    358    339     19
3 months    ki1066203-TanzaniaChild2   Female      575    285    282      3
3 months    ki1066203-TanzaniaChild2   Male        575    290    283      7
3 months    ki1101329-Keneba           Female     2190   1050   1025     25
3 months    ki1101329-Keneba           Male       2190   1140   1093     47
3 months    ki1112895-Guatemala BSC    Female        6      3      2      1
3 months    ki1112895-Guatemala BSC    Male          6      3      2      1
3 months    ki1113344-GMS-Nepal        Female      571    274    267      7
3 months    ki1113344-GMS-Nepal        Male        571    297    282     15
3 months    ki1114097-CMIN             Female     1485    715    685     30
3 months    ki1114097-CMIN             Male       1485    770    738     32
3 months    ki1114097-CONTENT          Female      215    106    106      0
3 months    ki1114097-CONTENT          Male        215    109    106      3
3 months    ki1126311-ZVITAMBO         Female     2271   1108   1059     49
3 months    ki1126311-ZVITAMBO         Male       2271   1163   1098     65
3 months    ki1135781-COHORTS          Female    10351   4960   4815    145
3 months    ki1135781-COHORTS          Male      10351   5391   5162    229
3 months    ki1148112-LCNI-5           Female        0      0      0      0
3 months    ki1148112-LCNI-5           Male          0      0      0      0
6 months    ki0047075b-MAL-ED          Female     1696    844    829     15
6 months    ki0047075b-MAL-ED          Male       1696    852    817     35
6 months    ki1000108-CMC-V-BCS-2002   Female      369    186    172     14
6 months    ki1000108-CMC-V-BCS-2002   Male        369    183    155     28
6 months    ki1000108-IRC              Female      407    183    171     12
6 months    ki1000108-IRC              Male        407    224    207     17
6 months    ki1000109-EE               Female      372    182    140     42
6 months    ki1000109-EE               Male        372    190    138     52
6 months    ki1000109-ResPak           Female      235    111     96     15
6 months    ki1000109-ResPak           Male        235    124     95     29
6 months    ki1000304b-SAS-FoodSuppl   Female       96     55     48      7
6 months    ki1000304b-SAS-FoodSuppl   Male         96     41     33      8
6 months    ki1017093-NIH-Birth        Female      537    245    231     14
6 months    ki1017093-NIH-Birth        Male        537    292    271     21
6 months    ki1017093b-PROVIDE         Female      153     66     66      0
6 months    ki1017093b-PROVIDE         Male        153     87     81      6
6 months    ki1017093c-NIH-Crypto      Female      715    362    354      8
6 months    ki1017093c-NIH-Crypto      Male        715    353    338     15
6 months    ki1066203-TanzaniaChild2   Female      504    244    242      2
6 months    ki1066203-TanzaniaChild2   Male        504    260    255      5
6 months    ki1101329-Keneba           Female     2089   1011    986     25
6 months    ki1101329-Keneba           Male       2089   1078   1033     45
6 months    ki1112895-Guatemala BSC    Female      106     53     50      3
6 months    ki1112895-Guatemala BSC    Male        106     53     46      7
6 months    ki1113344-GMS-Nepal        Female      563    273    269      4
6 months    ki1113344-GMS-Nepal        Male        563    290    274     16
6 months    ki1114097-CMIN             Female     1836    873    860     13
6 months    ki1114097-CMIN             Male       1836    963    919     44
6 months    ki1114097-CONTENT          Female      215    106    106      0
6 months    ki1114097-CONTENT          Male        215    109    105      4
6 months    ki1126311-ZVITAMBO         Female     2052   1006    977     29
6 months    ki1126311-ZVITAMBO         Male       2052   1046   1003     43
6 months    ki1135781-COHORTS          Female    10032   4779   4594    185
6 months    ki1135781-COHORTS          Male      10032   5253   4923    330
6 months    ki1148112-LCNI-5           Female      417    208    202      6
6 months    ki1148112-LCNI-5           Male        417    209    185     24
9 months    ki0047075b-MAL-ED          Female     1640    808    791     17
9 months    ki0047075b-MAL-ED          Male       1640    832    777     55
9 months    ki1000108-CMC-V-BCS-2002   Female      366    183    169     14
9 months    ki1000108-CMC-V-BCS-2002   Male        366    183    150     33
9 months    ki1000108-IRC              Female      407    183    168     15
9 months    ki1000108-IRC              Male        407    224    205     19
9 months    ki1000109-EE               Female      366    179    134     45
9 months    ki1000109-EE               Male        366    187    137     50
9 months    ki1000109-ResPak           Female      211     99     86     13
9 months    ki1000109-ResPak           Male        211    112     92     20
9 months    ki1000304b-SAS-FoodSuppl   Female       85     48     37     11
9 months    ki1000304b-SAS-FoodSuppl   Male         85     37     28      9
9 months    ki1017093-NIH-Birth        Female      507    233    219     14
9 months    ki1017093-NIH-Birth        Male        507    274    243     31
9 months    ki1017093b-PROVIDE         Female      158     67     67      0
9 months    ki1017093b-PROVIDE         Male        158     91     82      9
9 months    ki1017093c-NIH-Crypto      Female      706    358    348     10
9 months    ki1017093c-NIH-Crypto      Male        706    348    330     18
9 months    ki1066203-TanzaniaChild2   Female      434    208    208      0
9 months    ki1066203-TanzaniaChild2   Male        434    226    219      7
9 months    ki1101329-Keneba           Female     2067   1006    971     35
9 months    ki1101329-Keneba           Male       2067   1061    998     63
9 months    ki1112895-Guatemala BSC    Female       60     31     27      4
9 months    ki1112895-Guatemala BSC    Male         60     29     24      5
9 months    ki1113344-GMS-Nepal        Female      551    262    253      9
9 months    ki1113344-GMS-Nepal        Male        551    289    263     26
9 months    ki1114097-CMIN             Female     1846    886    853     33
9 months    ki1114097-CMIN             Male       1846    960    902     58
9 months    ki1114097-CONTENT          Female      214    105    105      0
9 months    ki1114097-CONTENT          Male        214    109    104      5
9 months    ki1126311-ZVITAMBO         Female     1963    975    949     26
9 months    ki1126311-ZVITAMBO         Male       1963    988    927     61
9 months    ki1135781-COHORTS          Female     9152   4353   4085    268
9 months    ki1135781-COHORTS          Male       9152   4799   4310    489
9 months    ki1148112-LCNI-5           Female      322    162    157      5
9 months    ki1148112-LCNI-5           Male        322    160    147     13
12 months   ki0047075b-MAL-ED          Female     1616    794    761     33
12 months   ki0047075b-MAL-ED          Male       1616    822    753     69
12 months   ki1000108-CMC-V-BCS-2002   Female      368    185    157     28
12 months   ki1000108-CMC-V-BCS-2002   Male        368    183    128     55
12 months   ki1000108-IRC              Female      406    182    168     14
12 months   ki1000108-IRC              Male        406    224    204     20
12 months   ki1000109-EE               Female      357    174    111     63
12 months   ki1000109-EE               Male        357    183    126     57
12 months   ki1000109-ResPak           Female      194     90     83      7
12 months   ki1000109-ResPak           Male        194    104     88     16
12 months   ki1000304b-SAS-FoodSuppl   Female       92     51     30     21
12 months   ki1000304b-SAS-FoodSuppl   Male         92     41     21     20
12 months   ki1017093-NIH-Birth        Female      491    225    205     20
12 months   ki1017093-NIH-Birth        Male        491    266    238     28
12 months   ki1017093b-PROVIDE         Female      153     65     62      3
12 months   ki1017093b-PROVIDE         Male        153     88     78     10
12 months   ki1017093c-NIH-Crypto      Female      706    358    340     18
12 months   ki1017093c-NIH-Crypto      Male        706    348    325     23
12 months   ki1066203-TanzaniaChild2   Female      357    166    163      3
12 months   ki1066203-TanzaniaChild2   Male        357    191    187      4
12 months   ki1101329-Keneba           Female     1948    939    888     51
12 months   ki1101329-Keneba           Male       1948   1009    932     77
12 months   ki1112895-Guatemala BSC    Female       53     26     22      4
12 months   ki1112895-Guatemala BSC    Male         53     27     20      7
12 months   ki1113344-GMS-Nepal        Female      558    268    248     20
12 months   ki1113344-GMS-Nepal        Male        558    290    259     31
12 months   ki1114097-CMIN             Female     1578    744    694     50
12 months   ki1114097-CMIN             Male       1578    834    770     64
12 months   ki1114097-CONTENT          Female      215    106    106      0
12 months   ki1114097-CONTENT          Male        215    109    106      3
12 months   ki1126311-ZVITAMBO         Female     1701    884    843     41
12 months   ki1126311-ZVITAMBO         Male       1701    817    753     64
12 months   ki1135781-COHORTS          Female     8476   4047   3600    447
12 months   ki1135781-COHORTS          Male       8476   4429   3766    663
12 months   ki1148112-LCNI-5           Female      310    156    148      8
12 months   ki1148112-LCNI-5           Male        310    154    128     26
18 months   ki0047075b-MAL-ED          Female     1546    760    699     61
18 months   ki0047075b-MAL-ED          Male       1546    786    662    124
18 months   ki1000108-CMC-V-BCS-2002   Female      369    185    140     45
18 months   ki1000108-CMC-V-BCS-2002   Male        369    184    120     64
18 months   ki1000108-IRC              Female      405    184    169     15
18 months   ki1000108-IRC              Male        405    221    202     19
18 months   ki1000109-EE               Female      350    172     87     85
18 months   ki1000109-EE               Male        350    178     92     86
18 months   ki1000109-ResPak           Female        9      3      3      0
18 months   ki1000109-ResPak           Male          9      6      5      1
18 months   ki1000304b-SAS-FoodSuppl   Female       84     49     29     20
18 months   ki1000304b-SAS-FoodSuppl   Male         84     35     18     17
18 months   ki1017093-NIH-Birth        Female      463    214    169     45
18 months   ki1017093-NIH-Birth        Male        463    249    193     56
18 months   ki1017093b-PROVIDE         Female      141     60     55      5
18 months   ki1017093b-PROVIDE         Male        141     81     66     15
18 months   ki1017093c-NIH-Crypto      Female      634    320    300     20
18 months   ki1017093c-NIH-Crypto      Male        634    314    292     22
18 months   ki1066203-TanzaniaChild2   Female      258    121    118      3
18 months   ki1066203-TanzaniaChild2   Male        258    137    125     12
18 months   ki1101329-Keneba           Female     1923    933    875     58
18 months   ki1101329-Keneba           Male       1923    990    879    111
18 months   ki1112895-Guatemala BSC    Female        0      0      0      0
18 months   ki1112895-Guatemala BSC    Male          0      0      0      0
18 months   ki1113344-GMS-Nepal        Female      550    267    229     38
18 months   ki1113344-GMS-Nepal        Male        550    283    236     47
18 months   ki1114097-CMIN             Female     1595    777    694     83
18 months   ki1114097-CMIN             Male       1595    818    720     98
18 months   ki1114097-CONTENT          Female      200    102    102      0
18 months   ki1114097-CONTENT          Male        200     98     93      5
18 months   ki1126311-ZVITAMBO         Female      425    253    219     34
18 months   ki1126311-ZVITAMBO         Male        425    172    139     33
18 months   ki1135781-COHORTS          Female     2928   1399   1032    367
18 months   ki1135781-COHORTS          Male       2928   1529   1054    475
18 months   ki1148112-LCNI-5           Female      357    181    165     16
18 months   ki1148112-LCNI-5           Male        357    176    140     36
24 months   ki0047075b-MAL-ED          Female     1489    726    660     66
24 months   ki0047075b-MAL-ED          Male       1489    763    657    106
24 months   ki1000108-CMC-V-BCS-2002   Female      372    186    137     49
24 months   ki1000108-CMC-V-BCS-2002   Male        372    186    112     74
24 months   ki1000108-IRC              Female      409    185    171     14
24 months   ki1000108-IRC              Male        409    224    197     27
24 months   ki1000109-EE               Female        0      0      0      0
24 months   ki1000109-EE               Male          0      0      0      0
24 months   ki1000109-ResPak           Female        0      0      0      0
24 months   ki1000109-ResPak           Male          0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Female        0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Male          0      0      0      0
24 months   ki1017093-NIH-Birth        Female      429    195    152     43
24 months   ki1017093-NIH-Birth        Male        429    234    184     50
24 months   ki1017093b-PROVIDE         Female      149     64     60      4
24 months   ki1017093b-PROVIDE         Male        149     85     71     14
24 months   ki1017093c-NIH-Crypto      Female      514    260    241     19
24 months   ki1017093c-NIH-Crypto      Male        514    254    238     16
24 months   ki1066203-TanzaniaChild2   Female        2      1      1      0
24 months   ki1066203-TanzaniaChild2   Male          2      1      1      0
24 months   ki1101329-Keneba           Female     1725    822    763     59
24 months   ki1101329-Keneba           Male       1725    903    825     78
24 months   ki1112895-Guatemala BSC    Female        0      0      0      0
24 months   ki1112895-Guatemala BSC    Male          0      0      0      0
24 months   ki1113344-GMS-Nepal        Female      499    233    209     24
24 months   ki1113344-GMS-Nepal        Male        499    266    236     30
24 months   ki1114097-CMIN             Female     1222    575    511     64
24 months   ki1114097-CMIN             Male       1222    647    558     89
24 months   ki1114097-CONTENT          Female      164     83     83      0
24 months   ki1114097-CONTENT          Male        164     81     78      3
24 months   ki1126311-ZVITAMBO         Female      116     74     64     10
24 months   ki1126311-ZVITAMBO         Male        116     42     30     12
24 months   ki1135781-COHORTS          Female     8307   3950   3065    885
24 months   ki1135781-COHORTS          Male       8307   4357   3325   1032
24 months   ki1148112-LCNI-5           Female      297    151    138     13
24 months   ki1148112-LCNI-5           Male        297    146    122     24

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.0278146   0.0278146   0.0278146
Birth       ki0047075b-MAL-ED          Female               NA                0.0336022   0.0206492   0.0465551
Birth       ki0047075b-MAL-ED          Male                 NA                0.0278146   0.0160810   0.0395481
Birth       ki1000108-IRC              NA                   NA                0.0418605   0.0418605   0.0418605
Birth       ki1000108-IRC              Female               NA                0.0404624   0.0110628   0.0698621
Birth       ki1000108-IRC              Male                 NA                0.0418605   0.0150561   0.0686648
Birth       ki1101329-Keneba           NA                   NA                0.0161893   0.0161893   0.0161893
Birth       ki1101329-Keneba           Female               NA                0.0216802   0.0111695   0.0321910
Birth       ki1101329-Keneba           Male                 NA                0.0161893   0.0074575   0.0249210
Birth       ki1126311-ZVITAMBO         NA                   NA                0.0341354   0.0341354   0.0341354
Birth       ki1126311-ZVITAMBO         Female               NA                0.0306859   0.0223932   0.0389786
Birth       ki1126311-ZVITAMBO         Male                 NA                0.0341354   0.0257155   0.0425554
Birth       ki1135781-COHORTS          NA                   NA                0.0268787   0.0268787   0.0268787
Birth       ki1135781-COHORTS          Female               NA                0.0236809   0.0193854   0.0279764
Birth       ki1135781-COHORTS          Male                 NA                0.0268787   0.0225174   0.0312400
3 months    ki0047075b-MAL-ED          NA                   NA                0.0494938   0.0494938   0.0494938
3 months    ki0047075b-MAL-ED          Female               NA                0.0247469   0.0145319   0.0349619
3 months    ki0047075b-MAL-ED          Male                 NA                0.0494938   0.0352321   0.0637555
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.1229050   0.1229050   0.1229050
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.0601093   0.0256241   0.0945945
3 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.1229050   0.0747402   0.1710699
3 months    ki1000108-IRC              NA                   NA                0.1022222   0.1022222   0.1022222
3 months    ki1000108-IRC              Female               NA                0.0714286   0.0339666   0.1088905
3 months    ki1000108-IRC              Male                 NA                0.1022222   0.0625900   0.1418544
3 months    ki1000109-EE               NA                   NA                0.3711340   0.3711340   0.3711340
3 months    ki1000109-EE               Female               NA                0.2747253   0.2097884   0.3396621
3 months    ki1000109-EE               Male                 NA                0.3711340   0.3030618   0.4392062
3 months    ki1000109-ResPak           NA                   NA                0.2647059   0.2647059   0.2647059
3 months    ki1000109-ResPak           Female               NA                0.1532258   0.0897039   0.2167478
3 months    ki1000109-ResPak           Male                 NA                0.2647059   0.1904163   0.3389954
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.1627907   0.1627907   0.1627907
3 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.1111111   0.0268545   0.1953677
3 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.1627907   0.0518743   0.2737071
3 months    ki1017093-NIH-Birth        NA                   NA                0.0664452   0.0664452   0.0664452
3 months    ki1017093-NIH-Birth        Female               NA                0.0483271   0.0226768   0.0739774
3 months    ki1017093-NIH-Birth        Male                 NA                0.0664452   0.0382842   0.0946062
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.0530726   0.0530726   0.0530726
3 months    ki1017093c-NIH-Crypto      Female               NA                0.0378378   0.0183828   0.0572929
3 months    ki1017093c-NIH-Crypto      Male                 NA                0.0530726   0.0298346   0.0763106
3 months    ki1101329-Keneba           NA                   NA                0.0412281   0.0412281   0.0412281
3 months    ki1101329-Keneba           Female               NA                0.0238095   0.0145860   0.0330330
3 months    ki1101329-Keneba           Male                 NA                0.0412281   0.0296843   0.0527719
3 months    ki1113344-GMS-Nepal        NA                   NA                0.0505051   0.0505051   0.0505051
3 months    ki1113344-GMS-Nepal        Female               NA                0.0255474   0.0068489   0.0442460
3 months    ki1113344-GMS-Nepal        Male                 NA                0.0505051   0.0255784   0.0754317
3 months    ki1114097-CMIN             NA                   NA                0.0415584   0.0415584   0.0415584
3 months    ki1114097-CMIN             Female               NA                0.0419580   0.0272572   0.0566589
3 months    ki1114097-CMIN             Male                 NA                0.0415584   0.0274571   0.0556598
3 months    ki1126311-ZVITAMBO         NA                   NA                0.0558899   0.0558899   0.0558899
3 months    ki1126311-ZVITAMBO         Female               NA                0.0442238   0.0321156   0.0563320
3 months    ki1126311-ZVITAMBO         Male                 NA                0.0558899   0.0426851   0.0690947
3 months    ki1135781-COHORTS          NA                   NA                0.0424782   0.0424782   0.0424782
3 months    ki1135781-COHORTS          Female               NA                0.0292339   0.0245454   0.0339223
3 months    ki1135781-COHORTS          Male                 NA                0.0424782   0.0370944   0.0478620
6 months    ki0047075b-MAL-ED          NA                   NA                0.0410798   0.0410798   0.0410798
6 months    ki0047075b-MAL-ED          Female               NA                0.0177725   0.0088562   0.0266888
6 months    ki0047075b-MAL-ED          Male                 NA                0.0410798   0.0277488   0.0544108
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.1530055   0.1530055   0.1530055
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.0752688   0.0373027   0.1132349
6 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.1530055   0.1007772   0.2052337
6 months    ki1000108-IRC              NA                   NA                0.0758929   0.0758929   0.0758929
6 months    ki1000108-IRC              Female               NA                0.0655738   0.0296655   0.1014820
6 months    ki1000108-IRC              Male                 NA                0.0758929   0.0411696   0.1106161
6 months    ki1000109-EE               NA                   NA                0.2736842   0.2736842   0.2736842
6 months    ki1000109-EE               Female               NA                0.2307692   0.1694758   0.2920627
6 months    ki1000109-EE               Male                 NA                0.2736842   0.2102033   0.3371652
6 months    ki1000109-ResPak           NA                   NA                0.2338710   0.2338710   0.2338710
6 months    ki1000109-ResPak           Female               NA                0.1351351   0.0714012   0.1988691
6 months    ki1000109-ResPak           Male                 NA                0.2338710   0.1592085   0.3085334
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.1951220   0.1951220   0.1951220
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.1272727   0.0387311   0.2158144
6 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.1951220   0.0731814   0.3170625
6 months    ki1017093-NIH-Birth        NA                   NA                0.0719178   0.0719178   0.0719178
6 months    ki1017093-NIH-Birth        Female               NA                0.0571429   0.0280508   0.0862349
6 months    ki1017093-NIH-Birth        Male                 NA                0.0719178   0.0422577   0.1015779
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.0424929   0.0424929   0.0424929
6 months    ki1017093c-NIH-Crypto      Female               NA                0.0220994   0.0069452   0.0372537
6 months    ki1017093c-NIH-Crypto      Male                 NA                0.0424929   0.0214360   0.0635498
6 months    ki1101329-Keneba           NA                   NA                0.0417440   0.0417440   0.0417440
6 months    ki1101329-Keneba           Female               NA                0.0247280   0.0151531   0.0343029
6 months    ki1101329-Keneba           Male                 NA                0.0417440   0.0298019   0.0536861
6 months    ki1114097-CMIN             NA                   NA                0.0456906   0.0456906   0.0456906
6 months    ki1114097-CMIN             Female               NA                0.0148912   0.0068547   0.0229277
6 months    ki1114097-CMIN             Male                 NA                0.0456906   0.0324985   0.0588826
6 months    ki1126311-ZVITAMBO         NA                   NA                0.0411090   0.0411090   0.0411090
6 months    ki1126311-ZVITAMBO         Female               NA                0.0288270   0.0184851   0.0391690
6 months    ki1126311-ZVITAMBO         Male                 NA                0.0411090   0.0290741   0.0531438
6 months    ki1135781-COHORTS          NA                   NA                0.0628212   0.0628212   0.0628212
6 months    ki1135781-COHORTS          Female               NA                0.0387110   0.0332416   0.0441805
6 months    ki1135781-COHORTS          Male                 NA                0.0628212   0.0562593   0.0693832
6 months    ki1148112-LCNI-5           NA                   NA                0.1148325   0.1148325   0.1148325
6 months    ki1148112-LCNI-5           Female               NA                0.0288462   0.0060729   0.0516194
6 months    ki1148112-LCNI-5           Male                 NA                0.1148325   0.0715571   0.1581080
9 months    ki0047075b-MAL-ED          NA                   NA                0.0661058   0.0661058   0.0661058
9 months    ki0047075b-MAL-ED          Female               NA                0.0210396   0.0111409   0.0309383
9 months    ki0047075b-MAL-ED          Male                 NA                0.0661058   0.0492174   0.0829941
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.1803279   0.1803279   0.1803279
9 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.0765027   0.0379395   0.1150659
9 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.1803279   0.1245492   0.2361065
9 months    ki1000108-IRC              NA                   NA                0.0848214   0.0848214   0.0848214
9 months    ki1000108-IRC              Female               NA                0.0819672   0.0421743   0.1217601
9 months    ki1000108-IRC              Male                 NA                0.0848214   0.0482902   0.1213526
9 months    ki1000109-EE               NA                   NA                0.2673797   0.2673797   0.2673797
9 months    ki1000109-EE               Female               NA                0.2513966   0.1877579   0.3150353
9 months    ki1000109-EE               Male                 NA                0.2673797   0.2038575   0.3309018
9 months    ki1000109-ResPak           NA                   NA                0.1785714   0.1785714   0.1785714
9 months    ki1000109-ResPak           Female               NA                0.1313131   0.0646251   0.1980011
9 months    ki1000109-ResPak           Male                 NA                0.1785714   0.1074727   0.2496701
9 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.2432432   0.2432432   0.2432432
9 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.2291667   0.1095606   0.3487727
9 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.2432432   0.1041790   0.3823075
9 months    ki1017093-NIH-Birth        NA                   NA                0.1131387   0.1131387   0.1131387
9 months    ki1017093-NIH-Birth        Female               NA                0.0600858   0.0295416   0.0906301
9 months    ki1017093-NIH-Birth        Male                 NA                0.1131387   0.0755952   0.1506822
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.0517241   0.0517241   0.0517241
9 months    ki1017093c-NIH-Crypto      Female               NA                0.0279330   0.0108517   0.0450143
9 months    ki1017093c-NIH-Crypto      Male                 NA                0.0517241   0.0284389   0.0750094
9 months    ki1101329-Keneba           NA                   NA                0.0593779   0.0593779   0.0593779
9 months    ki1101329-Keneba           Female               NA                0.0347913   0.0234646   0.0461179
9 months    ki1101329-Keneba           Male                 NA                0.0593779   0.0451541   0.0736017
9 months    ki1113344-GMS-Nepal        NA                   NA                0.0899654   0.0899654   0.0899654
9 months    ki1113344-GMS-Nepal        Female               NA                0.0343511   0.0122776   0.0564247
9 months    ki1113344-GMS-Nepal        Male                 NA                0.0899654   0.0569467   0.1229841
9 months    ki1114097-CMIN             NA                   NA                0.0604167   0.0604167   0.0604167
9 months    ki1114097-CMIN             Female               NA                0.0372460   0.0247737   0.0497184
9 months    ki1114097-CMIN             Male                 NA                0.0604167   0.0453410   0.0754923
9 months    ki1126311-ZVITAMBO         NA                   NA                0.0617409   0.0617409   0.0617409
9 months    ki1126311-ZVITAMBO         Female               NA                0.0266667   0.0165515   0.0367818
9 months    ki1126311-ZVITAMBO         Male                 NA                0.0617409   0.0467293   0.0767525
9 months    ki1135781-COHORTS          NA                   NA                0.1018962   0.1018962   0.1018962
9 months    ki1135781-COHORTS          Female               NA                0.0615667   0.0544258   0.0687076
9 months    ki1135781-COHORTS          Male                 NA                0.1018962   0.0933369   0.1104555
9 months    ki1148112-LCNI-5           NA                   NA                0.0812500   0.0812500   0.0812500
9 months    ki1148112-LCNI-5           Female               NA                0.0308642   0.0041903   0.0575381
9 months    ki1148112-LCNI-5           Male                 NA                0.0812500   0.0388492   0.1236508
12 months   ki0047075b-MAL-ED          NA                   NA                0.0839416   0.0839416   0.0839416
12 months   ki0047075b-MAL-ED          Female               NA                0.0415617   0.0276750   0.0554485
12 months   ki0047075b-MAL-ED          Male                 NA                0.0839416   0.0649791   0.1029042
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.3005464   0.3005464   0.3005464
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.1513514   0.0996371   0.2030656
12 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.3005464   0.2340270   0.3670659
12 months   ki1000108-IRC              NA                   NA                0.0892857   0.0892857   0.0892857
12 months   ki1000108-IRC              Female               NA                0.0769231   0.0381621   0.1156841
12 months   ki1000108-IRC              Male                 NA                0.0892857   0.0518969   0.1266745
12 months   ki1000109-EE               NA                   NA                0.3114754   0.3114754   0.3114754
12 months   ki1000109-EE               Female               NA                0.3620690   0.2905592   0.4335787
12 months   ki1000109-EE               Male                 NA                0.3114754   0.2442856   0.3786652
12 months   ki1000109-ResPak           NA                   NA                0.1538462   0.1538462   0.1538462
12 months   ki1000109-ResPak           Female               NA                0.0777778   0.0223031   0.1332524
12 months   ki1000109-ResPak           Male                 NA                0.1538462   0.0843243   0.2233681
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4878049   0.4878049   0.4878049
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.4117647   0.2759533   0.5475761
12 months   ki1000304b-SAS-FoodSuppl   Male                 NA                0.4878049   0.3339646   0.6416452
12 months   ki1017093-NIH-Birth        NA                   NA                0.1052632   0.1052632   0.1052632
12 months   ki1017093-NIH-Birth        Female               NA                0.0888889   0.0516661   0.1261117
12 months   ki1017093-NIH-Birth        Male                 NA                0.1052632   0.0683454   0.1421810
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.0660920   0.0660920   0.0660920
12 months   ki1017093c-NIH-Crypto      Female               NA                0.0502793   0.0276273   0.0729314
12 months   ki1017093c-NIH-Crypto      Male                 NA                0.0660920   0.0399708   0.0922131
12 months   ki1101329-Keneba           NA                   NA                0.0763132   0.0763132   0.0763132
12 months   ki1101329-Keneba           Female               NA                0.0543131   0.0398136   0.0688126
12 months   ki1101329-Keneba           Male                 NA                0.0763132   0.0599271   0.0926993
12 months   ki1113344-GMS-Nepal        NA                   NA                0.1068966   0.1068966   0.1068966
12 months   ki1113344-GMS-Nepal        Female               NA                0.0746269   0.0431366   0.1061171
12 months   ki1113344-GMS-Nepal        Male                 NA                0.1068966   0.0713030   0.1424901
12 months   ki1114097-CMIN             NA                   NA                0.0767386   0.0767386   0.0767386
12 months   ki1114097-CMIN             Female               NA                0.0672043   0.0492077   0.0852009
12 months   ki1114097-CMIN             Male                 NA                0.0767386   0.0586680   0.0948092
12 months   ki1126311-ZVITAMBO         NA                   NA                0.0783354   0.0783354   0.0783354
12 months   ki1126311-ZVITAMBO         Female               NA                0.0463801   0.0325124   0.0602477
12 months   ki1126311-ZVITAMBO         Male                 NA                0.0783354   0.0599052   0.0967656
12 months   ki1135781-COHORTS          NA                   NA                0.1496952   0.1496952   0.1496952
12 months   ki1135781-COHORTS          Female               NA                0.1104522   0.1007944   0.1201100
12 months   ki1135781-COHORTS          Male                 NA                0.1496952   0.1391874   0.1602030
12 months   ki1148112-LCNI-5           NA                   NA                0.1688312   0.1688312   0.1688312
12 months   ki1148112-LCNI-5           Female               NA                0.0512821   0.0166133   0.0859508
12 months   ki1148112-LCNI-5           Male                 NA                0.1688312   0.1095714   0.2280910
18 months   ki0047075b-MAL-ED          NA                   NA                0.1577608   0.1577608   0.1577608
18 months   ki0047075b-MAL-ED          Female               NA                0.0802632   0.0609403   0.0995860
18 months   ki0047075b-MAL-ED          Male                 NA                0.1577608   0.1322694   0.1832523
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.3478261   0.3478261   0.3478261
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.2432432   0.1813348   0.3051517
18 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.3478261   0.2789147   0.4167375
18 months   ki1000108-IRC              NA                   NA                0.0859729   0.0859729   0.0859729
18 months   ki1000108-IRC              Female               NA                0.0815217   0.0419352   0.1211082
18 months   ki1000108-IRC              Male                 NA                0.0859729   0.0489688   0.1229769
18 months   ki1000109-EE               NA                   NA                0.4831461   0.4831461   0.4831461
18 months   ki1000109-EE               Female               NA                0.4941860   0.4193612   0.5690109
18 months   ki1000109-EE               Male                 NA                0.4831461   0.4096300   0.5566622
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4857143   0.4857143   0.4857143
18 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.4081633   0.2697210   0.5466055
18 months   ki1000304b-SAS-FoodSuppl   Male                 NA                0.4857143   0.3191402   0.6522883
18 months   ki1017093-NIH-Birth        NA                   NA                0.2248996   0.2248996   0.2248996
18 months   ki1017093-NIH-Birth        Female               NA                0.2102804   0.1556233   0.2649375
18 months   ki1017093-NIH-Birth        Male                 NA                0.2248996   0.1729848   0.2768144
18 months   ki1017093b-PROVIDE         NA                   NA                0.1851852   0.1851852   0.1851852
18 months   ki1017093b-PROVIDE         Female               NA                0.0833333   0.0131501   0.1535165
18 months   ki1017093b-PROVIDE         Male                 NA                0.1851852   0.1002899   0.2700805
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.0700637   0.0700637   0.0700637
18 months   ki1017093c-NIH-Crypto      Female               NA                0.0625000   0.0359575   0.0890425
18 months   ki1017093c-NIH-Crypto      Male                 NA                0.0700637   0.0418084   0.0983189
18 months   ki1101329-Keneba           NA                   NA                0.1121212   0.1121212   0.1121212
18 months   ki1101329-Keneba           Female               NA                0.0621651   0.0466677   0.0776624
18 months   ki1101329-Keneba           Male                 NA                0.1121212   0.0924621   0.1317803
18 months   ki1113344-GMS-Nepal        NA                   NA                0.1660777   0.1660777   0.1660777
18 months   ki1113344-GMS-Nepal        Female               NA                0.1423221   0.1003765   0.1842676
18 months   ki1113344-GMS-Nepal        Male                 NA                0.1660777   0.1226799   0.2094756
18 months   ki1114097-CMIN             NA                   NA                0.1198044   0.1198044   0.1198044
18 months   ki1114097-CMIN             Female               NA                0.1068211   0.0850955   0.1285467
18 months   ki1114097-CMIN             Male                 NA                0.1198044   0.0975440   0.1420648
18 months   ki1126311-ZVITAMBO         NA                   NA                0.1918605   0.1918605   0.1918605
18 months   ki1126311-ZVITAMBO         Female               NA                0.1343874   0.0923108   0.1764639
18 months   ki1126311-ZVITAMBO         Male                 NA                0.1918605   0.1329447   0.2507762
18 months   ki1135781-COHORTS          NA                   NA                0.3106606   0.3106606   0.3106606
18 months   ki1135781-COHORTS          Female               NA                0.2623302   0.2392751   0.2853854
18 months   ki1135781-COHORTS          Male                 NA                0.3106606   0.2874611   0.3338600
18 months   ki1148112-LCNI-5           NA                   NA                0.2045455   0.2045455   0.2045455
18 months   ki1148112-LCNI-5           Female               NA                0.0883978   0.0469844   0.1298112
18 months   ki1148112-LCNI-5           Male                 NA                0.2045455   0.1448689   0.2642220
24 months   ki0047075b-MAL-ED          NA                   NA                0.1389253   0.1389253   0.1389253
24 months   ki0047075b-MAL-ED          Female               NA                0.0909091   0.0699905   0.1118277
24 months   ki0047075b-MAL-ED          Male                 NA                0.1389253   0.1143758   0.1634748
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.3978495   0.3978495   0.3978495
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.2634409   0.2000507   0.3268310
24 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.3978495   0.3274145   0.4682844
24 months   ki1000108-IRC              NA                   NA                0.1205357   0.1205357   0.1205357
24 months   ki1000108-IRC              Female               NA                0.0756757   0.0375178   0.1138335
24 months   ki1000108-IRC              Male                 NA                0.1205357   0.0778461   0.1632254
24 months   ki1017093-NIH-Birth        NA                   NA                0.2136752   0.2136752   0.2136752
24 months   ki1017093-NIH-Birth        Female               NA                0.2205128   0.1622544   0.2787713
24 months   ki1017093-NIH-Birth        Male                 NA                0.2136752   0.1610947   0.2662557
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.0629921   0.0629921   0.0629921
24 months   ki1017093c-NIH-Crypto      Female               NA                0.0730769   0.0414107   0.1047431
24 months   ki1017093c-NIH-Crypto      Male                 NA                0.0629921   0.0330854   0.0928989
24 months   ki1101329-Keneba           NA                   NA                0.0863787   0.0863787   0.0863787
24 months   ki1101329-Keneba           Female               NA                0.0717762   0.0541258   0.0894266
24 months   ki1101329-Keneba           Male                 NA                0.0863787   0.0680507   0.1047068
24 months   ki1113344-GMS-Nepal        NA                   NA                0.1127820   0.1127820   0.1127820
24 months   ki1113344-GMS-Nepal        Female               NA                0.1030043   0.0639356   0.1420730
24 months   ki1113344-GMS-Nepal        Male                 NA                0.1127820   0.0747299   0.1508340
24 months   ki1114097-CMIN             NA                   NA                0.1375580   0.1375580   0.1375580
24 months   ki1114097-CMIN             Female               NA                0.1113043   0.0855871   0.1370216
24 months   ki1114097-CMIN             Male                 NA                0.1375580   0.1110069   0.1641090
24 months   ki1126311-ZVITAMBO         NA                   NA                0.2857143   0.2857143   0.2857143
24 months   ki1126311-ZVITAMBO         Female               NA                0.1351351   0.0569056   0.2133646
24 months   ki1126311-ZVITAMBO         Male                 NA                0.2857143   0.1484981   0.4229305
24 months   ki1135781-COHORTS          NA                   NA                0.2368602   0.2368602   0.2368602
24 months   ki1135781-COHORTS          Female               NA                0.2240506   0.2110470   0.2370543
24 months   ki1135781-COHORTS          Male                 NA                0.2368602   0.2242353   0.2494851
24 months   ki1148112-LCNI-5           NA                   NA                0.1643836   0.1643836   0.1643836
24 months   ki1148112-LCNI-5           Female               NA                0.0860927   0.0412774   0.1309080
24 months   ki1148112-LCNI-5           Male                 NA                0.1643836   0.1041641   0.2246030


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.0306871   0.0305406   0.0308337
Birth       ki1000108-IRC              NA                   NA                0.0412371   0.0411679   0.0413063
Birth       ki1101329-Keneba           NA                   NA                0.0188189   0.0186819   0.0189559
Birth       ki1126311-ZVITAMBO         NA                   NA                0.0324732   0.0324156   0.0325307
Birth       ki1135781-COHORTS          NA                   NA                0.0253541   0.0253229   0.0253852
3 months    ki0047075b-MAL-ED          NA                   NA                0.0371204   0.0365451   0.0376957
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.0911602   0.0879215   0.0943989
3 months    ki1000108-IRC              NA                   NA                0.0884521   0.0869628   0.0899414
3 months    ki1000109-EE               NA                   NA                0.3244681   0.3195917   0.3293445
3 months    ki1000109-ResPak           NA                   NA                0.2115385   0.2047573   0.2183196
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.1340206   0.1288850   0.1391562
3 months    ki1017093-NIH-Birth        NA                   NA                0.0578947   0.0571516   0.0586379
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.0453297   0.0447760   0.0458833
3 months    ki1101329-Keneba           NA                   NA                0.0328767   0.0325122   0.0332412
3 months    ki1113344-GMS-Nepal        NA                   NA                0.0385289   0.0375053   0.0395525
3 months    ki1114097-CMIN             NA                   NA                0.0417508   0.0417407   0.0417610
3 months    ki1126311-ZVITAMBO         NA                   NA                0.0501982   0.0499583   0.0504380
3 months    ki1135781-COHORTS          NA                   NA                0.0361318   0.0360043   0.0362592
6 months    ki0047075b-MAL-ED          NA                   NA                0.0294811   0.0289264   0.0300359
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.1138211   0.1098501   0.1177922
6 months    ki1000108-IRC              NA                   NA                0.0712531   0.0707537   0.0717524
6 months    ki1000109-EE               NA                   NA                0.2526882   0.2505052   0.2548711
6 months    ki1000109-ResPak           NA                   NA                0.1872340   0.1809184   0.1935497
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.1562500   0.1495011   0.1629989
6 months    ki1017093-NIH-Birth        NA                   NA                0.0651769   0.0645539   0.0657999
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.0321678   0.0314200   0.0329157
6 months    ki1101329-Keneba           NA                   NA                0.0335089   0.0331441   0.0338736
6 months    ki1114097-CMIN             NA                   NA                0.0310458   0.0303420   0.0317495
6 months    ki1126311-ZVITAMBO         NA                   NA                0.0350877   0.0348220   0.0353534
6 months    ki1135781-COHORTS          NA                   NA                0.0513357   0.0511001   0.0515714
6 months    ki1148112-LCNI-5           NA                   NA                0.0719424   0.0678110   0.0760739
9 months    ki0047075b-MAL-ED          NA                   NA                0.0439024   0.0428117   0.0449932
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.1284153   0.1230896   0.1337410
9 months    ki1000108-IRC              NA                   NA                0.0835381   0.0834000   0.0836762
9 months    ki1000109-EE               NA                   NA                0.2595628   0.2587432   0.2603825
9 months    ki1000109-ResPak           NA                   NA                0.1563981   0.1532083   0.1595879
9 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.2352941   0.2338016   0.2367866
9 months    ki1017093-NIH-Birth        NA                   NA                0.0887574   0.0864537   0.0910611
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.0396601   0.0387821   0.0405381
9 months    ki1101329-Keneba           NA                   NA                0.0474117   0.0468818   0.0479416
9 months    ki1113344-GMS-Nepal        NA                   NA                0.0635209   0.0611997   0.0658420
9 months    ki1114097-CMIN             NA                   NA                0.0492958   0.0487676   0.0498240
9 months    ki1126311-ZVITAMBO         NA                   NA                0.0443199   0.0435439   0.0450959
9 months    ki1135781-COHORTS          NA                   NA                0.0827142   0.0823015   0.0831268
9 months    ki1148112-LCNI-5           NA                   NA                0.0559006   0.0531447   0.0586565
12 months   ki0047075b-MAL-ED          NA                   NA                0.0631188   0.0620855   0.0641521
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2255435   0.2179116   0.2331754
12 months   ki1000108-IRC              NA                   NA                0.0837438   0.0831451   0.0843426
12 months   ki1000109-EE               NA                   NA                0.3361345   0.3335075   0.3387614
12 months   ki1000109-ResPak           NA                   NA                0.1185567   0.1132048   0.1239086
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4456522   0.4378868   0.4534175
12 months   ki1017093-NIH-Birth        NA                   NA                0.0977597   0.0970373   0.0984820
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.0580737   0.0574901   0.0586572
12 months   ki1101329-Keneba           NA                   NA                0.0657084   0.0652201   0.0661967
12 months   ki1113344-GMS-Nepal        NA                   NA                0.0913978   0.0900590   0.0927367
12 months   ki1114097-CMIN             NA                   NA                0.0722433   0.0720084   0.0724782
12 months   ki1126311-ZVITAMBO         NA                   NA                0.0617284   0.0609695   0.0624873
12 months   ki1135781-COHORTS          NA                   NA                0.1309580   0.1305407   0.1313753
12 months   ki1148112-LCNI-5           NA                   NA                0.1096774   0.1031243   0.1162306
18 months   ki0047075b-MAL-ED          NA                   NA                0.1196636   0.1177318   0.1215955
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2953930   0.2900503   0.3007356
18 months   ki1000108-IRC              NA                   NA                0.0839506   0.0837345   0.0841667
18 months   ki1000109-EE               NA                   NA                0.4885714   0.4879924   0.4891505
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4404762   0.4322509   0.4487014
18 months   ki1017093-NIH-Birth        NA                   NA                0.2181425   0.2174779   0.2188072
18 months   ki1017093b-PROVIDE         NA                   NA                0.1418440   0.1335023   0.1501856
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.0662461   0.0659515   0.0665407
18 months   ki1101329-Keneba           NA                   NA                0.0878835   0.0867673   0.0889997
18 months   ki1113344-GMS-Nepal        NA                   NA                0.1545455   0.1535523   0.1555386
18 months   ki1114097-CMIN             NA                   NA                0.1134796   0.1131610   0.1137982
18 months   ki1126311-ZVITAMBO         NA                   NA                0.1576471   0.1549619   0.1603322
18 months   ki1135781-COHORTS          NA                   NA                0.2875683   0.2866937   0.2884429
18 months   ki1148112-LCNI-5           NA                   NA                0.1456583   0.1396263   0.1516903
24 months   ki0047075b-MAL-ED          NA                   NA                0.1155138   0.1142943   0.1167332
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.3306452   0.3238067   0.3374836
24 months   ki1000108-IRC              NA                   NA                0.1002445   0.0980780   0.1024110
24 months   ki1017093-NIH-Birth        NA                   NA                0.2167832   0.2164607   0.2171058
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.0680934   0.0676571   0.0685297
24 months   ki1101329-Keneba           NA                   NA                0.0794203   0.0790760   0.0797646
24 months   ki1113344-GMS-Nepal        NA                   NA                0.1082164   0.1077880   0.1086449
24 months   ki1114097-CMIN             NA                   NA                0.1252046   0.1244696   0.1259396
24 months   ki1126311-ZVITAMBO         NA                   NA                0.1896552   0.1764286   0.2028817
24 months   ki1135781-COHORTS          NA                   NA                0.2307692   0.2306317   0.2309068
24 months   ki1148112-LCNI-5           NA                   NA                0.1245791   0.1201203   0.1290380


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          Female               NA                1.2080773   0.8216431   1.7762587
Birth       ki0047075b-MAL-ED          Male                 NA                1.0000000   0.6558325   1.5247796
Birth       ki1000108-IRC              Female               NA                0.9666024   0.4674047   1.9989534
Birth       ki1000108-IRC              Male                 NA                1.0000000   0.5271202   1.8971005
Birth       ki1101329-Keneba           Female               NA                1.3391703   0.8246820   2.1746287
Birth       ki1101329-Keneba           Male                 NA                1.0000000   0.5831254   1.7148971
Birth       ki1126311-ZVITAMBO         Female               NA                0.8989466   0.6860690   1.1778770
Birth       ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.7814039   1.2797479
Birth       ki1135781-COHORTS          Female               NA                0.8810307   0.7348766   1.0562523
Birth       ki1135781-COHORTS          Male                 NA                1.0000000   0.8502209   1.1761649
3 months    ki0047075b-MAL-ED          Female               NA                0.5000000   0.3309043   0.7555055
3 months    ki0047075b-MAL-ED          Male                 NA                1.0000000   0.7496478   1.3339598
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.4890710   0.2755584   0.8680211
3 months    ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.6757805   1.4797703
3 months    ki1000108-IRC              Female               NA                0.6987578   0.4135742   1.1805920
3 months    ki1000108-IRC              Male                 NA                1.0000000   0.6786117   1.4735968
3 months    ki1000109-EE               Female               NA                0.7402320   0.5844046   0.9376097
3 months    ki1000109-EE               Male                 NA                1.0000000   0.8324211   1.2013150
3 months    ki1000109-ResPak           Female               NA                0.5788530   0.3824066   0.8762163
3 months    ki1000109-ResPak           Male                 NA                1.0000000   0.7552931   1.3239894
3 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.6825397   0.3197410   1.4569931
3 months    ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.5059366   1.9765321
3 months    ki1017093-NIH-Birth        Female               NA                0.7273234   0.4277792   1.2366178
3 months    ki1017093-NIH-Birth        Male                 NA                1.0000000   0.6545399   1.5277908
3 months    ki1017093c-NIH-Crypto      Female               NA                0.7129445   0.4263385   1.1922214
3 months    ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.6454208   1.5493768
3 months    ki1101329-Keneba           Female               NA                0.5775076   0.3920287   0.8507414
3 months    ki1101329-Keneba           Male                 NA                1.0000000   0.7557847   1.3231281
3 months    ki1113344-GMS-Nepal        Female               NA                0.5058394   0.2433024   1.0516685
3 months    ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.6104566   1.6381180
3 months    ki1114097-CMIN             Female               NA                1.0096154   0.7112013   1.4332416
3 months    ki1114097-CMIN             Male                 NA                1.0000000   0.7122585   1.4039846
3 months    ki1126311-ZVITAMBO         Female               NA                0.7912663   0.6017492   1.0404707
3 months    ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.7895719   1.2665092
3 months    ki1135781-COHORTS          Female               NA                0.6882087   0.5862317   0.8079250
3 months    ki1135781-COHORTS          Male                 NA                1.0000000   0.8809596   1.1351258
6 months    ki0047075b-MAL-ED          Female               NA                0.4326337   0.2619622   0.7144998
6 months    ki0047075b-MAL-ED          Male                 NA                1.0000000   0.7228786   1.3833581
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.4919355   0.2970619   0.8146467
6 months    ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.7108108   1.4068442
6 months    ki1000108-IRC              Female               NA                0.8640309   0.4996998   1.4939956
6 months    ki1000108-IRC              Male                 NA                1.0000000   0.6328452   1.5801652
6 months    ki1000109-EE               Female               NA                0.8431953   0.6465132   1.0997120
6 months    ki1000109-EE               Male                 NA                1.0000000   0.7929861   1.2610562
6 months    ki1000109-ResPak           Female               NA                0.5778192   0.3605497   0.9260167
6 months    ki1000109-ResPak           Male                 NA                1.0000000   0.7266964   1.3760904
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.6522727   0.3253100   1.3078594
6 months    ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.5352907   1.8681436
6 months    ki1017093-NIH-Birth        Female               NA                0.7945578   0.4775532   1.3219933
6 months    ki1017093-NIH-Birth        Male                 NA                1.0000000   0.6620482   1.5104640
6 months    ki1017093c-NIH-Crypto      Female               NA                0.5200737   0.2619722   1.0324629
6 months    ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.6092428   1.6413818
6 months    ki1101329-Keneba           Female               NA                0.5923728   0.4021912   0.8724843
6 months    ki1101329-Keneba           Male                 NA                1.0000000   0.7512030   1.3311981
6 months    ki1114097-CMIN             Female               NA                0.3259138   0.1899864   0.5590917
6 months    ki1114097-CMIN             Male                 NA                1.0000000   0.7492181   1.3347249
6 months    ki1126311-ZVITAMBO         Female               NA                0.7012345   0.4898420   1.0038538
6 months    ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.7462049   1.3401144
6 months    ki1135781-COHORTS          Female               NA                0.6162092   0.5350160   0.7097241
6 months    ki1135781-COHORTS          Male                 NA                1.0000000   0.9008165   1.1101040
6 months    ki1148112-LCNI-5           Female               NA                0.2512019   0.1140667   0.5532064
6 months    ki1148112-LCNI-5           Male                 NA                1.0000000   0.6860142   1.4576958
9 months    ki0047075b-MAL-ED          Female               NA                0.3182718   0.1988257   0.5094762
9 months    ki0047075b-MAL-ED          Male                 NA                1.0000000   0.7745487   1.2910745
9 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.4242424   0.2562694   0.7023143
9 months    ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.7339473   1.3624957
9 months    ki1000108-IRC              Female               NA                0.9663503   0.5946974   1.5702657
9 months    ki1000108-IRC              Male                 NA                1.0000000   0.6500645   1.5383089
9 months    ki1000109-EE               Female               NA                0.9402235   0.7299507   1.2110684
9 months    ki1000109-EE               Male                 NA                1.0000000   0.7885395   1.2681673
9 months    ki1000109-ResPak           Female               NA                0.7353535   0.4425248   1.2219537
9 months    ki1000109-ResPak           Male                 NA                1.0000000   0.6715595   1.4890713
9 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.9421296   0.5590425   1.5877296
9 months    ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.5645599   1.7712911
9 months    ki1017093-NIH-Birth        Female               NA                0.5310813   0.3194408   0.8829408
9 months    ki1017093-NIH-Birth        Male                 NA                1.0000000   0.7176048   1.3935246
9 months    ki1017093c-NIH-Crypto      Female               NA                0.5400372   0.2929868   0.9954040
9 months    ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.6375129   1.5685958
9 months    ki1101329-Keneba           Female               NA                0.5859289   0.4231130   0.8113970
9 months    ki1101329-Keneba           Male                 NA                1.0000000   0.7869844   1.2706732
9 months    ki1113344-GMS-Nepal        Female               NA                0.3818262   0.2008142   0.7260007
9 months    ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.6927987   1.4434208
9 months    ki1114097-CMIN             Female               NA                0.6164863   0.4410568   0.8616926
9 months    ki1114097-CMIN             Male                 NA                1.0000000   0.7791684   1.2834196
9 months    ki1126311-ZVITAMBO         Female               NA                0.4319126   0.2955700   0.6311482
9 months    ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.7841622   1.2752463
9 months    ki1135781-COHORTS          Female               NA                0.6042102   0.5380416   0.6785161
9 months    ki1135781-COHORTS          Male                 NA                1.0000000   0.9194310   1.0876292
9 months    ki1148112-LCNI-5           Female               NA                0.3798670   0.1600663   0.9014948
9 months    ki1148112-LCNI-5           Male                 NA                1.0000000   0.5934183   1.6851520
12 months   ki0047075b-MAL-ED          Female               NA                0.4951265   0.3544933   0.6915513
12 months   ki0047075b-MAL-ED          Male                 NA                1.0000000   0.7977965   1.2534525
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.5035872   0.3578355   0.7087057
12 months   ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.8014535   1.2477331
12 months   ki1000108-IRC              Female               NA                0.8615385   0.5205190   1.4259777
12 months   ki1000108-IRC              Male                 NA                1.0000000   0.6578656   1.5200674
12 months   ki1000109-EE               Female               NA                1.1624319   0.9540981   1.4162568
12 months   ki1000109-EE               Male                 NA                1.0000000   0.8059653   1.2407482
12 months   ki1000109-ResPak           Female               NA                0.5055556   0.2477481   1.0316384
12 months   ki1000109-ResPak           Male                 NA                1.0000000   0.6364227   1.5712828
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.8441176   0.6069607   1.1739385
12 months   ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.7295170   1.3707700
12 months   ki1017093-NIH-Birth        Female               NA                0.8444444   0.5555300   1.2836147
12 months   ki1017093-NIH-Birth        Male                 NA                1.0000000   0.7041815   1.4200884
12 months   ki1017093c-NIH-Crypto      Female               NA                0.7607481   0.4848205   1.1937154
12 months   ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.6735287   1.4847177
12 months   ki1101329-Keneba           Female               NA                0.7117132   0.5449608   0.9294902
12 months   ki1101329-Keneba           Male                 NA                1.0000000   0.8067657   1.2395173
12 months   ki1113344-GMS-Nepal        Female               NA                0.6981223   0.4577965   1.0646100
12 months   ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.7167903   1.3951081
12 months   ki1114097-CMIN             Female               NA                0.8757560   0.6700134   1.1446765
12 months   ki1114097-CMIN             Male                 NA                1.0000000   0.7901897   1.2655189
12 months   ki1126311-ZVITAMBO         Female               NA                0.5920709   0.4390556   0.7984134
12 months   ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.7903550   1.2652543
12 months   ki1135781-COHORTS          Female               NA                0.7378473   0.6760709   0.8052685
12 months   ki1135781-COHORTS          Male                 NA                1.0000000   0.9322123   1.0727170
12 months   ki1148112-LCNI-5           Female               NA                0.3037475   0.1544940   0.5971917
12 months   ki1148112-LCNI-5           Male                 NA                1.0000000   0.7039835   1.4204879
18 months   ki0047075b-MAL-ED          Female               NA                0.5087649   0.3999110   0.6472483
18 months   ki0047075b-MAL-ED          Male                 NA                1.0000000   0.8507960   1.1753699
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6993243   0.5421822   0.9020114
18 months   ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.8202711   1.2191091
18 months   ki1000108-IRC              Female               NA                0.9482265   0.5834735   1.5410017
18 months   ki1000108-IRC              Male                 NA                1.0000000   0.6502390   1.5378960
18 months   ki1000109-EE               Female               NA                1.0228502   0.8791346   1.1900595
18 months   ki1000109-EE               Male                 NA                1.0000000   0.8588498   1.1643480
18 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.8403361   0.5986149   1.1796646
18 months   ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.7096761   1.4090935
18 months   ki1017093-NIH-Birth        Female               NA                0.9349967   0.7209848   1.2125342
18 months   ki1017093-NIH-Birth        Male                 NA                1.0000000   0.7938701   1.2596520
18 months   ki1017093b-PROVIDE         Female               NA                0.4500000   0.1938431   1.0446591
18 months   ki1017093b-PROVIDE         Male                 NA                1.0000000   0.6322726   1.5815963
18 months   ki1017093c-NIH-Crypto      Female               NA                0.8920455   0.5833792   1.3640272
18 months   ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.6681253   1.4967251
18 months   ki1101329-Keneba           Female               NA                0.5544451   0.4321076   0.7114185
18 months   ki1101329-Keneba           Male                 NA                1.0000000   0.8391732   1.1916491
18 months   ki1113344-GMS-Nepal        Female               NA                0.8569607   0.6382113   1.1506874
18 months   ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.7700417   1.2986310
18 months   ki1114097-CMIN             Female               NA                0.8916292   0.7275389   1.0927288
18 months   ki1114097-CMIN             Male                 NA                1.0000000   0.8304343   1.2041892
18 months   ki1126311-ZVITAMBO         Female               NA                0.7004432   0.5121482   0.9579661
18 months   ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.7355947   1.3594442
18 months   ki1135781-COHORTS          Female               NA                0.8444272   0.7733815   0.9219995
18 months   ki1135781-COHORTS          Male                 NA                1.0000000   0.9280424   1.0775370
18 months   ki1148112-LCNI-5           Female               NA                0.4321670   0.2705136   0.6904210
18 months   ki1148112-LCNI-5           Male                 NA                1.0000000   0.7469539   1.3387708
24 months   ki0047075b-MAL-ED          Female               NA                0.6543739   0.5198676   0.8236813
24 months   ki0047075b-MAL-ED          Male                 NA                1.0000000   0.8380227   1.1932852
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6621622   0.5205504   0.8422983
24 months   ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.8377470   1.1936778
24 months   ki1000108-IRC              Female               NA                0.6278278   0.3791898   1.0394999
24 months   ki1000108-IRC              Male                 NA                1.0000000   0.7017585   1.4249917
24 months   ki1017093-NIH-Birth        Female               NA                1.0320000   0.7923939   1.3440588
24 months   ki1017093-NIH-Birth        Male                 NA                1.0000000   0.7818621   1.2789979
24 months   ki1017093c-NIH-Crypto      Female               NA                1.1600962   0.7521463   1.7893102
24 months   ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.6220286   1.6076432
24 months   ki1101329-Keneba           Female               NA                0.8309470   0.6497951   1.0626011
24 months   ki1101329-Keneba           Male                 NA                1.0000000   0.8088170   1.2363737
24 months   ki1113344-GMS-Nepal        Female               NA                0.9133047   0.6250164   1.3345657
24 months   ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.7136271   1.4012920
24 months   ki1114097-CMIN             Female               NA                0.8091451   0.6422161   1.0194634
24 months   ki1114097-CMIN             Male                 NA                1.0000000   0.8244679   1.2129036
24 months   ki1126311-ZVITAMBO         Female               NA                0.4729730   0.2651087   0.8438178
24 months   ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.6186245   1.6164895
24 months   ki1135781-COHORTS          Female               NA                0.9459192   0.8925819   1.0024438
24 months   ki1135781-COHORTS          Male                 NA                1.0000000   0.9480945   1.0547472
24 months   ki1148112-LCNI-5           Female               NA                0.5237307   0.3111984   0.8814114
24 months   ki1148112-LCNI-5           Male                 NA                1.0000000   0.6932706   1.4424383


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          NA                   NA                 0.0028726    0.0027260    0.0030191
Birth       ki1000108-IRC              NA                   NA                -0.0006234   -0.0006926   -0.0005541
Birth       ki1101329-Keneba           NA                   NA                 0.0026297    0.0024927    0.0027667
Birth       ki1126311-ZVITAMBO         NA                   NA                -0.0016622   -0.0017198   -0.0016047
Birth       ki1135781-COHORTS          NA                   NA                -0.0015246   -0.0015558   -0.0014934
3 months    ki0047075b-MAL-ED          NA                   NA                -0.0123735   -0.0129488   -0.0117982
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0317448   -0.0349835   -0.0285061
3 months    ki1000108-IRC              NA                   NA                -0.0137701   -0.0152594   -0.0122808
3 months    ki1000109-EE               NA                   NA                -0.0466659   -0.0515423   -0.0417896
3 months    ki1000109-ResPak           NA                   NA                -0.0531674   -0.0599486   -0.0463863
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0287701   -0.0339057   -0.0236345
3 months    ki1017093-NIH-Birth        NA                   NA                -0.0085504   -0.0092936   -0.0078073
3 months    ki1017093c-NIH-Crypto      NA                   NA                -0.0077430   -0.0082966   -0.0071893
3 months    ki1101329-Keneba           NA                   NA                -0.0083514   -0.0087159   -0.0079868
3 months    ki1113344-GMS-Nepal        NA                   NA                -0.0119762   -0.0129998   -0.0109526
3 months    ki1114097-CMIN             NA                   NA                 0.0001924    0.0001822    0.0002026
3 months    ki1126311-ZVITAMBO         NA                   NA                -0.0056918   -0.0059317   -0.0054519
3 months    ki1135781-COHORTS          NA                   NA                -0.0063464   -0.0064739   -0.0062190
6 months    ki0047075b-MAL-ED          NA                   NA                -0.0115987   -0.0121535   -0.0110439
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0391843   -0.0431554   -0.0352133
6 months    ki1000108-IRC              NA                   NA                -0.0046398   -0.0051391   -0.0041405
6 months    ki1000109-EE               NA                   NA                -0.0209960   -0.0231790   -0.0188131
6 months    ki1000109-ResPak           NA                   NA                -0.0466369   -0.0529526   -0.0403213
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0388720   -0.0456209   -0.0321230
6 months    ki1017093-NIH-Birth        NA                   NA                -0.0067409   -0.0073639   -0.0061179
6 months    ki1017093c-NIH-Crypto      NA                   NA                -0.0103251   -0.0110730   -0.0095772
6 months    ki1101329-Keneba           NA                   NA                -0.0082351   -0.0085999   -0.0078704
6 months    ki1114097-CMIN             NA                   NA                -0.0146448   -0.0153486   -0.0139410
6 months    ki1126311-ZVITAMBO         NA                   NA                -0.0060213   -0.0062870   -0.0057555
6 months    ki1135781-COHORTS          NA                   NA                -0.0114855   -0.0117212   -0.0112499
6 months    ki1148112-LCNI-5           NA                   NA                -0.0428901   -0.0470215   -0.0387587
9 months    ki0047075b-MAL-ED          NA                   NA                -0.0222033   -0.0232941   -0.0211126
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0519126   -0.0572382   -0.0465869
9 months    ki1000108-IRC              NA                   NA                -0.0012833   -0.0014215   -0.0011452
9 months    ki1000109-EE               NA                   NA                -0.0078168   -0.0086365   -0.0069972
9 months    ki1000109-ResPak           NA                   NA                -0.0221733   -0.0253631   -0.0189835
9 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0079491   -0.0094416   -0.0064566
9 months    ki1017093-NIH-Birth        NA                   NA                -0.0243813   -0.0266850   -0.0220776
9 months    ki1017093c-NIH-Crypto      NA                   NA                -0.0120641   -0.0129421   -0.0111861
9 months    ki1101329-Keneba           NA                   NA                -0.0119662   -0.0124961   -0.0114363
9 months    ki1113344-GMS-Nepal        NA                   NA                -0.0264445   -0.0287657   -0.0241234
9 months    ki1114097-CMIN             NA                   NA                -0.0111209   -0.0116491   -0.0105927
9 months    ki1126311-ZVITAMBO         NA                   NA                -0.0174210   -0.0181969   -0.0166450
9 months    ki1135781-COHORTS          NA                   NA                -0.0191821   -0.0195947   -0.0187694
9 months    ki1148112-LCNI-5           NA                   NA                -0.0253494   -0.0281053   -0.0225935
12 months   ki0047075b-MAL-ED          NA                   NA                -0.0208228   -0.0218561   -0.0197895
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0750030   -0.0826349   -0.0673711
12 months   ki1000108-IRC              NA                   NA                -0.0055419   -0.0061406   -0.0049431
12 months   ki1000109-EE               NA                   NA                 0.0246590    0.0220321    0.0272860
12 months   ki1000109-ResPak           NA                   NA                -0.0352895   -0.0406414   -0.0299375
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0421527   -0.0499180   -0.0343874
12 months   ki1017093-NIH-Birth        NA                   NA                -0.0075035   -0.0082259   -0.0067811
12 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0080183   -0.0086019   -0.0074347
12 months   ki1101329-Keneba           NA                   NA                -0.0106048   -0.0110931   -0.0101165
12 months   ki1113344-GMS-Nepal        NA                   NA                -0.0154987   -0.0168376   -0.0141598
12 months   ki1114097-CMIN             NA                   NA                -0.0044953   -0.0047302   -0.0042604
12 months   ki1126311-ZVITAMBO         NA                   NA                -0.0166070   -0.0173659   -0.0158481
12 months   ki1135781-COHORTS          NA                   NA                -0.0187372   -0.0191545   -0.0183199
12 months   ki1148112-LCNI-5           NA                   NA                -0.0591537   -0.0657069   -0.0526006
18 months   ki0047075b-MAL-ED          NA                   NA                -0.0380972   -0.0400290   -0.0361653
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0524331   -0.0577757   -0.0470905
18 months   ki1000108-IRC              NA                   NA                -0.0020222   -0.0022383   -0.0018061
18 months   ki1000109-EE               NA                   NA                 0.0054254    0.0048463    0.0060044
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0452381   -0.0534633   -0.0370128
18 months   ki1017093-NIH-Birth        NA                   NA                -0.0067570   -0.0074217   -0.0060924
18 months   ki1017093b-PROVIDE         NA                   NA                -0.0433412   -0.0516829   -0.0349996
18 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0038176   -0.0041122   -0.0035230
18 months   ki1101329-Keneba           NA                   NA                -0.0242377   -0.0253539   -0.0231215
18 months   ki1113344-GMS-Nepal        NA                   NA                -0.0115323   -0.0125254   -0.0105391
18 months   ki1114097-CMIN             NA                   NA                -0.0063248   -0.0066434   -0.0060062
18 months   ki1126311-ZVITAMBO         NA                   NA                -0.0342134   -0.0368985   -0.0315283
18 months   ki1135781-COHORTS          NA                   NA                -0.0230923   -0.0239668   -0.0222177
18 months   ki1148112-LCNI-5           NA                   NA                -0.0588872   -0.0649192   -0.0528552
24 months   ki0047075b-MAL-ED          NA                   NA                -0.0234115   -0.0246310   -0.0221921
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0672043   -0.0740428   -0.0603658
24 months   ki1000108-IRC              NA                   NA                -0.0202912   -0.0224577   -0.0181247
24 months   ki1017093-NIH-Birth        NA                   NA                 0.0031080    0.0027855    0.0034306
24 months   ki1017093c-NIH-Crypto      NA                   NA                 0.0051013    0.0046649    0.0055376
24 months   ki1101329-Keneba           NA                   NA                -0.0069584   -0.0073027   -0.0066142
24 months   ki1113344-GMS-Nepal        NA                   NA                -0.0045655   -0.0049940   -0.0041371
24 months   ki1114097-CMIN             NA                   NA                -0.0123534   -0.0130884   -0.0116184
24 months   ki1126311-ZVITAMBO         NA                   NA                -0.0960591   -0.1092857   -0.0828326
24 months   ki1135781-COHORTS          NA                   NA                -0.0060910   -0.0062286   -0.0059534
24 months   ki1148112-LCNI-5           NA                   NA                -0.0398044   -0.0442633   -0.0353456


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          NA                   NA                 0.0936078    0.0892693    0.0979257
Birth       ki1000108-IRC              NA                   NA                -0.0151163   -0.0168220   -0.0134134
Birth       ki1101329-Keneba           NA                   NA                 0.1397346    0.1334492    0.1459745
Birth       ki1126311-ZVITAMBO         NA                   NA                -0.0511881   -0.0530521   -0.0493274
Birth       ki1135781-COHORTS          NA                   NA                -0.0601324   -0.0614359   -0.0588306
3 months    ki0047075b-MAL-ED          NA                   NA                -0.3333333   -0.3541586   -0.3128283
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.3482309   -0.3969910   -0.3011727
3 months    ki1000108-IRC              NA                   NA                -0.1556790   -0.1753022   -0.1363835
3 months    ki1000109-EE               NA                   NA                -0.1438229   -0.1611430   -0.1267611
3 months    ki1000109-ResPak           NA                   NA                -0.2513369   -0.2921000   -0.2118598
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.2146691   -0.2621178   -0.1690041
3 months    ki1017093-NIH-Birth        NA                   NA                -0.1476895   -0.1625169   -0.1330513
3 months    ki1017093c-NIH-Crypto      NA                   NA                -0.1708143   -0.1852019   -0.1566013
3 months    ki1101329-Keneba           NA                   NA                -0.2540205   -0.2680024   -0.2401927
3 months    ki1113344-GMS-Nepal        NA                   NA                -0.3108356   -0.3461275   -0.2764690
3 months    ki1114097-CMIN             NA                   NA                 0.0046083    0.0043661    0.0048505
3 months    ki1126311-ZVITAMBO         NA                   NA                -0.1133864   -0.1187198   -0.1080785
3 months    ki1135781-COHORTS          NA                   NA                -0.1756468   -0.1798016   -0.1715066
6 months    ki0047075b-MAL-ED          NA                   NA                -0.3934272   -0.4198972   -0.3674507
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.3442623   -0.3919894   -0.2981716
6 months    ki1000108-IRC              NA                   NA                -0.0651170   -0.0726073   -0.0576790
6 months    ki1000109-EE               NA                   NA                -0.0830907   -0.0924879   -0.0737744
6 months    ki1000109-ResPak           NA                   NA                -0.2490836   -0.2919356   -0.2076529
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.2487805   -0.3039009   -0.1959902
6 months    ki1017093-NIH-Birth        NA                   NA                -0.1034247   -0.1140225   -0.0929276
6 months    ki1017093c-NIH-Crypto      NA                   NA                -0.3209755   -0.3520466   -0.2906184
6 months    ki1101329-Keneba           NA                   NA                -0.2457593   -0.2593934   -0.2322728
6 months    ki1114097-CMIN             NA                   NA                -0.4717167   -0.5054589   -0.4387308
6 months    ki1126311-ZVITAMBO         NA                   NA                -0.1716061   -0.1805123   -0.1627671
6 months    ki1135781-COHORTS          NA                   NA                -0.2237335   -0.2293637   -0.2181290
6 months    ki1148112-LCNI-5           NA                   NA                -0.5961722   -0.6905184   -0.5070915
9 months    ki0047075b-MAL-ED          NA                   NA                -0.5057425   -0.5436217   -0.4687928
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.4042553   -0.4637174   -0.3472088
9 months    ki1000108-IRC              NA                   NA                -0.0153624   -0.0170424   -0.0136851
9 months    ki1000109-EE               NA                   NA                -0.0301154   -0.0333734   -0.0268676
9 months    ki1000109-ResPak           NA                   NA                -0.1417749   -0.1653008   -0.1187240
9 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0337838   -0.0403619   -0.0272472
9 months    ki1017093-NIH-Birth        NA                   NA                -0.2746959   -0.3082138   -0.2420367
9 months    ki1017093c-NIH-Crypto      NA                   NA                -0.3041872   -0.3333815   -0.2756321
9 months    ki1101329-Keneba           NA                   NA                -0.2523899   -0.2664660   -0.2384703
9 months    ki1113344-GMS-Nepal        NA                   NA                -0.4163124   -0.4690236   -0.3654926
9 months    ki1114097-CMIN             NA                   NA                -0.2255952   -0.2387983   -0.2125329
9 months    ki1126311-ZVITAMBO         NA                   NA                -0.3930732   -0.4176786   -0.3688949
9 months    ki1135781-COHORTS          NA                   NA                -0.2319079   -0.2380692   -0.2257773
9 months    ki1148112-LCNI-5           NA                   NA                -0.4534722   -0.5269244   -0.3835534
12 months   ki0047075b-MAL-ED          NA                   NA                -0.3298983   -0.3518489   -0.3083042
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.3325433   -0.3784053   -0.2882072
12 months   ki1000108-IRC              NA                   NA                -0.0661765   -0.0738271   -0.0585804
12 months   ki1000109-EE               NA                   NA                 0.0733607    0.0660905    0.0805743
12 months   ki1000109-ResPak           NA                   NA                -0.2976589   -0.3575805   -0.2403821
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0945866   -0.1138265   -0.0756790
12 months   ki1017093-NIH-Birth        NA                   NA                -0.0767544   -0.0847403   -0.0688273
12 months   ki1017093c-NIH-Crypto      NA                   NA                -0.1380712   -0.1495649   -0.1266925
12 months   ki1101329-Keneba           NA                   NA                -0.1613912   -0.1700539   -0.1527927
12 months   ki1113344-GMS-Nepal        NA                   NA                -0.1695740   -0.1868334   -0.1525657
12 months   ki1114097-CMIN             NA                   NA                -0.0622239   -0.0656834   -0.0587757
12 months   ki1126311-ZVITAMBO         NA                   NA                -0.2690330   -0.2847316   -0.2535263
12 months   ki1135781-COHORTS          NA                   NA                -0.1430779   -0.1467263   -0.1394411
12 months   ki1148112-LCNI-5           NA                   NA                -0.5393430   -0.6341207   -0.4500623
18 months   ki0047075b-MAL-ED          NA                   NA                -0.3183688   -0.3398256   -0.2972555
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.1775030   -0.1989936   -0.1563976
18 months   ki1000108-IRC              NA                   NA                -0.0240884   -0.0267280   -0.0214555
18 months   ki1000109-EE               NA                   NA                 0.0111045    0.0099318    0.0122759
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                -0.1027027   -0.1234875   -0.0823024
18 months   ki1017093-NIH-Birth        NA                   NA                -0.0309754   -0.0341213   -0.0278390
18 months   ki1017093b-PROVIDE         NA                   NA                -0.3055556   -0.3846360   -0.2309916
18 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0576281   -0.0623419   -0.0529353
18 months   ki1101329-Keneba           NA                   NA                -0.2757934   -0.2921004   -0.2596923
18 months   ki1113344-GMS-Nepal        NA                   NA                -0.0746207   -0.0815487   -0.0677370
18 months   ki1114097-CMIN             NA                   NA                -0.0557349   -0.0587029   -0.0527752
18 months   ki1126311-ZVITAMBO         NA                   NA                -0.2170253   -0.2379319   -0.1964718
18 months   ki1135781-COHORTS          NA                   NA                -0.0803018   -0.0835923   -0.0770213
18 months   ki1148112-LCNI-5           NA                   NA                -0.4042832   -0.4636583   -0.3473168
24 months   ki0047075b-MAL-ED          NA                   NA                -0.2026730   -0.2154368   -0.1900433
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.2032520   -0.2283970   -0.1786218
24 months   ki1000108-IRC              NA                   NA                -0.2024172   -0.2286873   -0.1767089
24 months   ki1017093-NIH-Birth        NA                   NA                 0.0143369    0.0128693    0.0158024
24 months   ki1017093c-NIH-Crypto      NA                   NA                 0.0749156    0.0689691    0.0808242
24 months   ki1101329-Keneba           NA                   NA                -0.0876155   -0.0923403   -0.0829111
24 months   ki1113344-GMS-Nepal        NA                   NA                -0.0421888   -0.0463231   -0.0380709
24 months   ki1114097-CMIN             NA                   NA                -0.0986655   -0.1051342   -0.0922347
24 months   ki1126311-ZVITAMBO         NA                   NA                -0.5064935   -0.6153065   -0.4050105
24 months   ki1135781-COHORTS          NA                   NA                -0.0263943   -0.0270064   -0.0257826
24 months   ki1148112-LCNI-5           NA                   NA                -0.3195113   -0.3675935   -0.2731195


