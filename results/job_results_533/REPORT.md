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

**Outcome Variable:** stunted

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

* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1114097-CONTENT

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/083bd048-6871-49aa-8d8a-4609bcbee12a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/083bd048-6871-49aa-8d8a-4609bcbee12a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/083bd048-6871-49aa-8d8a-4609bcbee12a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/083bd048-6871-49aa-8d8a-4609bcbee12a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n     nA   nAY0   nAY1
----------  -------------------------  -------  ------  -----  -----  -----
Birth       ki0047075b-MAL-ED          Female     1499    744    647     97
Birth       ki0047075b-MAL-ED          Male       1499    755    653    102
Birth       ki1000108-CMC-V-BCS-2002   Female       90     45     40      5
Birth       ki1000108-CMC-V-BCS-2002   Male         90     45     34     11
Birth       ki1000108-IRC              Female      388    173    156     17
Birth       ki1000108-IRC              Male        388    215    187     28
Birth       ki1000109-EE               Female        2      0      0      0
Birth       ki1000109-EE               Male          2      2      1      1
Birth       ki1000109-ResPak           Female        7      3      2      1
Birth       ki1000109-ResPak           Male          7      4      3      1
Birth       ki1000304b-SAS-FoodSuppl   Female        0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Male          0      0      0      0
Birth       ki1017093-NIH-Birth        Female       28     12     12      0
Birth       ki1017093-NIH-Birth        Male         28     16     15      1
Birth       ki1017093b-PROVIDE         Female        0      0      0      0
Birth       ki1017093b-PROVIDE         Male          0      0      0      0
Birth       ki1017093c-NIH-Crypto      Female       27     13      9      4
Birth       ki1017093c-NIH-Crypto      Male         27     14     13      1
Birth       ki1066203-TanzaniaChild2   Female        0      0      0      0
Birth       ki1066203-TanzaniaChild2   Male          0      0      0      0
Birth       ki1101329-Keneba           Female     1541    738    696     42
Birth       ki1101329-Keneba           Male       1541    803    763     40
Birth       ki1112895-Guatemala BSC    Female        0      0      0      0
Birth       ki1112895-Guatemala BSC    Male          0      0      0      0
Birth       ki1113344-GMS-Nepal        Female        0      0      0      0
Birth       ki1113344-GMS-Nepal        Male          0      0      0      0
Birth       ki1114097-CMIN             Female      138     72     68      4
Birth       ki1114097-CMIN             Male        138     66     59      7
Birth       ki1114097-CONTENT          Female        2      2      2      0
Birth       ki1114097-CONTENT          Male          2      0      0      0
Birth       ki1126311-ZVITAMBO         Female     3449   1662   1507    155
Birth       ki1126311-ZVITAMBO         Male       3449   1787   1582    205
Birth       ki1135781-COHORTS          Female    10097   4814   4383    431
Birth       ki1135781-COHORTS          Male      10097   5283   4716    567
Birth       ki1148112-LCNI-5           Female        0      0      0      0
Birth       ki1148112-LCNI-5           Male          0      0      0      0
3 months    ki0047075b-MAL-ED          Female     1778    889    781    108
3 months    ki0047075b-MAL-ED          Male       1778    889    721    168
3 months    ki1000108-CMC-V-BCS-2002   Female      362    183    148     35
3 months    ki1000108-CMC-V-BCS-2002   Male        362    179    124     55
3 months    ki1000108-IRC              Female      407    182    145     37
3 months    ki1000108-IRC              Male        407    225    171     54
3 months    ki1000109-EE               Female      376    182     84     98
3 months    ki1000109-EE               Male        376    194     75    119
3 months    ki1000109-ResPak           Female      260    124     74     50
3 months    ki1000109-ResPak           Male        260    136     80     56
3 months    ki1000304b-SAS-FoodSuppl   Female       97     54     34     20
3 months    ki1000304b-SAS-FoodSuppl   Male         97     43     25     18
3 months    ki1017093-NIH-Birth        Female      570    269    226     43
3 months    ki1017093-NIH-Birth        Male        570    301    214     87
3 months    ki1017093b-PROVIDE         Female      168     71     66      5
3 months    ki1017093b-PROVIDE         Male        168     97     82     15
3 months    ki1017093c-NIH-Crypto      Female      728    370    299     71
3 months    ki1017093c-NIH-Crypto      Male        728    358    273     85
3 months    ki1066203-TanzaniaChild2   Female      575    285    268     17
3 months    ki1066203-TanzaniaChild2   Male        575    290    268     22
3 months    ki1101329-Keneba           Female     2190   1050    920    130
3 months    ki1101329-Keneba           Male       2190   1140    954    186
3 months    ki1112895-Guatemala BSC    Female        6      3      2      1
3 months    ki1112895-Guatemala BSC    Male          6      3      2      1
3 months    ki1113344-GMS-Nepal        Female      571    274    240     34
3 months    ki1113344-GMS-Nepal        Male        571    297    247     50
3 months    ki1114097-CMIN             Female     1485    715    621     94
3 months    ki1114097-CMIN             Male       1485    770    662    108
3 months    ki1114097-CONTENT          Female      215    106    104      2
3 months    ki1114097-CONTENT          Male        215    109     91     18
3 months    ki1126311-ZVITAMBO         Female     2271   1108    945    163
3 months    ki1126311-ZVITAMBO         Male       2271   1163    935    228
3 months    ki1135781-COHORTS          Female    10351   4960   4322    638
3 months    ki1135781-COHORTS          Male      10351   5391   4482    909
3 months    ki1148112-LCNI-5           Female        0      0      0      0
3 months    ki1148112-LCNI-5           Male          0      0      0      0
6 months    ki0047075b-MAL-ED          Female     1696    844    740    104
6 months    ki0047075b-MAL-ED          Male       1696    852    679    173
6 months    ki1000108-CMC-V-BCS-2002   Female      369    186    139     47
6 months    ki1000108-CMC-V-BCS-2002   Male        369    183    119     64
6 months    ki1000108-IRC              Female      407    183    144     39
6 months    ki1000108-IRC              Male        407    224    163     61
6 months    ki1000109-EE               Female      372    182     90     92
6 months    ki1000109-EE               Male        372    190     89    101
6 months    ki1000109-ResPak           Female      235    111     76     35
6 months    ki1000109-ResPak           Male        235    124     76     48
6 months    ki1000304b-SAS-FoodSuppl   Female       96     55     28     27
6 months    ki1000304b-SAS-FoodSuppl   Male         96     41     20     21
6 months    ki1017093-NIH-Birth        Female      537    245    197     48
6 months    ki1017093-NIH-Birth        Male        537    292    196     96
6 months    ki1017093b-PROVIDE         Female      153     66     58      8
6 months    ki1017093b-PROVIDE         Male        153     87     67     20
6 months    ki1017093c-NIH-Crypto      Female      715    362    294     68
6 months    ki1017093c-NIH-Crypto      Male        715    353    271     82
6 months    ki1066203-TanzaniaChild2   Female      504    244    226     18
6 months    ki1066203-TanzaniaChild2   Male        504    260    233     27
6 months    ki1101329-Keneba           Female     2089   1011    887    124
6 months    ki1101329-Keneba           Male       2089   1078    907    171
6 months    ki1112895-Guatemala BSC    Female      106     53     40     13
6 months    ki1112895-Guatemala BSC    Male        106     53     36     17
6 months    ki1113344-GMS-Nepal        Female      563    273    219     54
6 months    ki1113344-GMS-Nepal        Male        563    290    225     65
6 months    ki1114097-CMIN             Female     1836    873    794     79
6 months    ki1114097-CMIN             Male       1836    963    820    143
6 months    ki1114097-CONTENT          Female      215    106    105      1
6 months    ki1114097-CONTENT          Male        215    109     91     18
6 months    ki1126311-ZVITAMBO         Female     2052   1006    864    142
6 months    ki1126311-ZVITAMBO         Male       2052   1046    853    193
6 months    ki1135781-COHORTS          Female    10032   4779   3933    846
6 months    ki1135781-COHORTS          Male      10032   5253   4044   1209
6 months    ki1148112-LCNI-5           Female      417    208    149     59
6 months    ki1148112-LCNI-5           Male        417    209    113     96
9 months    ki0047075b-MAL-ED          Female     1640    808    671    137
9 months    ki0047075b-MAL-ED          Male       1640    832    630    202
9 months    ki1000108-CMC-V-BCS-2002   Female      366    183    129     54
9 months    ki1000108-CMC-V-BCS-2002   Male        366    183    102     81
9 months    ki1000108-IRC              Female      407    183    132     51
9 months    ki1000108-IRC              Male        407    224    164     60
9 months    ki1000109-EE               Female      366    179     72    107
9 months    ki1000109-EE               Male        366    187     77    110
9 months    ki1000109-ResPak           Female      211     99     67     32
9 months    ki1000109-ResPak           Male        211    112     74     38
9 months    ki1000304b-SAS-FoodSuppl   Female       85     48     16     32
9 months    ki1000304b-SAS-FoodSuppl   Male         85     37     12     25
9 months    ki1017093-NIH-Birth        Female      507    233    157     76
9 months    ki1017093-NIH-Birth        Male        507    274    169    105
9 months    ki1017093b-PROVIDE         Female      158     67     55     12
9 months    ki1017093b-PROVIDE         Male        158     91     66     25
9 months    ki1017093c-NIH-Crypto      Female      706    358    271     87
9 months    ki1017093c-NIH-Crypto      Male        706    348    271     77
9 months    ki1066203-TanzaniaChild2   Female      434    208    184     24
9 months    ki1066203-TanzaniaChild2   Male        434    226    187     39
9 months    ki1101329-Keneba           Female     2067   1006    840    166
9 months    ki1101329-Keneba           Male       2067   1061    855    206
9 months    ki1112895-Guatemala BSC    Female       60     31     23      8
9 months    ki1112895-Guatemala BSC    Male         60     29     15     14
9 months    ki1113344-GMS-Nepal        Female      551    262    189     73
9 months    ki1113344-GMS-Nepal        Male        551    289    207     82
9 months    ki1114097-CMIN             Female     1846    886    756    130
9 months    ki1114097-CMIN             Male       1846    960    767    193
9 months    ki1114097-CONTENT          Female      214    105    105      0
9 months    ki1114097-CONTENT          Male        214    109     87     22
9 months    ki1126311-ZVITAMBO         Female     1963    975    818    157
9 months    ki1126311-ZVITAMBO         Male       1963    988    763    225
9 months    ki1135781-COHORTS          Female     9152   4353   3268   1085
9 months    ki1135781-COHORTS          Male       9152   4799   3323   1476
9 months    ki1148112-LCNI-5           Female      322    162    126     36
9 months    ki1148112-LCNI-5           Male        322    160     94     66
12 months   ki0047075b-MAL-ED          Female     1616    794    605    189
12 months   ki0047075b-MAL-ED          Male       1616    822    575    247
12 months   ki1000108-CMC-V-BCS-2002   Female      368    185    106     79
12 months   ki1000108-CMC-V-BCS-2002   Male        368    183     79    104
12 months   ki1000108-IRC              Female      406    182    128     54
12 months   ki1000108-IRC              Male        406    224    159     65
12 months   ki1000109-EE               Female      357    174     53    121
12 months   ki1000109-EE               Male        357    183     49    134
12 months   ki1000109-ResPak           Female      194     90     56     34
12 months   ki1000109-ResPak           Male        194    104     74     30
12 months   ki1000304b-SAS-FoodSuppl   Female       92     51     11     40
12 months   ki1000304b-SAS-FoodSuppl   Male         92     41      8     33
12 months   ki1017093-NIH-Birth        Female      491    225    138     87
12 months   ki1017093-NIH-Birth        Male        491    266    169     97
12 months   ki1017093b-PROVIDE         Female      153     65     49     16
12 months   ki1017093b-PROVIDE         Male        153     88     60     28
12 months   ki1017093c-NIH-Crypto      Female      706    358    273     85
12 months   ki1017093c-NIH-Crypto      Male        706    348    262     86
12 months   ki1066203-TanzaniaChild2   Female      357    166    145     21
12 months   ki1066203-TanzaniaChild2   Male        357    191    160     31
12 months   ki1101329-Keneba           Female     1948    939    727    212
12 months   ki1101329-Keneba           Male       1948   1009    738    271
12 months   ki1112895-Guatemala BSC    Female       53     26     17      9
12 months   ki1112895-Guatemala BSC    Male         53     27     13     14
12 months   ki1113344-GMS-Nepal        Female      558    268    181     87
12 months   ki1113344-GMS-Nepal        Male        558    290    186    104
12 months   ki1114097-CMIN             Female     1578    744    578    166
12 months   ki1114097-CMIN             Male       1578    834    608    226
12 months   ki1114097-CONTENT          Female      215    106    106      0
12 months   ki1114097-CONTENT          Male        215    109     83     26
12 months   ki1126311-ZVITAMBO         Female     1701    884    730    154
12 months   ki1126311-ZVITAMBO         Male       1701    817    566    251
12 months   ki1135781-COHORTS          Female     8476   4047   2637   1410
12 months   ki1135781-COHORTS          Male       8476   4429   2667   1762
12 months   ki1148112-LCNI-5           Female      310    156    105     51
12 months   ki1148112-LCNI-5           Male        310    154     78     76
18 months   ki0047075b-MAL-ED          Female     1546    760    502    258
18 months   ki0047075b-MAL-ED          Male       1546    786    446    340
18 months   ki1000108-CMC-V-BCS-2002   Female      369    185     70    115
18 months   ki1000108-CMC-V-BCS-2002   Male        369    184     45    139
18 months   ki1000108-IRC              Female      405    184    118     66
18 months   ki1000108-IRC              Male        405    221    143     78
18 months   ki1000109-EE               Female      350    172     24    148
18 months   ki1000109-EE               Male        350    178     29    149
18 months   ki1000109-ResPak           Female        9      3      2      1
18 months   ki1000109-ResPak           Male          9      6      5      1
18 months   ki1000304b-SAS-FoodSuppl   Female       84     49      6     43
18 months   ki1000304b-SAS-FoodSuppl   Male         84     35      4     31
18 months   ki1017093-NIH-Birth        Female      463    214     87    127
18 months   ki1017093-NIH-Birth        Male        463    249    104    145
18 months   ki1017093b-PROVIDE         Female      141     60     41     19
18 months   ki1017093b-PROVIDE         Male        141     81     48     33
18 months   ki1017093c-NIH-Crypto      Female      634    320    227     93
18 months   ki1017093c-NIH-Crypto      Male        634    314    216     98
18 months   ki1066203-TanzaniaChild2   Female      258    121     96     25
18 months   ki1066203-TanzaniaChild2   Male        258    137     94     43
18 months   ki1101329-Keneba           Female     1923    933    659    274
18 months   ki1101329-Keneba           Male       1923    990    644    346
18 months   ki1112895-Guatemala BSC    Female        0      0      0      0
18 months   ki1112895-Guatemala BSC    Male          0      0      0      0
18 months   ki1113344-GMS-Nepal        Female      550    267    124    143
18 months   ki1113344-GMS-Nepal        Male        550    283    134    149
18 months   ki1114097-CMIN             Female     1595    777    525    252
18 months   ki1114097-CMIN             Male       1595    818    505    313
18 months   ki1114097-CONTENT          Female      200    102     99      3
18 months   ki1114097-CONTENT          Male        200     98     74     24
18 months   ki1126311-ZVITAMBO         Female      425    253    147    106
18 months   ki1126311-ZVITAMBO         Male        425    172     76     96
18 months   ki1135781-COHORTS          Female     2928   1399    555    844
18 months   ki1135781-COHORTS          Male       2928   1529    543    986
18 months   ki1148112-LCNI-5           Female      357    181    104     77
18 months   ki1148112-LCNI-5           Male        357    176     77     99
24 months   ki0047075b-MAL-ED          Female     1489    726    489    237
24 months   ki0047075b-MAL-ED          Male       1489    763    441    322
24 months   ki1000108-CMC-V-BCS-2002   Female      372    186     58    128
24 months   ki1000108-CMC-V-BCS-2002   Male        372    186     48    138
24 months   ki1000108-IRC              Female      409    185    108     77
24 months   ki1000108-IRC              Male        409    224    131     93
24 months   ki1000109-EE               Female        0      0      0      0
24 months   ki1000109-EE               Male          0      0      0      0
24 months   ki1000109-ResPak           Female        0      0      0      0
24 months   ki1000109-ResPak           Male          0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Female        0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Male          0      0      0      0
24 months   ki1017093-NIH-Birth        Female      429    195     90    105
24 months   ki1017093-NIH-Birth        Male        429    234    101    133
24 months   ki1017093b-PROVIDE         Female      149     64     44     20
24 months   ki1017093b-PROVIDE         Male        149     85     56     29
24 months   ki1017093c-NIH-Crypto      Female      514    260    183     77
24 months   ki1017093c-NIH-Crypto      Male        514    254    199     55
24 months   ki1066203-TanzaniaChild2   Female        2      1      1      0
24 months   ki1066203-TanzaniaChild2   Male          2      1      1      0
24 months   ki1101329-Keneba           Female     1725    822    558    264
24 months   ki1101329-Keneba           Male       1725    903    590    313
24 months   ki1112895-Guatemala BSC    Female        0      0      0      0
24 months   ki1112895-Guatemala BSC    Male          0      0      0      0
24 months   ki1113344-GMS-Nepal        Female      499    233    128    105
24 months   ki1113344-GMS-Nepal        Male        499    266    148    118
24 months   ki1114097-CMIN             Female     1222    575    362    213
24 months   ki1114097-CMIN             Male       1222    647    371    276
24 months   ki1114097-CONTENT          Female      164     83     80      3
24 months   ki1114097-CONTENT          Male        164     81     63     18
24 months   ki1126311-ZVITAMBO         Female      116     74     34     40
24 months   ki1126311-ZVITAMBO         Male        116     42     14     28
24 months   ki1135781-COHORTS          Female     8307   3950   1883   2067
24 months   ki1135781-COHORTS          Male       8307   4357   2013   2344
24 months   ki1148112-LCNI-5           Female      297    151     87     64
24 months   ki1148112-LCNI-5           Male        297    146     79     67

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.1350993   0.1350993   0.1350993
Birth       ki0047075b-MAL-ED          Female               NA                0.1303763   0.1061732   0.1545795
Birth       ki0047075b-MAL-ED          Male                 NA                0.1350993   0.1107084   0.1594903
Birth       ki1000108-CMC-V-BCS-2002   NA                   NA                0.2444444   0.2444444   0.2444444
Birth       ki1000108-CMC-V-BCS-2002   Female               NA                0.1111111   0.0187752   0.2034470
Birth       ki1000108-CMC-V-BCS-2002   Male                 NA                0.2444444   0.1181770   0.3707119
Birth       ki1000108-IRC              NA                   NA                0.1302326   0.1302326   0.1302326
Birth       ki1000108-IRC              Female               NA                0.0982659   0.0538513   0.1426805
Birth       ki1000108-IRC              Male                 NA                0.1302326   0.0851871   0.1752780
Birth       ki1101329-Keneba           NA                   NA                0.0498132   0.0498132   0.0498132
Birth       ki1101329-Keneba           Female               NA                0.0569106   0.0401907   0.0736305
Birth       ki1101329-Keneba           Male                 NA                0.0498132   0.0347607   0.0648657
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1147174   0.1147174   0.1147174
Birth       ki1126311-ZVITAMBO         Female               NA                0.0932611   0.0792786   0.1072437
Birth       ki1126311-ZVITAMBO         Male                 NA                0.1147174   0.0999398   0.1294950
Birth       ki1135781-COHORTS          NA                   NA                0.1073254   0.1073254   0.1073254
Birth       ki1135781-COHORTS          Female               NA                0.0895305   0.0814650   0.0975961
Birth       ki1135781-COHORTS          Male                 NA                0.1073254   0.0989784   0.1156723
3 months    ki0047075b-MAL-ED          NA                   NA                0.1889764   0.1889764   0.1889764
3 months    ki0047075b-MAL-ED          Female               NA                0.1214848   0.1000038   0.1429658
3 months    ki0047075b-MAL-ED          Male                 NA                0.1889764   0.1632345   0.2147182
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3072626   0.3072626   0.3072626
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.1912568   0.1341961   0.2483175
3 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.3072626   0.2395824   0.3749427
3 months    ki1000108-IRC              NA                   NA                0.2400000   0.2400000   0.2400000
3 months    ki1000108-IRC              Female               NA                0.2032967   0.1447557   0.2618377
3 months    ki1000108-IRC              Male                 NA                0.2400000   0.1841268   0.2958732
3 months    ki1000109-EE               NA                   NA                0.6134021   0.6134021   0.6134021
3 months    ki1000109-EE               Female               NA                0.5384615   0.4659392   0.6109839
3 months    ki1000109-EE               Male                 NA                0.6134021   0.5447857   0.6820185
3 months    ki1000109-ResPak           NA                   NA                0.4117647   0.4117647   0.4117647
3 months    ki1000109-ResPak           Female               NA                0.4032258   0.3167184   0.4897332
3 months    ki1000109-ResPak           Male                 NA                0.4117647   0.3288912   0.4946382
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4186047   0.4186047   0.4186047
3 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.3703704   0.2409025   0.4998383
3 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.4186047   0.2703863   0.5668230
3 months    ki1017093-NIH-Birth        NA                   NA                0.2890365   0.2890365   0.2890365
3 months    ki1017093-NIH-Birth        Female               NA                0.1598513   0.1160195   0.2036831
3 months    ki1017093-NIH-Birth        Male                 NA                0.2890365   0.2377804   0.3402927
3 months    ki1017093b-PROVIDE         NA                   NA                0.1546392   0.1546392   0.1546392
3 months    ki1017093b-PROVIDE         Female               NA                0.0704225   0.0107308   0.1301142
3 months    ki1017093b-PROVIDE         Male                 NA                0.1546392   0.0824720   0.2268063
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.2374302   0.2374302   0.2374302
3 months    ki1017093c-NIH-Crypto      Female               NA                0.1918919   0.1517397   0.2320440
3 months    ki1017093c-NIH-Crypto      Male                 NA                0.2374302   0.1933226   0.2815377
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0758621   0.0758621   0.0758621
3 months    ki1066203-TanzaniaChild2   Female               NA                0.0596491   0.0321290   0.0871693
3 months    ki1066203-TanzaniaChild2   Male                 NA                0.0758621   0.0453615   0.1063626
3 months    ki1101329-Keneba           NA                   NA                0.1631579   0.1631579   0.1631579
3 months    ki1101329-Keneba           Female               NA                0.1238095   0.1038831   0.1437359
3 months    ki1101329-Keneba           Male                 NA                0.1631579   0.1417033   0.1846125
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1683502   0.1683502   0.1683502
3 months    ki1113344-GMS-Nepal        Female               NA                0.1240876   0.0850172   0.1631580
3 months    ki1113344-GMS-Nepal        Male                 NA                0.1683502   0.1257582   0.2109421
3 months    ki1114097-CMIN             NA                   NA                0.1402597   0.1402597   0.1402597
3 months    ki1114097-CMIN             Female               NA                0.1314685   0.1066917   0.1562453
3 months    ki1114097-CMIN             Male                 NA                0.1402597   0.1157240   0.1647955
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1960447   0.1960447   0.1960447
3 months    ki1126311-ZVITAMBO         Female               NA                0.1471119   0.1262505   0.1679733
3 months    ki1126311-ZVITAMBO         Male                 NA                0.1960447   0.1732230   0.2188664
3 months    ki1135781-COHORTS          NA                   NA                0.1686144   0.1686144   0.1686144
3 months    ki1135781-COHORTS          Female               NA                0.1286290   0.1193115   0.1379465
3 months    ki1135781-COHORTS          Male                 NA                0.1686144   0.1586194   0.1786094
6 months    ki0047075b-MAL-ED          NA                   NA                0.2030516   0.2030516   0.2030516
6 months    ki0047075b-MAL-ED          Female               NA                0.1232227   0.1010410   0.1454045
6 months    ki0047075b-MAL-ED          Male                 NA                0.2030516   0.1760323   0.2300710
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3497268   0.3497268   0.3497268
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.2526882   0.1901530   0.3152233
6 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.3497268   0.2805398   0.4189137
6 months    ki1000108-IRC              NA                   NA                0.2723214   0.2723214   0.2723214
6 months    ki1000108-IRC              Female               NA                0.2131148   0.1537103   0.2725192
6 months    ki1000108-IRC              Male                 NA                0.2723214   0.2139542   0.3306886
6 months    ki1000109-EE               NA                   NA                0.5315789   0.5315789   0.5315789
6 months    ki1000109-EE               Female               NA                0.5054945   0.4327600   0.5782290
6 months    ki1000109-EE               Male                 NA                0.5315789   0.4605300   0.6026279
6 months    ki1000109-ResPak           NA                   NA                0.3870968   0.3870968   0.3870968
6 months    ki1000109-ResPak           Female               NA                0.3153153   0.2286929   0.4019378
6 months    ki1000109-ResPak           Male                 NA                0.3870968   0.3011818   0.4730118
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.5121951   0.5121951   0.5121951
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.4909091   0.3580966   0.6237215
6 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.5121951   0.3583900   0.6660002
6 months    ki1017093-NIH-Birth        NA                   NA                0.3287671   0.3287671   0.3287671
6 months    ki1017093-NIH-Birth        Female               NA                0.1959184   0.1461724   0.2456643
6 months    ki1017093-NIH-Birth        Male                 NA                0.3287671   0.2748357   0.3826986
6 months    ki1017093b-PROVIDE         NA                   NA                0.2298851   0.2298851   0.2298851
6 months    ki1017093b-PROVIDE         Female               NA                0.1212121   0.0422143   0.2002099
6 months    ki1017093b-PROVIDE         Male                 NA                0.2298851   0.1411806   0.3185895
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.2322946   0.2322946   0.2322946
6 months    ki1017093c-NIH-Crypto      Female               NA                0.1878453   0.1475813   0.2281093
6 months    ki1017093c-NIH-Crypto      Male                 NA                0.2322946   0.1882106   0.2763787
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1038462   0.1038462   0.1038462
6 months    ki1066203-TanzaniaChild2   Female               NA                0.0737705   0.0409394   0.1066016
6 months    ki1066203-TanzaniaChild2   Male                 NA                0.1038462   0.0667286   0.1409637
6 months    ki1101329-Keneba           NA                   NA                0.1586271   0.1586271   0.1586271
6 months    ki1101329-Keneba           Female               NA                0.1226508   0.1024254   0.1428763
6 months    ki1101329-Keneba           Male                 NA                0.1586271   0.1368136   0.1804406
6 months    ki1112895-Guatemala BSC    NA                   NA                0.3207547   0.3207547   0.3207547
6 months    ki1112895-Guatemala BSC    Female               NA                0.2452830   0.1288988   0.3616673
6 months    ki1112895-Guatemala BSC    Male                 NA                0.3207547   0.1944940   0.4470154
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2241379   0.2241379   0.2241379
6 months    ki1113344-GMS-Nepal        Female               NA                0.1978022   0.1505079   0.2450965
6 months    ki1113344-GMS-Nepal        Male                 NA                0.2241379   0.1760999   0.2721759
6 months    ki1114097-CMIN             NA                   NA                0.1484943   0.1484943   0.1484943
6 months    ki1114097-CMIN             Female               NA                0.0904926   0.0714569   0.1095283
6 months    ki1114097-CMIN             Male                 NA                0.1484943   0.1260295   0.1709591
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1845124   0.1845124   0.1845124
6 months    ki1126311-ZVITAMBO         Female               NA                0.1411531   0.1196323   0.1626739
6 months    ki1126311-ZVITAMBO         Male                 NA                0.1845124   0.1609993   0.2080255
6 months    ki1135781-COHORTS          NA                   NA                0.2301542   0.2301542   0.2301542
6 months    ki1135781-COHORTS          Female               NA                0.1770245   0.1662024   0.1878466
6 months    ki1135781-COHORTS          Male                 NA                0.2301542   0.2187707   0.2415377
6 months    ki1148112-LCNI-5           NA                   NA                0.4593301   0.4593301   0.4593301
6 months    ki1148112-LCNI-5           Female               NA                0.2836538   0.2223209   0.3449868
6 months    ki1148112-LCNI-5           Male                 NA                0.4593301   0.3916868   0.5269735
9 months    ki0047075b-MAL-ED          NA                   NA                0.2427885   0.2427885   0.2427885
9 months    ki0047075b-MAL-ED          Female               NA                0.1695545   0.1436732   0.1954357
9 months    ki0047075b-MAL-ED          Male                 NA                0.2427885   0.2136450   0.2719319
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.4426230   0.4426230   0.4426230
9 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.2950820   0.2289126   0.3612514
9 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.4426230   0.3705606   0.5146853
9 months    ki1000108-IRC              NA                   NA                0.2678571   0.2678571   0.2678571
9 months    ki1000108-IRC              Female               NA                0.2786885   0.2136489   0.3437281
9 months    ki1000108-IRC              Male                 NA                0.2678571   0.2097930   0.3259213
9 months    ki1000109-EE               NA                   NA                0.5882353   0.5882353   0.5882353
9 months    ki1000109-EE               Female               NA                0.5977654   0.5258336   0.6696971
9 months    ki1000109-EE               Male                 NA                0.5882353   0.5176000   0.6588705
9 months    ki1000109-ResPak           NA                   NA                0.3392857   0.3392857   0.3392857
9 months    ki1000109-ResPak           Female               NA                0.3232323   0.2308818   0.4155828
9 months    ki1000109-ResPak           Male                 NA                0.3392857   0.2513915   0.4271799
9 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.6756757   0.6756757   0.6756757
9 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.6666667   0.5325166   0.8008168
9 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.6756757   0.5239441   0.8274072
9 months    ki1017093-NIH-Birth        NA                   NA                0.3832117   0.3832117   0.3832117
9 months    ki1017093-NIH-Birth        Female               NA                0.3261803   0.2659244   0.3864362
9 months    ki1017093-NIH-Birth        Male                 NA                0.3832117   0.3255896   0.4408338
9 months    ki1017093b-PROVIDE         NA                   NA                0.2747253   0.2747253   0.2747253
9 months    ki1017093b-PROVIDE         Female               NA                0.1791045   0.0869988   0.2712102
9 months    ki1017093b-PROVIDE         Male                 NA                0.2747253   0.1827213   0.3667293
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.2212644   0.2212644   0.2212644
9 months    ki1017093c-NIH-Crypto      Female               NA                0.2430168   0.1985561   0.2874774
9 months    ki1017093c-NIH-Crypto      Male                 NA                0.2212644   0.1776211   0.2649076
9 months    ki1066203-TanzaniaChild2   NA                   NA                0.1725664   0.1725664   0.1725664
9 months    ki1066203-TanzaniaChild2   Female               NA                0.1153846   0.0719167   0.1588525
9 months    ki1066203-TanzaniaChild2   Male                 NA                0.1725664   0.1232445   0.2218882
9 months    ki1101329-Keneba           NA                   NA                0.1941565   0.1941565   0.1941565
9 months    ki1101329-Keneba           Female               NA                0.1650099   0.1420670   0.1879529
9 months    ki1101329-Keneba           Male                 NA                0.1941565   0.1703499   0.2179630
9 months    ki1112895-Guatemala BSC    NA                   NA                0.4827586   0.4827586   0.4827586
9 months    ki1112895-Guatemala BSC    Female               NA                0.2580645   0.1027314   0.4133976
9 months    ki1112895-Guatemala BSC    Male                 NA                0.4827586   0.2993540   0.6661633
9 months    ki1113344-GMS-Nepal        NA                   NA                0.2837370   0.2837370   0.2837370
9 months    ki1113344-GMS-Nepal        Female               NA                0.2786260   0.2242905   0.3329614
9 months    ki1113344-GMS-Nepal        Male                 NA                0.2837370   0.2317149   0.3357591
9 months    ki1114097-CMIN             NA                   NA                0.2010417   0.2010417   0.2010417
9 months    ki1114097-CMIN             Female               NA                0.1467269   0.1234219   0.1700318
9 months    ki1114097-CMIN             Male                 NA                0.2010417   0.1756825   0.2264008
9 months    ki1126311-ZVITAMBO         NA                   NA                0.2277328   0.2277328   0.2277328
9 months    ki1126311-ZVITAMBO         Female               NA                0.1610256   0.1379487   0.1841026
9 months    ki1126311-ZVITAMBO         Male                 NA                0.2277328   0.2015765   0.2538891
9 months    ki1135781-COHORTS          NA                   NA                0.3075641   0.3075641   0.3075641
9 months    ki1135781-COHORTS          Female               NA                0.2492534   0.2364022   0.2621046
9 months    ki1135781-COHORTS          Male                 NA                0.3075641   0.2945068   0.3206214
9 months    ki1148112-LCNI-5           NA                   NA                0.4125000   0.4125000   0.4125000
9 months    ki1148112-LCNI-5           Female               NA                0.2222222   0.1581031   0.2863413
9 months    ki1148112-LCNI-5           Male                 NA                0.4125000   0.3361025   0.4888975
12 months   ki0047075b-MAL-ED          NA                   NA                0.3004866   0.3004866   0.3004866
12 months   ki0047075b-MAL-ED          Female               NA                0.2380353   0.2084033   0.2676672
12 months   ki0047075b-MAL-ED          Male                 NA                0.3004866   0.2691352   0.3318380
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.5683060   0.5683060   0.5683060
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.4270270   0.3556517   0.4984023
12 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.5683060   0.4964451   0.6401669
12 months   ki1000108-IRC              NA                   NA                0.2901786   0.2901786   0.2901786
12 months   ki1000108-IRC              Female               NA                0.2967033   0.2302558   0.3631508
12 months   ki1000108-IRC              Male                 NA                0.2901786   0.2306717   0.3496854
12 months   ki1000109-EE               NA                   NA                0.7322404   0.7322404   0.7322404
12 months   ki1000109-EE               Female               NA                0.6954023   0.6269223   0.7638823
12 months   ki1000109-EE               Male                 NA                0.7322404   0.6679967   0.7964842
12 months   ki1000109-ResPak           NA                   NA                0.2884615   0.2884615   0.2884615
12 months   ki1000109-ResPak           Female               NA                0.3777778   0.2773532   0.4782024
12 months   ki1000109-ResPak           Male                 NA                0.2884615   0.2011650   0.3757580
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.8048780   0.8048780   0.8048780
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.7843137   0.6708146   0.8978128
12 months   ki1000304b-SAS-FoodSuppl   Male                 NA                0.8048780   0.6829096   0.9268465
12 months   ki1017093-NIH-Birth        NA                   NA                0.3646617   0.3646617   0.3646617
12 months   ki1017093-NIH-Birth        Female               NA                0.3866667   0.3229701   0.4503633
12 months   ki1017093-NIH-Birth        Male                 NA                0.3646617   0.3067591   0.4225642
12 months   ki1017093b-PROVIDE         NA                   NA                0.3181818   0.3181818   0.3181818
12 months   ki1017093b-PROVIDE         Female               NA                0.2461538   0.1410884   0.3512193
12 months   ki1017093b-PROVIDE         Male                 NA                0.3181818   0.2205475   0.4158162
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.2471264   0.2471264   0.2471264
12 months   ki1017093c-NIH-Crypto      Female               NA                0.2374302   0.1933217   0.2815387
12 months   ki1017093c-NIH-Crypto      Male                 NA                0.2471264   0.2017754   0.2924774
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.1623037   0.1623037   0.1623037
12 months   ki1066203-TanzaniaChild2   Female               NA                0.1265060   0.0758666   0.1771454
12 months   ki1066203-TanzaniaChild2   Male                 NA                0.1623037   0.1099378   0.2146695
12 months   ki1101329-Keneba           NA                   NA                0.2685828   0.2685828   0.2685828
12 months   ki1101329-Keneba           Female               NA                0.2257721   0.1990238   0.2525204
12 months   ki1101329-Keneba           Male                 NA                0.2685828   0.2412278   0.2959377
12 months   ki1112895-Guatemala BSC    NA                   NA                0.5185185   0.5185185   0.5185185
12 months   ki1112895-Guatemala BSC    Female               NA                0.3461538   0.1615375   0.5307701
12 months   ki1112895-Guatemala BSC    Male                 NA                0.5185185   0.3282467   0.7087903
12 months   ki1113344-GMS-Nepal        NA                   NA                0.3586207   0.3586207   0.3586207
12 months   ki1113344-GMS-Nepal        Female               NA                0.3246269   0.2685176   0.3807361
12 months   ki1113344-GMS-Nepal        Male                 NA                0.3586207   0.3033730   0.4138683
12 months   ki1114097-CMIN             NA                   NA                0.2709832   0.2709832   0.2709832
12 months   ki1114097-CMIN             Female               NA                0.2231183   0.1931926   0.2530440
12 months   ki1114097-CMIN             Male                 NA                0.2709832   0.2408085   0.3011579
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3072215   0.3072215   0.3072215
12 months   ki1126311-ZVITAMBO         Female               NA                0.1742081   0.1491978   0.1992185
12 months   ki1126311-ZVITAMBO         Male                 NA                0.3072215   0.2755778   0.3388653
12 months   ki1135781-COHORTS          NA                   NA                0.3978325   0.3978325   0.3978325
12 months   ki1135781-COHORTS          Female               NA                0.3484062   0.3337258   0.3630866
12 months   ki1135781-COHORTS          Male                 NA                0.3978325   0.3834170   0.4122480
12 months   ki1148112-LCNI-5           NA                   NA                0.4935065   0.4935065   0.4935065
12 months   ki1148112-LCNI-5           Female               NA                0.3269231   0.2531934   0.4006528
12 months   ki1148112-LCNI-5           Male                 NA                0.4935065   0.4144163   0.5725967
18 months   ki0047075b-MAL-ED          NA                   NA                0.4325700   0.4325700   0.4325700
18 months   ki0047075b-MAL-ED          Female               NA                0.3394737   0.3057970   0.3731504
18 months   ki0047075b-MAL-ED          Male                 NA                0.4325700   0.3979233   0.4672167
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7554348   0.7554348   0.7554348
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6216216   0.5516410   0.6916022
18 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.7554348   0.6932442   0.8176253
18 months   ki1000108-IRC              NA                   NA                0.3529412   0.3529412   0.3529412
18 months   ki1000108-IRC              Female               NA                0.3586957   0.2893098   0.4280815
18 months   ki1000108-IRC              Male                 NA                0.3529412   0.2898583   0.4160241
18 months   ki1000109-EE               NA                   NA                0.8370787   0.8370787   0.8370787
18 months   ki1000109-EE               Female               NA                0.8604651   0.8086074   0.9123228
18 months   ki1000109-EE               Male                 NA                0.8370787   0.7827497   0.8914076
18 months   ki1017093-NIH-Birth        NA                   NA                0.5823293   0.5823293   0.5823293
18 months   ki1017093-NIH-Birth        Female               NA                0.5934579   0.5275772   0.6593387
18 months   ki1017093-NIH-Birth        Male                 NA                0.5823293   0.5210069   0.6436517
18 months   ki1017093b-PROVIDE         NA                   NA                0.4074074   0.4074074   0.4074074
18 months   ki1017093b-PROVIDE         Female               NA                0.3166667   0.1985434   0.4347899
18 months   ki1017093b-PROVIDE         Male                 NA                0.4074074   0.3000224   0.5147924
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.3121019   0.3121019   0.3121019
18 months   ki1017093c-NIH-Crypto      Female               NA                0.2906250   0.2408375   0.3404125
18 months   ki1017093c-NIH-Crypto      Male                 NA                0.3121019   0.2608115   0.3633923
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.3138686   0.3138686   0.3138686
18 months   ki1066203-TanzaniaChild2   Female               NA                0.2066116   0.1343314   0.2788917
18 months   ki1066203-TanzaniaChild2   Male                 NA                0.3138686   0.2360096   0.3917276
18 months   ki1101329-Keneba           NA                   NA                0.3494949   0.3494949   0.3494949
18 months   ki1101329-Keneba           Female               NA                0.2936763   0.2644444   0.3229082
18 months   ki1101329-Keneba           Male                 NA                0.3494949   0.3197859   0.3792040
18 months   ki1113344-GMS-Nepal        NA                   NA                0.5265018   0.5265018   0.5265018
18 months   ki1113344-GMS-Nepal        Female               NA                0.5355805   0.4757042   0.5954569
18 months   ki1113344-GMS-Nepal        Male                 NA                0.5265018   0.4682768   0.5847267
18 months   ki1114097-CMIN             NA                   NA                0.3826406   0.3826406   0.3826406
18 months   ki1114097-CMIN             Female               NA                0.3243243   0.2913988   0.3572498
18 months   ki1114097-CMIN             Male                 NA                0.3826406   0.3493231   0.4159581
18 months   ki1126311-ZVITAMBO         NA                   NA                0.5581395   0.5581395   0.5581395
18 months   ki1126311-ZVITAMBO         Female               NA                0.4189723   0.3581041   0.4798405
18 months   ki1126311-ZVITAMBO         Male                 NA                0.5581395   0.4838360   0.6324431
18 months   ki1135781-COHORTS          NA                   NA                0.6448659   0.6448659   0.6448659
18 months   ki1135781-COHORTS          Female               NA                0.6032881   0.5776483   0.6289278
18 months   ki1135781-COHORTS          Male                 NA                0.6448659   0.6208749   0.6688570
18 months   ki1148112-LCNI-5           NA                   NA                0.5625000   0.5625000   0.5625000
18 months   ki1148112-LCNI-5           Female               NA                0.4254144   0.3532868   0.4975419
18 months   ki1148112-LCNI-5           Male                 NA                0.5625000   0.4891076   0.6358924
24 months   ki0047075b-MAL-ED          NA                   NA                0.4220183   0.4220183   0.4220183
24 months   ki0047075b-MAL-ED          Female               NA                0.3264463   0.2923256   0.3605670
24 months   ki0047075b-MAL-ED          Male                 NA                0.4220183   0.3869630   0.4570737
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7419355   0.7419355   0.7419355
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6881720   0.6215095   0.7548346
24 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.7419355   0.6789670   0.8049040
24 months   ki1000108-IRC              NA                   NA                0.4151786   0.4151786   0.4151786
24 months   ki1000108-IRC              Female               NA                0.4162162   0.3450983   0.4873342
24 months   ki1000108-IRC              Male                 NA                0.4151786   0.3505708   0.4797863
24 months   ki1017093-NIH-Birth        NA                   NA                0.5683761   0.5683761   0.5683761
24 months   ki1017093-NIH-Birth        Female               NA                0.5384615   0.4684098   0.6085133
24 months   ki1017093-NIH-Birth        Male                 NA                0.5683761   0.5048404   0.6319117
24 months   ki1017093b-PROVIDE         NA                   NA                0.3411765   0.3411765   0.3411765
24 months   ki1017093b-PROVIDE         Female               NA                0.3125000   0.1985585   0.4264415
24 months   ki1017093b-PROVIDE         Male                 NA                0.3411765   0.2400476   0.4423053
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.2165354   0.2165354   0.2165354
24 months   ki1017093c-NIH-Crypto      Female               NA                0.2961538   0.2406041   0.3517036
24 months   ki1017093c-NIH-Crypto      Male                 NA                0.2165354   0.1658331   0.2672378
24 months   ki1101329-Keneba           NA                   NA                0.3466224   0.3466224   0.3466224
24 months   ki1101329-Keneba           Female               NA                0.3211679   0.2892389   0.3530969
24 months   ki1101329-Keneba           Male                 NA                0.3466224   0.3155739   0.3776709
24 months   ki1113344-GMS-Nepal        NA                   NA                0.4436090   0.4436090   0.4436090
24 months   ki1113344-GMS-Nepal        Female               NA                0.4506438   0.3866925   0.5145951
24 months   ki1113344-GMS-Nepal        Male                 NA                0.4436090   0.3838459   0.5033721
24 months   ki1114097-CMIN             NA                   NA                0.4265842   0.4265842   0.4265842
24 months   ki1114097-CMIN             Female               NA                0.3704348   0.3309465   0.4099231
24 months   ki1114097-CMIN             Male                 NA                0.4265842   0.3884591   0.4647093
24 months   ki1126311-ZVITAMBO         NA                   NA                0.6666667   0.6666667   0.6666667
24 months   ki1126311-ZVITAMBO         Female               NA                0.5405405   0.4265024   0.6545787
24 months   ki1126311-ZVITAMBO         Male                 NA                0.6666667   0.5234818   0.8098516
24 months   ki1135781-COHORTS          NA                   NA                0.5379849   0.5379849   0.5379849
24 months   ki1135781-COHORTS          Female               NA                0.5232911   0.5077145   0.5388678
24 months   ki1135781-COHORTS          Male                 NA                0.5379849   0.5231804   0.5527893
24 months   ki1148112-LCNI-5           NA                   NA                0.4589041   0.4589041   0.4589041
24 months   ki1148112-LCNI-5           Female               NA                0.4238411   0.3448888   0.5027933
24 months   ki1148112-LCNI-5           Male                 NA                0.4589041   0.3779382   0.5398700


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.1327552   0.1326356   0.1328748
Birth       ki1000108-CMC-V-BCS-2002   NA                   NA                0.1777778   0.1639274   0.1916282
Birth       ki1000108-IRC              NA                   NA                0.1159794   0.1143963   0.1175625
Birth       ki1101329-Keneba           NA                   NA                0.0532122   0.0530351   0.0533893
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1043781   0.1040202   0.1047359
Birth       ki1135781-COHORTS          NA                   NA                0.0988412   0.0986679   0.0990146
3 months    ki0047075b-MAL-ED          NA                   NA                0.1552306   0.1536616   0.1567996
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2486188   0.2426358   0.2546018
3 months    ki1000108-IRC              NA                   NA                0.2235872   0.2218121   0.2253623
3 months    ki1000109-EE               NA                   NA                0.5771277   0.5733371   0.5809182
3 months    ki1000109-ResPak           NA                   NA                0.4076923   0.4071729   0.4082117
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.3917526   0.3869594   0.3965458
3 months    ki1017093-NIH-Birth        NA                   NA                0.2280702   0.2227712   0.2333691
3 months    ki1017093b-PROVIDE         NA                   NA                0.1190476   0.1127381   0.1253571
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.2142857   0.2126308   0.2159406
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0678261   0.0671629   0.0684892
3 months    ki1101329-Keneba           NA                   NA                0.1442922   0.1434688   0.1451157
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1471103   0.1452950   0.1489257
3 months    ki1114097-CMIN             NA                   NA                0.1360269   0.1358034   0.1362504
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1721708   0.1711647   0.1731770
3 months    ki1135781-COHORTS          NA                   NA                0.1494542   0.1490693   0.1498390
6 months    ki0047075b-MAL-ED          NA                   NA                0.1633255   0.1614253   0.1652256
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3008130   0.2958559   0.3057701
6 months    ki1000108-IRC              NA                   NA                0.2457002   0.2428353   0.2485652
6 months    ki1000109-EE               NA                   NA                0.5188172   0.5174904   0.5201440
6 months    ki1000109-ResPak           NA                   NA                0.3531915   0.3486000   0.3577830
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.5000000   0.4978827   0.5021173
6 months    ki1017093-NIH-Birth        NA                   NA                0.2681564   0.2625547   0.2737582
6 months    ki1017093b-PROVIDE         NA                   NA                0.1830065   0.1744502   0.1915629
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.2097902   0.2081602   0.2114203
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.0892857   0.0879722   0.0905992
6 months    ki1101329-Keneba           NA                   NA                0.1412159   0.1404447   0.1419871
6 months    ki1112895-Guatemala BSC    NA                   NA                0.2830189   0.2758010   0.2902367
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2113677   0.2102795   0.2124558
6 months    ki1114097-CMIN             NA                   NA                0.1209150   0.1195897   0.1222403
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1632554   0.1623173   0.1641934
6 months    ki1135781-COHORTS          NA                   NA                0.2048445   0.2043252   0.2053638
6 months    ki1148112-LCNI-5           NA                   NA                0.3717026   0.3632618   0.3801434
9 months    ki0047075b-MAL-ED          NA                   NA                0.2067073   0.2049348   0.2084799
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3688525   0.3612844   0.3764205
9 months    ki1000108-IRC              NA                   NA                0.2727273   0.2722032   0.2732514
9 months    ki1000109-EE               NA                   NA                0.5928962   0.5924075   0.5933849
9 months    ki1000109-ResPak           NA                   NA                0.3317536   0.3306700   0.3328371
9 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.6705882   0.6696330   0.6715434
9 months    ki1017093-NIH-Birth        NA                   NA                0.3570020   0.3545255   0.3594784
9 months    ki1017093b-PROVIDE         NA                   NA                0.2341772   0.2267854   0.2415690
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.2322946   0.2314919   0.2330974
9 months    ki1066203-TanzaniaChild2   NA                   NA                0.1451613   0.1424706   0.1478519
9 months    ki1101329-Keneba           NA                   NA                0.1799710   0.1793428   0.1805992
9 months    ki1112895-Guatemala BSC    NA                   NA                0.3666667   0.3380155   0.3953178
9 months    ki1113344-GMS-Nepal        NA                   NA                0.2813067   0.2810934   0.2815200
9 months    ki1114097-CMIN             NA                   NA                0.1749729   0.1737347   0.1762111
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1946001   0.1931243   0.1960759
9 months    ki1135781-COHORTS          NA                   NA                0.2798295   0.2792329   0.2804262
9 months    ki1148112-LCNI-5           NA                   NA                0.3167702   0.3063627   0.3271777
12 months   ki0047075b-MAL-ED          NA                   NA                0.2698020   0.2682793   0.2713247
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.4972826   0.4900556   0.5045096
12 months   ki1000108-IRC              NA                   NA                0.2931034   0.2927874   0.2934195
12 months   ki1000109-EE               NA                   NA                0.7142857   0.7123730   0.7161984
12 months   ki1000109-ResPak           NA                   NA                0.3298969   0.3236129   0.3361809
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.7934783   0.7913782   0.7955783
12 months   ki1017093-NIH-Birth        NA                   NA                0.3747454   0.3737746   0.3757162
12 months   ki1017093b-PROVIDE         NA                   NA                0.2875817   0.2819215   0.2932419
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.2422096   0.2418518   0.2425675
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.1456583   0.1438035   0.1475130
12 months   ki1101329-Keneba           NA                   NA                0.2479466   0.2469964   0.2488968
12 months   ki1112895-Guatemala BSC    NA                   NA                0.4339623   0.4105422   0.4573823
12 months   ki1113344-GMS-Nepal        NA                   NA                0.3422939   0.3408835   0.3437043
12 months   ki1114097-CMIN             NA                   NA                0.2484157   0.2472364   0.2495950
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2380952   0.2349362   0.2412543
12 months   ki1135781-COHORTS          NA                   NA                0.3742331   0.3737075   0.3747587
12 months   ki1148112-LCNI-5           NA                   NA                0.4096774   0.4003907   0.4189641
18 months   ki0047075b-MAL-ED          NA                   NA                0.3868047   0.3844839   0.3891254
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6883469   0.6815111   0.6951827
18 months   ki1000108-IRC              NA                   NA                0.3555556   0.3552762   0.3558349
18 months   ki1000109-EE               NA                   NA                0.8485714   0.8473448   0.8497980
18 months   ki1017093-NIH-Birth        NA                   NA                0.5874730   0.5869671   0.5879789
18 months   ki1017093b-PROVIDE         NA                   NA                0.3687943   0.3613627   0.3762260
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.3012618   0.3004253   0.3020983
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.2635659   0.2570219   0.2701099
18 months   ki1101329-Keneba           NA                   NA                0.3224129   0.3211657   0.3236601
18 months   ki1113344-GMS-Nepal        NA                   NA                0.5309091   0.5305295   0.5312886
18 months   ki1114097-CMIN             NA                   NA                0.3542320   0.3528010   0.3556629
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4752941   0.4687923   0.4817960
18 months   ki1135781-COHORTS          NA                   NA                0.6250000   0.6242476   0.6257524
18 months   ki1148112-LCNI-5           NA                   NA                0.4929972   0.4858778   0.5001166
24 months   ki0047075b-MAL-ED          NA                   NA                0.3754197   0.3729925   0.3778470
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7150538   0.7123184   0.7177891
24 months   ki1000108-IRC              NA                   NA                0.4156479   0.4155978   0.4156980
24 months   ki1017093-NIH-Birth        NA                   NA                0.5547786   0.5533674   0.5561897
24 months   ki1017093b-PROVIDE         NA                   NA                0.3288591   0.3265721   0.3311460
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.2568093   0.2533647   0.2602540
24 months   ki1101329-Keneba           NA                   NA                0.3344928   0.3338926   0.3350929
24 months   ki1113344-GMS-Nepal        NA                   NA                0.4468938   0.4465855   0.4472020
24 months   ki1114097-CMIN             NA                   NA                0.4001637   0.3985917   0.4017357
24 months   ki1126311-ZVITAMBO         NA                   NA                0.5862069   0.5751282   0.5972855
24 months   ki1135781-COHORTS          NA                   NA                0.5309980   0.5308401   0.5311558
24 months   ki1148112-LCNI-5           NA                   NA                0.4410774   0.4390805   0.4430744


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          Female               NA                0.9650406   0.8015358   1.1618986
Birth       ki0047075b-MAL-ED          Male                 NA                1.0000000   0.8348184   1.1978653
Birth       ki1000108-CMC-V-BCS-2002   Female               NA                0.4545455   0.1980015   1.0434846
Birth       ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.5965760   1.6762323
Birth       ki1000108-IRC              Female               NA                0.7545417   0.4801634   1.1857073
Birth       ki1000108-IRC              Male                 NA                1.0000000   0.7075942   1.4132393
Birth       ki1101329-Keneba           Female               NA                1.1424797   0.8516399   1.5326429
Birth       ki1101329-Keneba           Male                 NA                1.0000000   0.7392061   1.3528027
Birth       ki1126311-ZVITAMBO         Female               NA                0.8129642   0.6997743   0.9444627
Birth       ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.8791343   1.1374826
Birth       ki1135781-COHORTS          Female               NA                0.8341972   0.7623323   0.9128368
Birth       ki1135781-COHORTS          Male                 NA                1.0000000   0.9251751   1.0808765
3 months    ki0047075b-MAL-ED          Female               NA                0.6428571   0.5386693   0.7671967
3 months    ki0047075b-MAL-ED          Male                 NA                1.0000000   0.8726530   1.1459309
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.6224540   0.4618887   0.8388364
3 months    ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.8023036   1.2464109
3 months    ki1000108-IRC              Female               NA                0.8470696   0.6351267   1.1297382
3 months    ki1000108-IRC              Male                 NA                1.0000000   0.7923081   1.2621353
3 months    ki1000109-EE               Female               NA                0.8778281   0.7672144   1.0043895
3 months    ki1000109-EE               Male                 NA                1.0000000   0.8941676   1.1183585
3 months    ki1000109-ResPak           Female               NA                0.9792627   0.7901806   1.2135901
3 months    ki1000109-ResPak           Male                 NA                1.0000000   0.8176964   1.2229478
3 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.8847737   0.6237618   1.2550055
3 months    ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.7018208   1.4248651
3 months    ki1017093-NIH-Birth        Female               NA                0.5530488   0.4204151   0.7275261
3 months    ki1017093-NIH-Birth        Male                 NA                1.0000000   0.8374995   1.1940305
3 months    ki1017093b-PROVIDE         Female               NA                0.4553991   0.1951077   1.0629424
3 months    ki1017093b-PROVIDE         Male                 NA                1.0000000   0.6270802   1.5946923
3 months    ki1017093c-NIH-Crypto      Female               NA                0.8082035   0.6556128   0.9963090
3 months    ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.8304641   1.2041460
3 months    ki1066203-TanzaniaChild2   Female               NA                0.7862839   0.4956901   1.2472357
3 months    ki1066203-TanzaniaChild2   Male                 NA                1.0000000   0.6689454   1.4948903
3 months    ki1101329-Keneba           Female               NA                0.7588326   0.6460243   0.8913393
3 months    ki1101329-Keneba           Male                 NA                1.0000000   0.8767828   1.1405334
3 months    ki1113344-GMS-Nepal        Female               NA                0.7370803   0.5379875   1.0098513
3 months    ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.7764708   1.2878784
3 months    ki1114097-CMIN             Female               NA                0.9373219   0.7763202   1.1317140
3 months    ki1114097-CMIN             Male                 NA                1.0000000   0.8395152   1.1911637
3 months    ki1126311-ZVITAMBO         Female               NA                0.7503998   0.6511889   0.8647259
3 months    ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.8901097   1.1234570
3 months    ki1135781-COHORTS          Female               NA                0.7628593   0.7095540   0.8201691
3 months    ki1135781-COHORTS          Male                 NA                1.0000000   0.9424454   1.0610694
6 months    ki0047075b-MAL-ED          Female               NA                0.6068542   0.5068806   0.7265459
6 months    ki0047075b-MAL-ED          Male                 NA                1.0000000   0.8754070   1.1423258
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.7225302   0.5641272   0.9254118
6 months    ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.8205081   1.2187569
6 months    ki1000108-IRC              Female               NA                0.7825853   0.5922086   1.0341624
6 months    ki1000108-IRC              Male                 NA                1.0000000   0.8070803   1.2390340
6 months    ki1000109-EE               Female               NA                0.9509303   0.8234912   1.0980911
6 months    ki1000109-EE               Male                 NA                1.0000000   0.8748905   1.1430001
6 months    ki1000109-ResPak           Female               NA                0.8145646   0.6188957   1.0720957
6 months    ki1000109-ResPak           Male                 NA                1.0000000   0.8009578   1.2485053
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.9584416   0.7312568   1.2562074
6 months    ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.7406063   1.3502451
6 months    ki1017093-NIH-Birth        Female               NA                0.5959184   0.4622899   0.7681731
6 months    ki1017093-NIH-Birth        Male                 NA                1.0000000   0.8487068   1.1782633
6 months    ki1017093b-PROVIDE         Female               NA                0.5272727   0.2747842   1.0117633
6 months    ki1017093b-PROVIDE         Male                 NA                1.0000000   0.6798627   1.4708853
6 months    ki1017093c-NIH-Crypto      Female               NA                0.8086511   0.6526368   1.0019610
6 months    ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.8271440   1.2089793
6 months    ki1066203-TanzaniaChild2   Female               NA                0.7103825   0.4552106   1.1085931
6 months    ki1066203-TanzaniaChild2   Male                 NA                1.0000000   0.6994729   1.4296479
6 months    ki1101329-Keneba           Female               NA                0.7732024   0.6556573   0.9118207
6 months    ki1101329-Keneba           Male                 NA                1.0000000   0.8715218   1.1474183
6 months    ki1112895-Guatemala BSC    Female               NA                0.7647059   0.4758019   1.2290305
6 months    ki1112895-Guatemala BSC    Male                 NA                1.0000000   0.6745993   1.4823614
6 months    ki1113344-GMS-Nepal        Female               NA                0.8825021   0.6948264   1.1208698
6 months    ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.8070873   1.2390234
6 months    ki1114097-CMIN             Female               NA                0.6094009   0.4937947   0.7520726
6 months    ki1114097-CMIN             Male                 NA                1.0000000   0.8596038   1.1633267
6 months    ki1126311-ZVITAMBO         Female               NA                0.7650058   0.6568261   0.8910028
6 months    ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.8803519   1.1359094
6 months    ki1135781-COHORTS          Female               NA                0.7691560   0.7235434   0.8176441
6 months    ki1135781-COHORTS          Male                 NA                1.0000000   0.9517428   1.0507041
6 months    ki1148112-LCNI-5           Female               NA                0.6175381   0.4974605   0.7666000
6 months    ki1148112-LCNI-5           Male                 NA                1.0000000   0.8630651   1.1586611
9 months    ki0047075b-MAL-ED          Female               NA                0.6983629   0.5995002   0.8135290
9 months    ki0047075b-MAL-ED          Male                 NA                1.0000000   0.8868880   1.1275380
9 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.6666667   0.5327485   0.8342482
9 months    ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.8497548   1.1768101
9 months    ki1000108-IRC              Female               NA                1.0404372   0.8238751   1.3139242
9 months    ki1000108-IRC              Male                 NA                1.0000000   0.8051130   1.2420617
9 months    ki1000109-EE               Female               NA                1.0162011   0.9009881   1.1461468
9 months    ki1000109-EE               Male                 NA                1.0000000   0.8868495   1.1275870
9 months    ki1000109-ResPak           Female               NA                0.9526847   0.7159245   1.2677430
9 months    ki1000109-ResPak           Male                 NA                1.0000000   0.7717793   1.2957072
9 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.9866667   0.8068252   1.2065948
9 months    ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.7988655   1.2517752
9 months    ki1017093-NIH-Birth        Female               NA                0.8511751   0.7076050   1.0238751
9 months    ki1017093-NIH-Birth        Male                 NA                1.0000000   0.8603928   1.1622598
9 months    ki1017093b-PROVIDE         Female               NA                0.6519403   0.3898243   1.0903019
9 months    ki1017093b-PROVIDE         Male                 NA                1.0000000   0.7154135   1.3977930
9 months    ki1017093c-NIH-Crypto      Female               NA                1.0983095   0.9146802   1.3188038
9 months    ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.8209896   1.2180422
9 months    ki1066203-TanzaniaChild2   Female               NA                0.6686391   0.4587579   0.9745405
9 months    ki1066203-TanzaniaChild2   Male                 NA                1.0000000   0.7514025   1.3308447
9 months    ki1101329-Keneba           Female               NA                0.8498813   0.7395609   0.9766581
9 months    ki1101329-Keneba           Male                 NA                1.0000000   0.8846038   1.1304495
9 months    ki1112895-Guatemala BSC    Female               NA                0.5345622   0.2928124   0.9759038
9 months    ki1112895-Guatemala BSC    Male                 NA                1.0000000   0.6839232   1.4621525
9 months    ki1113344-GMS-Nepal        Female               NA                0.9819866   0.8080029   1.1934334
9 months    ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.8324799   1.2012302
9 months    ki1114097-CMIN             Female               NA                0.7298331   0.6226495   0.8554673
9 months    ki1114097-CMIN             Male                 NA                1.0000000   0.8814924   1.1344398
9 months    ki1126311-ZVITAMBO         Female               NA                0.7070815   0.6126744   0.8160357
9 months    ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.8914951   1.1217112
9 months    ki1135781-COHORTS          Female               NA                0.8104113   0.7696862   0.8532911
9 months    ki1135781-COHORTS          Male                 NA                1.0000000   0.9584346   1.0433680
9 months    ki1148112-LCNI-5           Female               NA                0.5387205   0.4036955   0.7189077
9 months    ki1148112-LCNI-5           Male                 NA                1.0000000   0.8309329   1.2034665
12 months   ki0047075b-MAL-ED          Female               NA                0.7921659   0.6994437   0.8971800
12 months   ki0047075b-MAL-ED          Male                 NA                1.0000000   0.9009230   1.1099728
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.7514033   0.6357452   0.8881025
12 months   ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.8812204   1.1347899
12 months   ki1000108-IRC              Female               NA                1.0224852   0.8173267   1.2791409
12 months   ki1000108-IRC              Male                 NA                1.0000000   0.8145905   1.2276106
12 months   ki1000109-EE               Female               NA                0.9496912   0.8606272   1.0479722
12 months   ki1000109-EE               Male                 NA                1.0000000   0.9160028   1.0916998
12 months   ki1000109-ResPak           Female               NA                1.3096296   1.0039223   1.7084288
12 months   ki1000109-ResPak           Male                 NA                1.0000000   0.7388740   1.3534107
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.9744504   0.8431647   1.1261781
12 months   ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.8593865   1.1636208
12 months   ki1017093-NIH-Birth        Female               NA                1.0603436   0.8992992   1.2502276
12 months   ki1017093-NIH-Birth        Male                 NA                1.0000000   0.8531804   1.1720851
12 months   ki1017093b-PROVIDE         Female               NA                0.7736264   0.5048496   1.1854972
12 months   ki1017093b-PROVIDE         Male                 NA                1.0000000   0.7357604   1.3591382
12 months   ki1017093c-NIH-Crypto      Female               NA                0.9607639   0.7978768   1.1569046
12 months   ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.8323408   1.2014310
12 months   ki1066203-TanzaniaChild2   Female               NA                0.7794403   0.5223217   1.1631286
12 months   ki1066203-TanzaniaChild2   Male                 NA                1.0000000   0.7242338   1.3807697
12 months   ki1101329-Keneba           Female               NA                0.8406053   0.7466880   0.9463354
12 months   ki1101329-Keneba           Male                 NA                1.0000000   0.9031658   1.1072165
12 months   ki1112895-Guatemala BSC    Female               NA                0.6675824   0.3916337   1.1379673
12 months   ki1112895-Guatemala BSC    Male                 NA                1.0000000   0.6928424   1.4433297
12 months   ki1113344-GMS-Nepal        Female               NA                0.9052095   0.7615259   1.0760032
12 months   ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.8572241   1.1665561
12 months   ki1114097-CMIN             Female               NA                0.8233657   0.7200176   0.9415479
12 months   ki1114097-CMIN             Male                 NA                1.0000000   0.8946233   1.1177889
12 months   ki1126311-ZVITAMBO         Female               NA                0.5670440   0.4912098   0.6545858
12 months   ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.9021272   1.1084911
12 months   ki1135781-COHORTS          Female               NA                0.8757612   0.8396268   0.9134506
12 months   ki1135781-COHORTS          Male                 NA                1.0000000   0.9644135   1.0368996
12 months   ki1148112-LCNI-5           Female               NA                0.6624494   0.5286983   0.8300371
12 months   ki1148112-LCNI-5           Male                 NA                1.0000000   0.8519208   1.1738181
18 months   ki0047075b-MAL-ED          Female               NA                0.7847833   0.7106676   0.8666285
18 months   ki0047075b-MAL-ED          Male                 NA                1.0000000   0.9230287   1.0833900
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.8228660   0.7352539   0.9209179
18 months   ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.9209734   1.0858077
18 months   ki1000108-IRC              Female               NA                1.0163043   0.8375565   1.2331999
18 months   ki1000108-IRC              Male                 NA                1.0000000   0.8363275   1.1957038
18 months   ki1000109-EE               Female               NA                1.0279382   0.9678172   1.0917939
18 months   ki1000109-EE               Male                 NA                1.0000000   0.9371583   1.0670556
18 months   ki1017093-NIH-Birth        Female               NA                1.0191105   0.9120309   1.1387622
18 months   ki1017093-NIH-Birth        Male                 NA                1.0000000   0.9000496   1.1110499
18 months   ki1017093b-PROVIDE         Female               NA                0.7772727   0.5352695   1.1286891
18 months   ki1017093b-PROVIDE         Male                 NA                1.0000000   0.7682951   1.3015832
18 months   ki1017093c-NIH-Crypto      Female               NA                0.9311862   0.7845792   1.1051884
18 months   ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.8484546   1.1786135
18 months   ki1066203-TanzaniaChild2   Female               NA                0.6582741   0.4639541   0.9339820
18 months   ki1066203-TanzaniaChild2   Male                 NA                1.0000000   0.7803113   1.2815398
18 months   ki1101329-Keneba           Female               NA                0.8402877   0.7606753   0.9282323
18 months   ki1101329-Keneba           Male                 NA                1.0000000   0.9185070   1.0887233
18 months   ki1113344-GMS-Nepal        Female               NA                1.0172435   0.9096453   1.1375691
18 months   ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.8953072   1.1169350
18 months   ki1114097-CMIN             Female               NA                0.8475952   0.7657707   0.9381628
18 months   ki1114097-CMIN             Male                 NA                1.0000000   0.9166106   1.0909758
18 months   ki1126311-ZVITAMBO         Female               NA                0.7506588   0.6491549   0.8680340
18 months   ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.8753538   1.1423952
18 months   ki1135781-COHORTS          Female               NA                0.9355248   0.8965981   0.9761416
18 months   ki1135781-COHORTS          Male                 NA                1.0000000   0.9634804   1.0379039
18 months   ki1148112-LCNI-5           Female               NA                0.7562922   0.6383465   0.8960305
18 months   ki1148112-LCNI-5           Male                 NA                1.0000000   0.8776781   1.1393699
24 months   ki0047075b-MAL-ED          Female               NA                0.7735358   0.6967665   0.8587634
24 months   ki0047075b-MAL-ED          Male                 NA                1.0000000   0.9202904   1.0866135
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.9275362   0.8419013   1.0218816
24 months   ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.9186312   1.0885762
24 months   ki1000108-IRC              Female               NA                1.0024993   0.8450397   1.1892989
24 months   ki1000108-IRC              Male                 NA                1.0000000   0.8558891   1.1683756
24 months   ki1017093-NIH-Birth        Female               NA                0.9473684   0.8318000   1.0789937
24 months   ki1017093-NIH-Birth        Male                 NA                1.0000000   0.8942369   1.1182719
24 months   ki1017093b-PROVIDE         Female               NA                0.9159483   0.6360946   1.3189253
24 months   ki1017093b-PROVIDE         Male                 NA                1.0000000   0.7434810   1.3450243
24 months   ki1017093c-NIH-Crypto      Female               NA                1.3676923   1.1337768   1.6498681
24 months   ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.7912409   1.2638376
24 months   ki1101329-Keneba           Female               NA                0.9265642   0.8388803   1.0234133
24 months   ki1101329-Keneba           Male                 NA                1.0000000   0.9143202   1.0937087
24 months   ki1113344-GMS-Nepal        Female               NA                1.0158580   0.8814584   1.1707500
24 months   ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.8739604   1.1442166
24 months   ki1114097-CMIN             Female               NA                0.8683743   0.7805689   0.9660568
24 months   ki1114097-CMIN             Male                 NA                1.0000000   0.9145044   1.0934884
24 months   ki1126311-ZVITAMBO         Female               NA                0.8108108   0.6565929   1.0012508
24 months   ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.8067210   1.2395859
24 months   ki1135781-COHORTS          Female               NA                0.9726875   0.9441605   1.0020764
24 months   ki1135781-COHORTS          Male                 NA                1.0000000   0.9728568   1.0279006
24 months   ki1148112-LCNI-5           Female               NA                0.9235940   0.7666225   1.1127064
24 months   ki1148112-LCNI-5           Male                 NA                1.0000000   0.8382548   1.1929547


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          NA                   NA                -0.0023442   -0.0024638   -0.0022246
Birth       ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0666667   -0.0805171   -0.0528163
Birth       ki1000108-IRC              NA                   NA                -0.0142532   -0.0158362   -0.0126701
Birth       ki1101329-Keneba           NA                   NA                 0.0033990    0.0032219    0.0035761
Birth       ki1126311-ZVITAMBO         NA                   NA                -0.0103393   -0.0106972   -0.0099815
Birth       ki1135781-COHORTS          NA                   NA                -0.0084841   -0.0086575   -0.0083108
3 months    ki0047075b-MAL-ED          NA                   NA                -0.0337458   -0.0353148   -0.0321768
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0586438   -0.0646268   -0.0526608
3 months    ki1000108-IRC              NA                   NA                -0.0164128   -0.0181879   -0.0146377
3 months    ki1000109-EE               NA                   NA                -0.0362744   -0.0400649   -0.0324839
3 months    ki1000109-ResPak           NA                   NA                -0.0040724   -0.0045918   -0.0035530
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0268521   -0.0316453   -0.0220589
3 months    ki1017093-NIH-Birth        NA                   NA                -0.0609664   -0.0662653   -0.0556674
3 months    ki1017093b-PROVIDE         NA                   NA                -0.0355916   -0.0419010   -0.0292821
3 months    ki1017093c-NIH-Crypto      NA                   NA                -0.0231445   -0.0247993   -0.0214896
3 months    ki1066203-TanzaniaChild2   NA                   NA                -0.0080360   -0.0086991   -0.0073728
3 months    ki1101329-Keneba           NA                   NA                -0.0188657   -0.0196891   -0.0180422
3 months    ki1113344-GMS-Nepal        NA                   NA                -0.0212398   -0.0230552   -0.0194245
3 months    ki1114097-CMIN             NA                   NA                -0.0042328   -0.0044563   -0.0040093
3 months    ki1126311-ZVITAMBO         NA                   NA                -0.0238739   -0.0248800   -0.0228677
3 months    ki1135781-COHORTS          NA                   NA                -0.0191602   -0.0195450   -0.0187754
6 months    ki0047075b-MAL-ED          NA                   NA                -0.0397262   -0.0416263   -0.0378260
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0489138   -0.0538708   -0.0439567
6 months    ki1000108-IRC              NA                   NA                -0.0266212   -0.0294861   -0.0237563
6 months    ki1000109-EE               NA                   NA                -0.0127617   -0.0140886   -0.0114349
6 months    ki1000109-ResPak           NA                   NA                -0.0339053   -0.0384968   -0.0293138
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0121951   -0.0143124   -0.0100778
6 months    ki1017093-NIH-Birth        NA                   NA                -0.0606107   -0.0662124   -0.0550090
6 months    ki1017093b-PROVIDE         NA                   NA                -0.0468785   -0.0554349   -0.0383222
6 months    ki1017093c-NIH-Crypto      NA                   NA                -0.0225044   -0.0241345   -0.0208744
6 months    ki1066203-TanzaniaChild2   NA                   NA                -0.0145604   -0.0158739   -0.0132469
6 months    ki1101329-Keneba           NA                   NA                -0.0174112   -0.0181824   -0.0166400
6 months    ki1112895-Guatemala BSC    NA                   NA                -0.0377358   -0.0449537   -0.0305180
6 months    ki1113344-GMS-Nepal        NA                   NA                -0.0127703   -0.0138584   -0.0116821
6 months    ki1114097-CMIN             NA                   NA                -0.0275793   -0.0289046   -0.0262539
6 months    ki1126311-ZVITAMBO         NA                   NA                -0.0212571   -0.0221951   -0.0203190
6 months    ki1135781-COHORTS          NA                   NA                -0.0253097   -0.0258290   -0.0247904
6 months    ki1148112-LCNI-5           NA                   NA                -0.0876275   -0.0960683   -0.0791867
9 months    ki0047075b-MAL-ED          NA                   NA                -0.0360811   -0.0378537   -0.0343086
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0737705   -0.0813385   -0.0662024
9 months    ki1000108-IRC              NA                   NA                 0.0048701    0.0043460    0.0053942
9 months    ki1000109-EE               NA                   NA                 0.0046609    0.0041722    0.0051496
9 months    ki1000109-ResPak           NA                   NA                -0.0075322   -0.0086157   -0.0064486
9 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0050874   -0.0060426   -0.0041323
9 months    ki1017093-NIH-Birth        NA                   NA                -0.0262097   -0.0286862   -0.0237332
9 months    ki1017093b-PROVIDE         NA                   NA                -0.0405481   -0.0479399   -0.0331562
9 months    ki1017093c-NIH-Crypto      NA                   NA                 0.0110302    0.0102275    0.0118330
9 months    ki1066203-TanzaniaChild2   NA                   NA                -0.0274051   -0.0300957   -0.0247144
9 months    ki1101329-Keneba           NA                   NA                -0.0141855   -0.0148137   -0.0135573
9 months    ki1112895-Guatemala BSC    NA                   NA                -0.1160920   -0.1447431   -0.0874408
9 months    ki1113344-GMS-Nepal        NA                   NA                -0.0024303   -0.0026436   -0.0022170
9 months    ki1114097-CMIN             NA                   NA                -0.0260688   -0.0273069   -0.0248306
9 months    ki1126311-ZVITAMBO         NA                   NA                -0.0331327   -0.0346085   -0.0316569
9 months    ki1135781-COHORTS          NA                   NA                -0.0277345   -0.0283312   -0.0271379
9 months    ki1148112-LCNI-5           NA                   NA                -0.0957298   -0.1061373   -0.0853223
12 months   ki0047075b-MAL-ED          NA                   NA                -0.0306846   -0.0322073   -0.0291620
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0710234   -0.0782504   -0.0637964
12 months   ki1000108-IRC              NA                   NA                 0.0029249    0.0026089    0.0032409
12 months   ki1000109-EE               NA                   NA                -0.0179547   -0.0198674   -0.0160420
12 months   ki1000109-ResPak           NA                   NA                 0.0414354    0.0351514    0.0477194
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0113998   -0.0134998   -0.0092997
12 months   ki1017093-NIH-Birth        NA                   NA                 0.0100838    0.0091130    0.0110545
12 months   ki1017093b-PROVIDE         NA                   NA                -0.0306001   -0.0362603   -0.0249399
12 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0049168   -0.0052746   -0.0045590
12 months   ki1066203-TanzaniaChild2   NA                   NA                -0.0166454   -0.0185001   -0.0147907
12 months   ki1101329-Keneba           NA                   NA                -0.0206361   -0.0215863   -0.0196860
12 months   ki1112895-Guatemala BSC    NA                   NA                -0.0845563   -0.1079763   -0.0611362
12 months   ki1113344-GMS-Nepal        NA                   NA                -0.0163268   -0.0177372   -0.0149163
12 months   ki1114097-CMIN             NA                   NA                -0.0225675   -0.0237468   -0.0213882
12 months   ki1126311-ZVITAMBO         NA                   NA                -0.0691263   -0.0722853   -0.0659673
12 months   ki1135781-COHORTS          NA                   NA                -0.0235993   -0.0241249   -0.0230737
12 months   ki1148112-LCNI-5           NA                   NA                -0.0838291   -0.0931158   -0.0745424
18 months   ki0047075b-MAL-ED          NA                   NA                -0.0457653   -0.0480860   -0.0434446
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0670879   -0.0739237   -0.0602521
18 months   ki1000108-IRC              NA                   NA                 0.0026144    0.0023350    0.0028938
18 months   ki1000109-EE               NA                   NA                 0.0114928    0.0102662    0.0127194
18 months   ki1017093-NIH-Birth        NA                   NA                 0.0051437    0.0046378    0.0056496
18 months   ki1017093b-PROVIDE         NA                   NA                -0.0386131   -0.0460447   -0.0311814
18 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0108401   -0.0116766   -0.0100036
18 months   ki1066203-TanzaniaChild2   NA                   NA                -0.0503027   -0.0568467   -0.0437588
18 months   ki1101329-Keneba           NA                   NA                -0.0270821   -0.0283292   -0.0258349
18 months   ki1113344-GMS-Nepal        NA                   NA                 0.0044073    0.0040278    0.0047869
18 months   ki1114097-CMIN             NA                   NA                -0.0284086   -0.0298395   -0.0269777
18 months   ki1126311-ZVITAMBO         NA                   NA                -0.0828454   -0.0893473   -0.0763436
18 months   ki1135781-COHORTS          NA                   NA                -0.0198659   -0.0206183   -0.0191135
18 months   ki1148112-LCNI-5           NA                   NA                -0.0695028   -0.0766222   -0.0623834
24 months   ki0047075b-MAL-ED          NA                   NA                -0.0465986   -0.0490258   -0.0441714
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0268817   -0.0296171   -0.0241463
24 months   ki1000108-IRC              NA                   NA                 0.0004694    0.0004192    0.0005195
24 months   ki1017093-NIH-Birth        NA                   NA                -0.0135975   -0.0150087   -0.0121864
24 months   ki1017093b-PROVIDE         NA                   NA                -0.0123174   -0.0146044   -0.0100305
24 months   ki1017093c-NIH-Crypto      NA                   NA                 0.0402739    0.0368293    0.0437185
24 months   ki1101329-Keneba           NA                   NA                -0.0121296   -0.0127297   -0.0115295
24 months   ki1113344-GMS-Nepal        NA                   NA                 0.0032848    0.0029765    0.0035930
24 months   ki1114097-CMIN             NA                   NA                -0.0264206   -0.0279926   -0.0248486
24 months   ki1126311-ZVITAMBO         NA                   NA                -0.0804598   -0.0915384   -0.0693811
24 months   ki1135781-COHORTS          NA                   NA                -0.0069869   -0.0071447   -0.0068291
24 months   ki1148112-LCNI-5           NA                   NA                -0.0178267   -0.0198236   -0.0158297


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          NA                   NA                -0.0176578   -0.0185749   -0.0167416
Birth       ki1000108-CMC-V-BCS-2002   NA                   NA                -0.3750000   -0.4864075   -0.2719426
Birth       ki1000108-IRC              NA                   NA                -0.1228940   -0.1383262   -0.1076711
Birth       ki1101329-Keneba           NA                   NA                 0.0638763    0.0607559    0.0669864
Birth       ki1126311-ZVITAMBO         NA                   NA                -0.0990564   -0.1028309   -0.0952949
Birth       ki1135781-COHORTS          NA                   NA                -0.0858361   -0.0877423   -0.0839332
3 months    ki0047075b-MAL-ED          NA                   NA                -0.2173913   -0.2297586   -0.2051484
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.2358783   -0.2659803   -0.2064921
3 months    ki1000108-IRC              NA                   NA                -0.0734066   -0.0819625   -0.0649184
3 months    ki1000109-EE               NA                   NA                -0.0628533   -0.0698570   -0.0558955
3 months    ki1000109-ResPak           NA                   NA                -0.0099889   -0.0112765   -0.0087030
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0685435   -0.0816977   -0.0555491
3 months    ki1017093-NIH-Birth        NA                   NA                -0.2673141   -0.2971034   -0.2382089
3 months    ki1017093b-PROVIDE         NA                   NA                -0.2989691   -0.3696710   -0.2319168
3 months    ki1017093c-NIH-Crypto      NA                   NA                -0.1080074   -0.1165975   -0.0994835
3 months    ki1066203-TanzaniaChild2   NA                   NA                -0.1184792   -0.1294684   -0.1075970
3 months    ki1101329-Keneba           NA                   NA                -0.1307462   -0.1372178   -0.1243113
3 months    ki1113344-GMS-Nepal        NA                   NA                -0.1443803   -0.1585897   -0.1303452
3 months    ki1114097-CMIN             NA                   NA                -0.0311174   -0.0328129   -0.0294247
3 months    ki1126311-ZVITAMBO         NA                   NA                -0.1386638   -0.1453377   -0.1320287
3 months    ki1135781-COHORTS          NA                   NA                -0.1282012   -0.1311099   -0.1252999
6 months    ki0047075b-MAL-ED          NA                   NA                -0.2432332   -0.2577816   -0.2288530
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.1626052   -0.1819224   -0.1436038
6 months    ki1000108-IRC              NA                   NA                -0.1083482   -0.1213474   -0.0954997
6 months    ki1000109-EE               NA                   NA                -0.0245978   -0.0272214   -0.0219808
6 months    ki1000109-ResPak           NA                   NA                -0.0959969   -0.1103380   -0.0818410
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0243902   -0.0287373   -0.0200615
6 months    ki1017093-NIH-Birth        NA                   NA                -0.2260274   -0.2519083   -0.2006815
6 months    ki1017093b-PROVIDE         NA                   NA                -0.2561576   -0.3162830   -0.1987787
6 months    ki1017093c-NIH-Crypto      NA                   NA                -0.1072710   -0.1159079   -0.0987010
6 months    ki1066203-TanzaniaChild2   NA                   NA                -0.1630769   -0.1803137   -0.1460919
6 months    ki1101329-Keneba           NA                   NA                -0.1232949   -0.1294458   -0.1171774
6 months    ki1112895-Guatemala BSC    NA                   NA                -0.1333333   -0.1626085   -0.1047953
6 months    ki1113344-GMS-Nepal        NA                   NA                -0.0604173   -0.0658906   -0.0549720
6 months    ki1114097-CMIN             NA                   NA                -0.2280879   -0.2416226   -0.2147007
6 months    ki1126311-ZVITAMBO         NA                   NA                -0.1302075   -0.1367204   -0.1237319
6 months    ki1135781-COHORTS          NA                   NA                -0.1235557   -0.1264075   -0.1207111
6 months    ki1148112-LCNI-5           NA                   NA                -0.2357463   -0.2641292   -0.2080006
9 months    ki0047075b-MAL-ED          NA                   NA                -0.1745518   -0.1846671   -0.1645230
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.2000000   -0.2248757   -0.1756295
9 months    ki1000108-IRC              NA                   NA                 0.0178571    0.0159679    0.0197428
9 months    ki1000109-EE               NA                   NA                 0.0078612    0.0070431    0.0086787
9 months    ki1000109-ResPak           NA                   NA                -0.0227041   -0.0260498   -0.0193692
9 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0075865   -0.0090228   -0.0061523
9 months    ki1017093-NIH-Birth        NA                   NA                -0.0734161   -0.0808881   -0.0659958
9 months    ki1017093b-PROVIDE         NA                   NA                -0.1731512   -0.2107724   -0.1366989
9 months    ki1017093c-NIH-Crypto      NA                   NA                 0.0474839    0.0441865    0.0507699
9 months    ki1066203-TanzaniaChild2   NA                   NA                -0.1887906   -0.2110310   -0.1669586
9 months    ki1101329-Keneba           NA                   NA                -0.0788210   -0.0825931   -0.0750619
9 months    ki1112895-Guatemala BSC    NA                   NA                -0.3166144   -0.4236203   -0.2176516
9 months    ki1113344-GMS-Nepal        NA                   NA                -0.0086394   -0.0094045   -0.0078748
9 months    ki1114097-CMIN             NA                   NA                -0.1489874   -0.1571470   -0.1408853
9 months    ki1126311-ZVITAMBO         NA                   NA                -0.1702604   -0.1791692   -0.1614189
9 months    ki1135781-COHORTS          NA                   NA                -0.0991122   -0.1014582   -0.0967712
9 months    ki1148112-LCNI-5           NA                   NA                -0.3022059   -0.3457004   -0.2601172
12 months   ki0047075b-MAL-ED          NA                   NA                -0.1137302   -0.1200335   -0.1074624
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.1428230   -0.1595528   -0.1263346
12 months   ki1000108-IRC              NA                   NA                 0.0099790    0.0089110    0.0110458
12 months   ki1000109-EE               NA                   NA                -0.0251366   -0.0278854   -0.0223952
12 months   ki1000109-ResPak           NA                   NA                 0.1256010    0.1087854    0.1420992
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0143669   -0.0170551   -0.0116857
12 months   ki1017093-NIH-Birth        NA                   NA                 0.0269083    0.0243842    0.0294258
12 months   ki1017093b-PROVIDE         NA                   NA                -0.1064050   -0.1283971   -0.0848414
12 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0202998   -0.0218083   -0.0187935
12 months   ki1066203-TanzaniaChild2   NA                   NA                -0.1142771   -0.1285564   -0.1001785
12 months   ki1101329-Keneba           NA                   NA                -0.0832282   -0.0873873   -0.0790850
12 months   ki1112895-Guatemala BSC    NA                   NA                -0.1948470   -0.2611021   -0.1320728
12 months   ki1113344-GMS-Nepal        NA                   NA                -0.0476981   -0.0520241   -0.0433899
12 months   ki1114097-CMIN             NA                   NA                -0.0908457   -0.0960364   -0.0856796
12 months   ki1126311-ZVITAMBO         NA                   NA                -0.2903305   -0.3075645   -0.2733236
12 months   ki1135781-COHORTS          NA                   NA                -0.0630605   -0.0645546   -0.0615685
12 months   ki1148112-LCNI-5           NA                   NA                -0.2046221   -0.2322408   -0.1776225
18 months   ki0047075b-MAL-ED          NA                   NA                -0.1183164   -0.1250461   -0.1116268
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0974623   -0.1084153   -0.0866176
18 months   ki1000108-IRC              NA                   NA                 0.0073529    0.0065726    0.0081326
18 months   ki1000109-EE               NA                   NA                 0.0135437    0.0121167    0.0149686
18 months   ki1017093-NIH-Birth        NA                   NA                 0.0087556    0.0079016    0.0096089
18 months   ki1017093b-PROVIDE         NA                   NA                -0.1047009   -0.1271877   -0.0826626
18 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0359823   -0.0388628   -0.0331097
18 months   ki1066203-TanzaniaChild2   NA                   NA                -0.1908544   -0.2207917   -0.1616513
18 months   ki1101329-Keneba           NA                   NA                -0.0839980   -0.0881994   -0.0798129
18 months   ki1113344-GMS-Nepal        NA                   NA                 0.0083015    0.0075922    0.0090102
18 months   ki1114097-CMIN             NA                   NA                -0.0801978   -0.0845701   -0.0758431
18 months   ki1126311-ZVITAMBO         NA                   NA                -0.1743035   -0.1904779   -0.1583488
18 months   ki1135781-COHORTS          NA                   NA                -0.0317855   -0.0330283   -0.0305441
18 months   ki1148112-LCNI-5           NA                   NA                -0.1409801   -0.1575766   -0.1246216
24 months   ki0047075b-MAL-ED          NA                   NA                -0.1241240   -0.1314155   -0.1168795
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0375940   -0.0415708   -0.0336323
24 months   ki1000108-IRC              NA                   NA                 0.0011292    0.0010088    0.0012496
24 months   ki1017093-NIH-Birth        NA                   NA                -0.0245098   -0.0271191   -0.0219071
24 months   ki1017093b-PROVIDE         NA                   NA                -0.0374550   -0.0446948   -0.0302654
24 months   ki1017093c-NIH-Crypto      NA                   NA                 0.1568241    0.1454383    0.1680583
24 months   ki1101329-Keneba           NA                   NA                -0.0362627   -0.0381236   -0.0344052
24 months   ki1113344-GMS-Nepal        NA                   NA                 0.0073502    0.0066653    0.0080347
24 months   ki1114097-CMIN             NA                   NA                -0.0660244   -0.0702204   -0.0618449
24 months   ki1126311-ZVITAMBO         NA                   NA                -0.1372549   -0.1589521   -0.1159639
24 months   ki1135781-COHORTS          NA                   NA                -0.0131581   -0.0134592   -0.0128570
24 months   ki1148112-LCNI-5           NA                   NA                -0.0404162   -0.0451372   -0.0357165


