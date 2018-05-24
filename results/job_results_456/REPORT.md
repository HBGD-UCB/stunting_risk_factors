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

* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/0d086ee6-03a9-4112-ba29-6d68a4c0321e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d086ee6-03a9-4112-ba29-6d68a4c0321e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/0d086ee6-03a9-4112-ba29-6d68a4c0321e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d086ee6-03a9-4112-ba29-6d68a4c0321e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n     nA   nAY0   nAY1
----------  -------------------------  -------  ------  -----  -----  -----
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

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          Female               NA                0.2380353   0.2084033   0.2676672
12 months   ki0047075b-MAL-ED          Male                 NA                0.3004866   0.2691352   0.3318380
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.4270270   0.3556517   0.4984023
12 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.5683060   0.4964451   0.6401669
12 months   ki1000108-IRC              Female               NA                0.2967033   0.2302558   0.3631508
12 months   ki1000108-IRC              Male                 NA                0.2901786   0.2306717   0.3496854
12 months   ki1000109-EE               Female               NA                0.6954023   0.6269223   0.7638823
12 months   ki1000109-EE               Male                 NA                0.7322404   0.6679967   0.7964842
12 months   ki1000109-ResPak           Female               NA                0.3777778   0.2773532   0.4782024
12 months   ki1000109-ResPak           Male                 NA                0.2884615   0.2011650   0.3757580
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.7843137   0.6708146   0.8978128
12 months   ki1000304b-SAS-FoodSuppl   Male                 NA                0.8048780   0.6829096   0.9268465
12 months   ki1017093-NIH-Birth        Female               NA                0.3866667   0.3229701   0.4503633
12 months   ki1017093-NIH-Birth        Male                 NA                0.3646617   0.3067591   0.4225642
12 months   ki1017093b-PROVIDE         Female               NA                0.2461538   0.1410884   0.3512193
12 months   ki1017093b-PROVIDE         Male                 NA                0.3181818   0.2205475   0.4158162
12 months   ki1017093c-NIH-Crypto      Female               NA                0.2374302   0.1933217   0.2815387
12 months   ki1017093c-NIH-Crypto      Male                 NA                0.2471264   0.2017754   0.2924774
12 months   ki1066203-TanzaniaChild2   Female               NA                0.1265060   0.0758666   0.1771454
12 months   ki1066203-TanzaniaChild2   Male                 NA                0.1623037   0.1099378   0.2146695
12 months   ki1101329-Keneba           Female               NA                0.2257721   0.1990238   0.2525204
12 months   ki1101329-Keneba           Male                 NA                0.2685828   0.2412278   0.2959377
12 months   ki1112895-Guatemala BSC    Female               NA                0.3461538   0.1615375   0.5307701
12 months   ki1112895-Guatemala BSC    Male                 NA                0.5185185   0.3282467   0.7087903
12 months   ki1113344-GMS-Nepal        Female               NA                0.3246269   0.2685176   0.3807361
12 months   ki1113344-GMS-Nepal        Male                 NA                0.3586207   0.3033730   0.4138683
12 months   ki1114097-CMIN             Female               NA                0.2231183   0.1931926   0.2530440
12 months   ki1114097-CMIN             Male                 NA                0.2709832   0.2408085   0.3011579
12 months   ki1126311-ZVITAMBO         Female               NA                0.1742081   0.1491978   0.1992185
12 months   ki1126311-ZVITAMBO         Male                 NA                0.3072215   0.2755778   0.3388653
12 months   ki1135781-COHORTS          Female               NA                0.3484062   0.3337258   0.3630866
12 months   ki1135781-COHORTS          Male                 NA                0.3978325   0.3834170   0.4122480
12 months   ki1148112-LCNI-5           Female               NA                0.3269231   0.2531934   0.4006528
12 months   ki1148112-LCNI-5           Male                 NA                0.4935065   0.4144163   0.5725967
18 months   ki0047075b-MAL-ED          Female               NA                0.3394737   0.3057970   0.3731504
18 months   ki0047075b-MAL-ED          Male                 NA                0.4325700   0.3979233   0.4672167
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6216216   0.5516410   0.6916022
18 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.7554348   0.6932442   0.8176253
18 months   ki1000108-IRC              Female               NA                0.3586957   0.2893098   0.4280815
18 months   ki1000108-IRC              Male                 NA                0.3529412   0.2898583   0.4160241
18 months   ki1000109-EE               Female               NA                0.8604651   0.8086074   0.9123228
18 months   ki1000109-EE               Male                 NA                0.8370787   0.7827497   0.8914076
18 months   ki1017093-NIH-Birth        Female               NA                0.5934579   0.5275772   0.6593387
18 months   ki1017093-NIH-Birth        Male                 NA                0.5823293   0.5210069   0.6436517
18 months   ki1017093b-PROVIDE         Female               NA                0.3166667   0.1985434   0.4347899
18 months   ki1017093b-PROVIDE         Male                 NA                0.4074074   0.3000224   0.5147924
18 months   ki1017093c-NIH-Crypto      Female               NA                0.2906250   0.2408375   0.3404125
18 months   ki1017093c-NIH-Crypto      Male                 NA                0.3121019   0.2608115   0.3633923
18 months   ki1066203-TanzaniaChild2   Female               NA                0.2066116   0.1343314   0.2788917
18 months   ki1066203-TanzaniaChild2   Male                 NA                0.3138686   0.2360096   0.3917276
18 months   ki1101329-Keneba           Female               NA                0.2936763   0.2644444   0.3229082
18 months   ki1101329-Keneba           Male                 NA                0.3494949   0.3197859   0.3792040
18 months   ki1113344-GMS-Nepal        Female               NA                0.5355805   0.4757042   0.5954569
18 months   ki1113344-GMS-Nepal        Male                 NA                0.5265018   0.4682768   0.5847267
18 months   ki1114097-CMIN             Female               NA                0.3243243   0.2913988   0.3572498
18 months   ki1114097-CMIN             Male                 NA                0.3826406   0.3493231   0.4159581
18 months   ki1126311-ZVITAMBO         Female               NA                0.4189723   0.3581041   0.4798405
18 months   ki1126311-ZVITAMBO         Male                 NA                0.5581395   0.4838360   0.6324431
18 months   ki1135781-COHORTS          Female               NA                0.6032881   0.5776483   0.6289278
18 months   ki1135781-COHORTS          Male                 NA                0.6448659   0.6208749   0.6688570
18 months   ki1148112-LCNI-5           Female               NA                0.4254144   0.3532868   0.4975419
18 months   ki1148112-LCNI-5           Male                 NA                0.5625000   0.4891076   0.6358924
24 months   ki0047075b-MAL-ED          Female               NA                0.3264463   0.2923256   0.3605670
24 months   ki0047075b-MAL-ED          Male                 NA                0.4220183   0.3869630   0.4570737
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6881720   0.6215095   0.7548346
24 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.7419355   0.6789670   0.8049040
24 months   ki1000108-IRC              Female               NA                0.4162162   0.3450983   0.4873342
24 months   ki1000108-IRC              Male                 NA                0.4151786   0.3505708   0.4797863
24 months   ki1017093-NIH-Birth        Female               NA                0.5384615   0.4684098   0.6085133
24 months   ki1017093-NIH-Birth        Male                 NA                0.5683761   0.5048404   0.6319117
24 months   ki1017093b-PROVIDE         Female               NA                0.3125000   0.1985585   0.4264415
24 months   ki1017093b-PROVIDE         Male                 NA                0.3411765   0.2400476   0.4423053
24 months   ki1017093c-NIH-Crypto      Female               NA                0.2961538   0.2406041   0.3517036
24 months   ki1017093c-NIH-Crypto      Male                 NA                0.2165354   0.1658331   0.2672378
24 months   ki1101329-Keneba           Female               NA                0.3211679   0.2892389   0.3530969
24 months   ki1101329-Keneba           Male                 NA                0.3466224   0.3155739   0.3776709
24 months   ki1113344-GMS-Nepal        Female               NA                0.4506438   0.3866925   0.5145951
24 months   ki1113344-GMS-Nepal        Male                 NA                0.4436090   0.3838459   0.5033721
24 months   ki1114097-CMIN             Female               NA                0.3704348   0.3309465   0.4099231
24 months   ki1114097-CMIN             Male                 NA                0.4265842   0.3884591   0.4647093
24 months   ki1126311-ZVITAMBO         Female               NA                0.5405405   0.4265024   0.6545787
24 months   ki1126311-ZVITAMBO         Male                 NA                0.6666667   0.5234818   0.8098516
24 months   ki1135781-COHORTS          Female               NA                0.5232911   0.5077145   0.5388678
24 months   ki1135781-COHORTS          Male                 NA                0.5379849   0.5231804   0.5527893
24 months   ki1148112-LCNI-5           Female               NA                0.4238411   0.3448888   0.5027933
24 months   ki1148112-LCNI-5           Male                 NA                0.4589041   0.3779382   0.5398700
3 months    ki0047075b-MAL-ED          Female               NA                0.1214848   0.1000038   0.1429658
3 months    ki0047075b-MAL-ED          Male                 NA                0.1889764   0.1632345   0.2147182
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.1912568   0.1341961   0.2483175
3 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.3072626   0.2395824   0.3749427
3 months    ki1000108-IRC              Female               NA                0.2032967   0.1447557   0.2618377
3 months    ki1000108-IRC              Male                 NA                0.2400000   0.1841268   0.2958732
3 months    ki1000109-EE               Female               NA                0.5384615   0.4659392   0.6109839
3 months    ki1000109-EE               Male                 NA                0.6134021   0.5447857   0.6820185
3 months    ki1000109-ResPak           Female               NA                0.4032258   0.3167184   0.4897332
3 months    ki1000109-ResPak           Male                 NA                0.4117647   0.3288912   0.4946382
3 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.3703704   0.2409025   0.4998383
3 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.4186047   0.2703863   0.5668230
3 months    ki1017093-NIH-Birth        Female               NA                0.1598513   0.1160195   0.2036831
3 months    ki1017093-NIH-Birth        Male                 NA                0.2890365   0.2377804   0.3402927
3 months    ki1017093b-PROVIDE         Female               NA                0.0704225   0.0107308   0.1301142
3 months    ki1017093b-PROVIDE         Male                 NA                0.1546392   0.0824720   0.2268063
3 months    ki1017093c-NIH-Crypto      Female               NA                0.1918919   0.1517397   0.2320440
3 months    ki1017093c-NIH-Crypto      Male                 NA                0.2374302   0.1933226   0.2815377
3 months    ki1066203-TanzaniaChild2   Female               NA                0.0596491   0.0321290   0.0871693
3 months    ki1066203-TanzaniaChild2   Male                 NA                0.0758621   0.0453615   0.1063626
3 months    ki1101329-Keneba           Female               NA                0.1238095   0.1038831   0.1437359
3 months    ki1101329-Keneba           Male                 NA                0.1631579   0.1417033   0.1846125
3 months    ki1113344-GMS-Nepal        Female               NA                0.1240876   0.0850172   0.1631580
3 months    ki1113344-GMS-Nepal        Male                 NA                0.1683502   0.1257582   0.2109421
3 months    ki1114097-CMIN             Female               NA                0.1314685   0.1066917   0.1562453
3 months    ki1114097-CMIN             Male                 NA                0.1402597   0.1157240   0.1647955
3 months    ki1126311-ZVITAMBO         Female               NA                0.1471119   0.1262505   0.1679733
3 months    ki1126311-ZVITAMBO         Male                 NA                0.1960447   0.1732230   0.2188664
3 months    ki1135781-COHORTS          Female               NA                0.1286290   0.1193115   0.1379465
3 months    ki1135781-COHORTS          Male                 NA                0.1686144   0.1586194   0.1786094
6 months    ki0047075b-MAL-ED          Female               NA                0.1232227   0.1010410   0.1454045
6 months    ki0047075b-MAL-ED          Male                 NA                0.2030516   0.1760323   0.2300710
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.2526882   0.1901530   0.3152233
6 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.3497268   0.2805398   0.4189137
6 months    ki1000108-IRC              Female               NA                0.2131148   0.1537103   0.2725192
6 months    ki1000108-IRC              Male                 NA                0.2723214   0.2139542   0.3306886
6 months    ki1000109-EE               Female               NA                0.5054945   0.4327600   0.5782290
6 months    ki1000109-EE               Male                 NA                0.5315789   0.4605300   0.6026279
6 months    ki1000109-ResPak           Female               NA                0.3153153   0.2286929   0.4019378
6 months    ki1000109-ResPak           Male                 NA                0.3870968   0.3011818   0.4730118
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.4909091   0.3580966   0.6237215
6 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.5121951   0.3583900   0.6660002
6 months    ki1017093-NIH-Birth        Female               NA                0.1959184   0.1461724   0.2456643
6 months    ki1017093-NIH-Birth        Male                 NA                0.3287671   0.2748357   0.3826986
6 months    ki1017093b-PROVIDE         Female               NA                0.1212121   0.0422143   0.2002099
6 months    ki1017093b-PROVIDE         Male                 NA                0.2298851   0.1411806   0.3185895
6 months    ki1017093c-NIH-Crypto      Female               NA                0.1878453   0.1475813   0.2281093
6 months    ki1017093c-NIH-Crypto      Male                 NA                0.2322946   0.1882106   0.2763787
6 months    ki1066203-TanzaniaChild2   Female               NA                0.0737705   0.0409394   0.1066016
6 months    ki1066203-TanzaniaChild2   Male                 NA                0.1038462   0.0667286   0.1409637
6 months    ki1101329-Keneba           Female               NA                0.1226508   0.1024254   0.1428763
6 months    ki1101329-Keneba           Male                 NA                0.1586271   0.1368136   0.1804406
6 months    ki1112895-Guatemala BSC    Female               NA                0.2452830   0.1288988   0.3616673
6 months    ki1112895-Guatemala BSC    Male                 NA                0.3207547   0.1944940   0.4470154
6 months    ki1113344-GMS-Nepal        Female               NA                0.1978022   0.1505079   0.2450965
6 months    ki1113344-GMS-Nepal        Male                 NA                0.2241379   0.1760999   0.2721759
6 months    ki1114097-CMIN             Female               NA                0.0904926   0.0714569   0.1095283
6 months    ki1114097-CMIN             Male                 NA                0.1484943   0.1260295   0.1709591
6 months    ki1126311-ZVITAMBO         Female               NA                0.1411531   0.1196323   0.1626739
6 months    ki1126311-ZVITAMBO         Male                 NA                0.1845124   0.1609993   0.2080255
6 months    ki1135781-COHORTS          Female               NA                0.1770245   0.1662024   0.1878466
6 months    ki1135781-COHORTS          Male                 NA                0.2301542   0.2187707   0.2415377
6 months    ki1148112-LCNI-5           Female               NA                0.2836538   0.2223209   0.3449868
6 months    ki1148112-LCNI-5           Male                 NA                0.4593301   0.3916868   0.5269735
9 months    ki0047075b-MAL-ED          Female               NA                0.1695545   0.1436732   0.1954357
9 months    ki0047075b-MAL-ED          Male                 NA                0.2427885   0.2136450   0.2719319
9 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.2950820   0.2289126   0.3612514
9 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.4426230   0.3705606   0.5146853
9 months    ki1000108-IRC              Female               NA                0.2786885   0.2136489   0.3437281
9 months    ki1000108-IRC              Male                 NA                0.2678571   0.2097930   0.3259213
9 months    ki1000109-EE               Female               NA                0.5977654   0.5258336   0.6696971
9 months    ki1000109-EE               Male                 NA                0.5882353   0.5176000   0.6588705
9 months    ki1000109-ResPak           Female               NA                0.3232323   0.2308818   0.4155828
9 months    ki1000109-ResPak           Male                 NA                0.3392857   0.2513915   0.4271799
9 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.6666667   0.5325166   0.8008168
9 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.6756757   0.5239441   0.8274072
9 months    ki1017093-NIH-Birth        Female               NA                0.3261803   0.2659244   0.3864362
9 months    ki1017093-NIH-Birth        Male                 NA                0.3832117   0.3255896   0.4408338
9 months    ki1017093b-PROVIDE         Female               NA                0.1791045   0.0869988   0.2712102
9 months    ki1017093b-PROVIDE         Male                 NA                0.2747253   0.1827213   0.3667293
9 months    ki1017093c-NIH-Crypto      Female               NA                0.2430168   0.1985561   0.2874774
9 months    ki1017093c-NIH-Crypto      Male                 NA                0.2212644   0.1776211   0.2649076
9 months    ki1066203-TanzaniaChild2   Female               NA                0.1153846   0.0719167   0.1588525
9 months    ki1066203-TanzaniaChild2   Male                 NA                0.1725664   0.1232445   0.2218882
9 months    ki1101329-Keneba           Female               NA                0.1650099   0.1420670   0.1879529
9 months    ki1101329-Keneba           Male                 NA                0.1941565   0.1703499   0.2179630
9 months    ki1112895-Guatemala BSC    Female               NA                0.2580645   0.1027314   0.4133976
9 months    ki1112895-Guatemala BSC    Male                 NA                0.4827586   0.2993540   0.6661633
9 months    ki1113344-GMS-Nepal        Female               NA                0.2786260   0.2242905   0.3329614
9 months    ki1113344-GMS-Nepal        Male                 NA                0.2837370   0.2317149   0.3357591
9 months    ki1114097-CMIN             Female               NA                0.1467269   0.1234219   0.1700318
9 months    ki1114097-CMIN             Male                 NA                0.2010417   0.1756825   0.2264008
9 months    ki1126311-ZVITAMBO         Female               NA                0.1610256   0.1379487   0.1841026
9 months    ki1126311-ZVITAMBO         Male                 NA                0.2277328   0.2015765   0.2538891
9 months    ki1135781-COHORTS          Female               NA                0.2492534   0.2364022   0.2621046
9 months    ki1135781-COHORTS          Male                 NA                0.3075641   0.2945068   0.3206214
9 months    ki1148112-LCNI-5           Female               NA                0.2222222   0.1581031   0.2863413
9 months    ki1148112-LCNI-5           Male                 NA                0.4125000   0.3361025   0.4888975
Birth       ki0047075b-MAL-ED          Female               NA                0.1303763   0.1061732   0.1545795
Birth       ki0047075b-MAL-ED          Male                 NA                0.1350993   0.1107084   0.1594903
Birth       ki1000108-CMC-V-BCS-2002   Female               NA                0.1111111   0.0187752   0.2034470
Birth       ki1000108-CMC-V-BCS-2002   Male                 NA                0.2444444   0.1181770   0.3707119
Birth       ki1000108-IRC              Female               NA                0.0982659   0.0538513   0.1426805
Birth       ki1000108-IRC              Male                 NA                0.1302326   0.0851871   0.1752780
Birth       ki1101329-Keneba           Female               NA                0.0569106   0.0401907   0.0736305
Birth       ki1101329-Keneba           Male                 NA                0.0498132   0.0347607   0.0648657
Birth       ki1126311-ZVITAMBO         Female               NA                0.0932611   0.0792786   0.1072437
Birth       ki1126311-ZVITAMBO         Male                 NA                0.1147174   0.0999398   0.1294950
Birth       ki1135781-COHORTS          Female               NA                0.0895305   0.0814650   0.0975961
Birth       ki1135781-COHORTS          Male                 NA                0.1073254   0.0989784   0.1156723


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
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
Birth       ki0047075b-MAL-ED          NA                   NA                0.1327552   0.1326356   0.1328748
Birth       ki1000108-CMC-V-BCS-2002   NA                   NA                0.1777778   0.1639274   0.1916282
Birth       ki1000108-IRC              NA                   NA                0.1159794   0.1143963   0.1175625
Birth       ki1101329-Keneba           NA                   NA                0.0532122   0.0530351   0.0533893
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1043781   0.1040202   0.1047359
Birth       ki1135781-COHORTS          NA                   NA                0.0988412   0.0986679   0.0990146


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          Male                 Female            1.2623618   1.0731061   1.4849951
12 months   ki1000108-CMC-V-BCS-2002   Male                 Female            1.3308432   1.0792072   1.6411525
12 months   ki1000108-IRC              Male                 Female            0.9780093   0.7218814   1.3250128
12 months   ki1000109-EE               Male                 Female            1.0529739   0.9228656   1.2014252
12 months   ki1000109-ResPak           Male                 Female            0.7635747   0.5104075   1.1423153
12 months   ki1000304b-SAS-FoodSuppl   Male                 Female            1.0262195   0.8322247   1.2654353
12 months   ki1017093-NIH-Birth        Male                 Female            0.9430905   0.7502171   1.1855497
12 months   ki1017093b-PROVIDE         Male                 Female            1.2926136   0.7641324   2.1865976
12 months   ki1017093c-NIH-Crypto      Male                 Female            1.0408384   0.8016330   1.3514221
12 months   ki1066203-TanzaniaChild2   Male                 Female            1.2829718   0.7672423   2.1453674
12 months   ki1101329-Keneba           Male                 Female            1.1896189   1.0175497   1.3907853
12 months   ki1112895-Guatemala BSC    Male                 Female            1.4979424   0.7840456   2.8618635
12 months   ki1113344-GMS-Nepal        Male                 Female            1.1047166   0.8763897   1.3925298
12 months   ki1114097-CMIN             Male                 Female            1.2145272   1.0202328   1.4458232
12 months   ki1126311-ZVITAMBO         Male                 Female            1.7635315   1.4779061   2.1043577
12 months   ki1135781-COHORTS          Male                 Female            1.1418638   1.0801375   1.2071177
12 months   ki1148112-LCNI-5           Male                 Female            1.5095493   1.1446991   1.9906881
18 months   ki0047075b-MAL-ED          Male                 Female            1.2742371   1.1217019   1.4475149
18 months   ki1000108-CMC-V-BCS-2002   Male                 Female            1.2152647   1.0570639   1.3971418
18 months   ki1000108-IRC              Male                 Female            0.9839572   0.7561275   1.2804345
18 months   ki1000109-EE               Male                 Female            0.9728211   0.8903645   1.0629141
18 months   ki1017093-NIH-Birth        Male                 Female            0.9812478   0.8420274   1.1434868
18 months   ki1017093b-PROVIDE         Male                 Female            1.2865497   0.8148224   2.0313753
18 months   ki1017093c-NIH-Crypto      Male                 Female            1.0738990   0.8469649   1.3616374
18 months   ki1066203-TanzaniaChild2   Male                 Female            1.5191241   0.9893322   2.3326219
18 months   ki1101329-Keneba           Male                 Female            1.1900686   1.0440580   1.3564986
18 months   ki1113344-GMS-Nepal        Male                 Female            0.9830488   0.8400036   1.1504532
18 months   ki1114097-CMIN             Male                 Female            1.1798085   1.0321108   1.3486420
18 months   ki1126311-ZVITAMBO         Male                 Female            1.3321632   1.0939043   1.6223163
18 months   ki1135781-COHORTS          Male                 Female            1.0689188   1.0102165   1.1310321
18 months   ki1148112-LCNI-5           Male                 Female            1.3222403   1.0675737   1.6376568
24 months   ki0047075b-MAL-ED          Male                 Female            1.2927651   1.1311945   1.4774130
24 months   ki1000108-CMC-V-BCS-2002   Male                 Female            1.0781250   0.9478437   1.2263135
24 months   ki1000108-IRC              Male                 Female            0.9975070   0.7916738   1.2568561
24 months   ki1017093-NIH-Birth        Male                 Female            1.0555556   0.8891782   1.2530644
24 months   ki1017093b-PROVIDE         Male                 Female            1.0917647   0.6824262   1.7466360
24 months   ki1017093c-NIH-Crypto      Male                 Female            0.7311586   0.5416464   0.9869777
24 months   ki1101329-Keneba           Male                 Female            1.0792560   0.9440794   1.2337877
24 months   ki1113344-GMS-Nepal        Male                 Female            0.9843895   0.8094442   1.1971459
24 months   ki1114097-CMIN             Male                 Female            1.1515772   1.0020265   1.3234480
24 months   ki1126311-ZVITAMBO         Male                 Female            1.2333333   0.9127067   1.6665936
24 months   ki1135781-COHORTS          Male                 Female            1.0280794   0.9872367   1.0706118
24 months   ki1148112-LCNI-5           Male                 Female            1.0827269   0.8377067   1.3994128
3 months    ki0047075b-MAL-ED          Male                 Female            1.5555556   1.2443673   1.9445650
3 months    ki1000108-CMC-V-BCS-2002   Male                 Female            1.6065443   1.1087545   2.3278233
3 months    ki1000108-IRC              Male                 Female            1.1805405   0.8151996   1.7096132
3 months    ki1000109-EE               Male                 Female            1.1391753   0.9562122   1.3571468
3 months    ki1000109-ResPak           Male                 Female            1.0211765   0.7609321   1.3704264
3 months    ki1000304b-SAS-FoodSuppl   Male                 Female            1.1302326   0.6871960   1.8588957
3 months    ki1017093-NIH-Birth        Male                 Female            1.8081589   1.3044202   2.5064303
3 months    ki1017093b-PROVIDE         Male                 Female            2.1958763   0.8344177   5.7787275
3 months    ki1017093c-NIH-Crypto      Male                 Female            1.2373121   0.9353182   1.6368134
3 months    ki1066203-TanzaniaChild2   Male                 Female            1.2718053   0.6896772   2.3452836
3 months    ki1101329-Keneba           Male                 Female            1.3178138   1.0705173   1.6222373
3 months    ki1113344-GMS-Nepal        Male                 Female            1.3567043   0.9058754   2.0318981
3 months    ki1114097-CMIN             Male                 Female            1.0668693   0.8249711   1.3796969
3 months    ki1126311-ZVITAMBO         Male                 Female            1.3326229   1.1092468   1.6009818
3 months    ki1135781-COHORTS          Male                 Female            1.3108577   1.1937289   1.4394792
6 months    ki0047075b-MAL-ED          Male                 Female            1.6478422   1.3173353   2.0612701
6 months    ki1000108-CMC-V-BCS-2002   Male                 Female            1.3840251   1.0081960   1.8999535
6 months    ki1000108-IRC              Male                 Female            1.2778159   0.8990043   1.8162468
6 months    ki1000109-EE               Male                 Female            1.0516018   0.8640952   1.2797969
6 months    ki1000109-ResPak           Male                 Female            1.2276498   0.8623711   1.7476513
6 months    ki1000304b-SAS-FoodSuppl   Male                 Female            1.0433604   0.6964644   1.5630390
6 months    ki1017093-NIH-Birth        Male                 Female            1.6780822   1.2403074   2.2703725
6 months    ki1017093b-PROVIDE         Male                 Female            1.8965517   0.8892678   4.0447978
6 months    ki1017093c-NIH-Crypto      Male                 Female            1.2366272   0.9287662   1.6465359
6 months    ki1066203-TanzaniaChild2   Male                 Female            1.4076923   0.7954451   2.4911810
6 months    ki1101329-Keneba           Male                 Female            1.2933225   1.0434142   1.6030863
6 months    ki1112895-Guatemala BSC    Male                 Female            1.3076923   0.7059221   2.4224476
6 months    ki1113344-GMS-Nepal        Male                 Female            1.1331418   0.8219281   1.5621929
6 months    ki1114097-CMIN             Male                 Female            1.6409559   1.2663916   2.1263062
6 months    ki1126311-ZVITAMBO         Male                 Female            1.3071796   1.0716124   1.5945303
6 months    ki1135781-COHORTS          Male                 Female            1.3001264   1.2018060   1.4064904
6 months    ki1148112-LCNI-5           Male                 Female            1.6193334   1.2465803   2.1035472
9 months    ki0047075b-MAL-ED          Male                 Female            1.4319203   1.1791921   1.7388140
9 months    ki1000108-CMC-V-BCS-2002   Male                 Female            1.5000000   1.1369562   1.9789681
9 months    ki1000108-IRC              Male                 Female            0.9611345   0.6989601   1.3216482
9 months    ki1000109-EE               Male                 Female            0.9840572   0.8302155   1.1664063
9 months    ki1000109-ResPak           Male                 Female            1.0496652   0.7137680   1.5436345
9 months    ki1000304b-SAS-FoodSuppl   Male                 Female            1.0135135   0.7496818   1.3701941
9 months    ki1017093-NIH-Birth        Male                 Female            1.1748463   0.9258384   1.4908259
9 months    ki1017093b-PROVIDE         Male                 Female            1.5338828   0.8303674   2.8334401
9 months    ki1017093c-NIH-Crypto      Male                 Female            0.9104902   0.6957239   1.1915537
9 months    ki1066203-TanzaniaChild2   Male                 Female            1.4955752   0.9320563   2.3997962
9 months    ki1101329-Keneba           Male                 Female            1.1766349   0.9775324   1.4162904
9 months    ki1112895-Guatemala BSC    Male                 Female            1.8706897   0.9180760   3.8117541
9 months    ki1113344-GMS-Nepal        Male                 Female            1.0183438   0.7791987   1.3308854
9 months    ki1114097-CMIN             Male                 Female            1.3701763   1.1186390   1.6782743
9 months    ki1126311-ZVITAMBO         Male                 Female            1.4142642   1.1769798   1.6993861
9 months    ki1135781-COHORTS          Male                 Female            1.2339414   1.1542205   1.3191685
9 months    ki1148112-LCNI-5           Male                 Female            1.8562500   1.3174477   2.6154086
Birth       ki0047075b-MAL-ED          Male                 Female            1.0362258   0.7998193   1.3425083
Birth       ki1000108-CMC-V-BCS-2002   Male                 Female            2.2000000   0.8269410   5.8528967
Birth       ki1000108-IRC              Male                 Female            1.3253078   0.7501365   2.3414947
Birth       ki1101329-Keneba           Male                 Female            0.8752891   0.5742687   1.3340986
Birth       ki1126311-ZVITAMBO         Male                 Female            1.2300665   1.0094443   1.4989075
Birth       ki1135781-COHORTS          Male                 Female            1.1987573   1.0642516   1.3502626


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki0047075b-MAL-ED          Female               NA                 0.0317667    0.0020957   0.0614378
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                 0.0702556   -0.0014846   0.1419958
12 months   ki1000108-IRC              Female               NA                -0.0035998   -0.0700481   0.0628484
12 months   ki1000109-EE               Female               NA                 0.0188834   -0.0496233   0.0873902
12 months   ki1000109-ResPak           Female               NA                -0.0478809   -0.1485019   0.0527401
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                 0.0091645   -0.1043540   0.1226831
12 months   ki1017093-NIH-Birth        Female               NA                -0.0119212   -0.0756252   0.0517827
12 months   ki1017093b-PROVIDE         Female               NA                 0.0414279   -0.0637900   0.1466457
12 months   ki1017093c-NIH-Crypto      Female               NA                 0.0047795   -0.0393305   0.0488894
12 months   ki1066203-TanzaniaChild2   Female               NA                 0.0191522   -0.0315211   0.0698256
12 months   ki1101329-Keneba           Female               NA                 0.0221745   -0.0045907   0.0489397
12 months   ki1112895-Guatemala BSC    Female               NA                 0.0878084   -0.0982875   0.2739043
12 months   ki1113344-GMS-Nepal        Female               NA                 0.0176670   -0.0384599   0.0737940
12 months   ki1114097-CMIN             Female               NA                 0.0252974   -0.0046515   0.0552464
12 months   ki1126311-ZVITAMBO         Female               NA                 0.0638871    0.0386781   0.0890961
12 months   ki1135781-COHORTS          Female               NA                 0.0258269    0.0111371   0.0405167
12 months   ki1148112-LCNI-5           Female               NA                 0.0827543    0.0084421   0.1570666
18 months   ki0047075b-MAL-ED          Female               NA                 0.0473310    0.0135744   0.0810876
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                 0.0667253   -0.0035884   0.1370389
18 months   ki1000108-IRC              Female               NA                -0.0031401   -0.0725265   0.0662464
18 months   ki1000109-EE               Female               NA                -0.0118937   -0.0637659   0.0399785
18 months   ki1017093-NIH-Birth        Female               NA                -0.0059849   -0.0718676   0.0598977
18 months   ki1017093b-PROVIDE         Female               NA                 0.0521277   -0.0662292   0.1704845
18 months   ki1017093c-NIH-Crypto      Female               NA                 0.0106368   -0.0391577   0.0604314
18 months   ki1066203-TanzaniaChild2   Female               NA                 0.0569543   -0.0156214   0.1295301
18 months   ki1101329-Keneba           Female               NA                 0.0287366   -0.0005219   0.0579950
18 months   ki1113344-GMS-Nepal        Female               NA                -0.0046714   -0.0645490   0.0552061
18 months   ki1114097-CMIN             Female               NA                 0.0299077   -0.0030490   0.0628643
18 months   ki1126311-ZVITAMBO         Female               NA                 0.0563218   -0.0048927   0.1175363
18 months   ki1135781-COHORTS          Female               NA                 0.0217119   -0.0039388   0.0473627
18 months   ki1148112-LCNI-5           Female               NA                 0.0675828   -0.0048953   0.1400609
24 months   ki0047075b-MAL-ED          Female               NA                 0.0489735    0.0147666   0.0831804
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                 0.0268817   -0.0398370   0.0936004
24 months   ki1000108-IRC              Female               NA                -0.0005683   -0.0716863   0.0705497
24 months   ki1017093-NIH-Birth        Female               NA                 0.0163170   -0.0537489   0.0863830
24 months   ki1017093b-PROVIDE         Female               NA                 0.0163591   -0.0976053   0.1303235
24 months   ki1017093c-NIH-Crypto      Female               NA                -0.0393445   -0.0950009   0.0163119
24 months   ki1101329-Keneba           Female               NA                 0.0133249   -0.0186098   0.0452595
24 months   ki1113344-GMS-Nepal        Female               NA                -0.0037500   -0.0677020   0.0602021
24 months   ki1114097-CMIN             Female               NA                 0.0297289   -0.0097907   0.0692484
24 months   ki1126311-ZVITAMBO         Female               NA                 0.0456664   -0.0689086   0.1602413
24 months   ki1135781-COHORTS          Female               NA                 0.0077068   -0.0078706   0.0232843
24 months   ki1148112-LCNI-5           Female               NA                 0.0172364   -0.0617411   0.0962139
3 months    ki0047075b-MAL-ED          Female               NA                 0.0337458    0.0122075   0.0552840
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                 0.0573620   -0.0000115   0.1147355
3 months    ki1000108-IRC              Female               NA                 0.0202905   -0.0382774   0.0788584
3 months    ki1000109-EE               Female               NA                 0.0386661   -0.0339552   0.1112875
3 months    ki1000109-ResPak           Female               NA                 0.0044665   -0.0820424   0.0909755
3 months    ki1000304b-SAS-FoodSuppl   Female               NA                 0.0213822   -0.1081744   0.1509388
3 months    ki1017093-NIH-Birth        Female               NA                 0.0682189    0.0240679   0.1123698
3 months    ki1017093b-PROVIDE         Female               NA                 0.0486251   -0.0113991   0.1086493
3 months    ki1017093c-NIH-Crypto      Female               NA                 0.0223938   -0.0177924   0.0625801
3 months    ki1066203-TanzaniaChild2   Female               NA                 0.0081770   -0.0193512   0.0357051
3 months    ki1101329-Keneba           Female               NA                 0.0204827    0.0005393   0.0404261
3 months    ki1113344-GMS-Nepal        Female               NA                 0.0230227   -0.0160898   0.0621353
3 months    ki1114097-CMIN             Female               NA                 0.0045584   -0.0202194   0.0293362
3 months    ki1126311-ZVITAMBO         Female               NA                 0.0250589    0.0041733   0.0459446
3 months    ki1135781-COHORTS          Female               NA                 0.0208251    0.0114997   0.0301506
6 months    ki0047075b-MAL-ED          Female               NA                 0.0401027    0.0178398   0.0623657
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                 0.0481248   -0.0146065   0.1108562
6 months    ki1000108-IRC              Female               NA                 0.0325855   -0.0268880   0.0920590
6 months    ki1000109-EE               Female               NA                 0.0133227   -0.0594239   0.0860693
6 months    ki1000109-ResPak           Female               NA                 0.0378762   -0.0488679   0.1246202
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                 0.0090909   -0.1237384   0.1419202
6 months    ki1017093-NIH-Birth        Female               NA                 0.0722381    0.0221777   0.1222984
6 months    ki1017093b-PROVIDE         Female               NA                 0.0617944   -0.0176654   0.1412543
6 months    ki1017093c-NIH-Crypto      Female               NA                 0.0219449   -0.0183521   0.0622419
6 months    ki1066203-TanzaniaChild2   Female               NA                 0.0155152   -0.0173421   0.0483726
6 months    ki1101329-Keneba           Female               NA                 0.0185651   -0.0016751   0.0388052
6 months    ki1112895-Guatemala BSC    Female               NA                 0.0377358   -0.0788720   0.1543437
6 months    ki1113344-GMS-Nepal        Female               NA                 0.0135655   -0.0337414   0.0608723
6 months    ki1114097-CMIN             Female               NA                 0.0304225    0.0113407   0.0495043
6 months    ki1126311-ZVITAMBO         Female               NA                 0.0221023    0.0005611   0.0436435
6 months    ki1135781-COHORTS          Female               NA                 0.0278200    0.0169855   0.0386546
6 months    ki1148112-LCNI-5           Female               NA                 0.0880488    0.0261378   0.1499598
9 months    ki0047075b-MAL-ED          Female               NA                 0.0371529    0.0112110   0.0630947
9 months    ki1000108-CMC-V-BCS-2002   Female               NA                 0.0737705    0.0071697   0.1403713
9 months    ki1000108-IRC              Female               NA                -0.0059613   -0.0710029   0.0590804
9 months    ki1000109-EE               Female               NA                -0.0048692   -0.0768026   0.0670642
9 months    ki1000109-ResPak           Female               NA                 0.0085212   -0.0838356   0.1008781
9 months    ki1000304b-SAS-FoodSuppl   Female               NA                 0.0039216   -0.1302319   0.1380751
9 months    ki1017093-NIH-Birth        Female               NA                 0.0308217   -0.0294851   0.0911285
9 months    ki1017093b-PROVIDE         Female               NA                 0.0550727   -0.0373291   0.1474746
9 months    ki1017093c-NIH-Crypto      Female               NA                -0.0107221   -0.0551900   0.0337457
9 months    ki1066203-TanzaniaChild2   Female               NA                 0.0297767   -0.0137744   0.0733278
9 months    ki1101329-Keneba           Female               NA                 0.0149610   -0.0079905   0.0379126
9 months    ki1112895-Guatemala BSC    Female               NA                 0.1086022   -0.0493512   0.2665555
9 months    ki1113344-GMS-Nepal        Female               NA                 0.0026808   -0.0516551   0.0570166
9 months    ki1114097-CMIN             Female               NA                 0.0282461    0.0049083   0.0515838
9 months    ki1126311-ZVITAMBO         Female               NA                 0.0335745    0.0104504   0.0566985
9 months    ki1135781-COHORTS          Female               NA                 0.0305762    0.0177111   0.0434412
9 months    ki1148112-LCNI-5           Female               NA                 0.0945480    0.0295897   0.1595062
Birth       ki0047075b-MAL-ED          Female               NA                 0.0023788   -0.0218246   0.0265823
Birth       ki1000108-CMC-V-BCS-2002   Female               NA                 0.0666667   -0.0267022   0.1600356
Birth       ki1000108-IRC              Female               NA                 0.0177135   -0.0267294   0.0621563
Birth       ki1101329-Keneba           Female               NA                -0.0036984   -0.0204192   0.0130225
Birth       ki1126311-ZVITAMBO         Female               NA                 0.0111169   -0.0028702   0.0251041
Birth       ki1135781-COHORTS          Female               NA                 0.0093107    0.0012433   0.0173781


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki0047075b-MAL-ED          Female               NA                 0.1177409    0.0006558   0.2211080
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                 0.1412790   -0.0155843   0.2739137
12 months   ki1000108-IRC              Female               NA                -0.0122818   -0.2663797   0.1908315
12 months   ki1000109-EE               Female               NA                 0.0264368   -0.0743537   0.1177716
12 months   ki1000109-ResPak           Female               NA                -0.1451389   -0.4948671   0.1227694
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                 0.0115498   -0.1423854   0.1447424
12 months   ki1017093-NIH-Birth        Female               NA                -0.0318116   -0.2166109   0.1249173
12 months   ki1017093b-PROVIDE         Female               NA                 0.1440559   -0.3122350   0.4416852
12 months   ki1017093c-NIH-Crypto      Female               NA                 0.0197328   -0.1803965   0.1859313
12 months   ki1066203-TanzaniaChild2   Female               NA                 0.1314875   -0.2963100   0.4181068
12 months   ki1101329-Keneba           Female               NA                 0.0894326   -0.0251607   0.1912166
12 months   ki1112895-Guatemala BSC    Female               NA                 0.2023411   -0.3634050   0.5333304
12 months   ki1113344-GMS-Nepal        Female               NA                 0.0516137   -0.1273819   0.2021899
12 months   ki1114097-CMIN             Female               NA                 0.1018351   -0.0271698   0.2146379
12 months   ki1126311-ZVITAMBO         Female               NA                 0.2683258    0.1548511   0.3665647
12 months   ki1135781-COHORTS          Female               NA                 0.0690129    0.0289239   0.1074468
12 months   ki1148112-LCNI-5           Female               NA                 0.2019988   -0.0010179   0.3638416
18 months   ki0047075b-MAL-ED          Female               NA                 0.1223640    0.0306595   0.2053928
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                 0.0969355   -0.0111147   0.1934392
18 months   ki1000108-IRC              Female               NA                -0.0088315   -0.2241342   0.1686034
18 months   ki1000109-EE               Female               NA                -0.0140161   -0.0770256   0.0453071
18 months   ki1017093-NIH-Birth        Female               NA                -0.0101876   -0.1287954   0.0959575
18 months   ki1017093b-PROVIDE         Female               NA                 0.1413462   -0.2475422   0.4090088
18 months   ki1017093c-NIH-Crypto      Female               NA                 0.0353076   -0.1449813   0.1872082
18 months   ki1066203-TanzaniaChild2   Female               NA                 0.2160914   -0.1132158   0.4479842
18 months   ki1101329-Keneba           Female               NA                 0.0891298   -0.0062776   0.1754914
18 months   ki1113344-GMS-Nepal        Female               NA                -0.0087989   -0.1281282   0.0979081
18 months   ki1114097-CMIN             Female               NA                 0.0844296   -0.0134828   0.1728826
18 months   ki1126311-ZVITAMBO         Female               NA                 0.1184988   -0.0199906   0.2381848
18 months   ki1135781-COHORTS          Female               NA                 0.0347391   -0.0071859   0.0749189
18 months   ki1148112-LCNI-5           Female               NA                 0.1370856   -0.0229808   0.2721064
24 months   ki0047075b-MAL-ED          Female               NA                 0.1304499    0.0344506   0.2169045
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                 0.0375940   -0.0603783   0.1265142
24 months   ki1000108-IRC              Female               NA                -0.0013672   -0.1879560   0.1559146
24 months   ki1017093-NIH-Birth        Female               NA                 0.0294118   -0.1054671   0.1478340
24 months   ki1017093b-PROVIDE         Female               NA                 0.0497449   -0.3684164   0.3401243
24 months   ki1017093c-NIH-Crypto      Female               NA                -0.1532051   -0.3917954   0.0444845
24 months   ki1101329-Keneba           Female               NA                 0.0398361   -0.0605422   0.1307137
24 months   ki1113344-GMS-Nepal        Female               NA                -0.0083912   -0.1621467   0.1250219
24 months   ki1114097-CMIN             Female               NA                 0.0742918   -0.0299147   0.1679547
24 months   ki1126311-ZVITAMBO         Female               NA                 0.0779014   -0.1396397   0.2539170
24 months   ki1135781-COHORTS          Female               NA                 0.0145138   -0.0152633   0.0434176
24 months   ki1148112-LCNI-5           Female               NA                 0.0390779   -0.1577415   0.2024374
3 months    ki0047075b-MAL-ED          Female               NA                 0.2173913    0.0657518   0.3444179
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                 0.2307225   -0.0377048   0.4297146
3 months    ki1000108-IRC              Female               NA                 0.0907499   -0.2128012   0.3183254
3 months    ki1000109-EE               Female               NA                 0.0669975   -0.0676896   0.1846941
3 months    ki1000109-ResPak           Female               NA                 0.0109556   -0.2257171   0.2019293
3 months    ki1000304b-SAS-FoodSuppl   Female               NA                 0.0545809   -0.3413150   0.3336261
3 months    ki1017093-NIH-Birth        Female               NA                 0.2991135    0.0770896   0.4677253
3 months    ki1017093b-PROVIDE         Female               NA                 0.4084507   -0.3830168   0.7469803
3 months    ki1017093c-NIH-Crypto      Female               NA                 0.1045045   -0.1040751   0.2736797
3 months    ki1066203-TanzaniaChild2   Female               NA                 0.1205578   -0.3951518   0.4456384
3 months    ki1101329-Keneba           Female               NA                 0.1419530   -0.0079805   0.2695844
3 months    ki1113344-GMS-Nepal        Female               NA                 0.1564998   -0.1559333   0.3844865
3 months    ki1114097-CMIN             Female               NA                 0.0335110   -0.1669383   0.1995285
3 months    ki1126311-ZVITAMBO         Female               NA                 0.1455469    0.0152494   0.2586041
3 months    ki1135781-COHORTS          Female               NA                 0.1393412    0.0746419   0.1995169
6 months    ki0047075b-MAL-ED          Female               NA                 0.2455387    0.0963947   0.3700658
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                 0.1599826   -0.0764784   0.3445021
6 months    ki1000108-IRC              Female               NA                 0.1326230   -0.1464914   0.3437867
6 months    ki1000109-EE               Female               NA                 0.0256790   -0.1251273   0.1562720
6 months    ki1000109-ResPak           Female               NA                 0.1072398   -0.1753748   0.3219007
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                 0.0181818   -0.2868892   0.2509325
6 months    ki1017093-NIH-Birth        Female               NA                 0.2693878    0.0573904   0.4337059
6 months    ki1017093b-PROVIDE         Female               NA                 0.3376623   -0.2730646   0.6554054
6 months    ki1017093c-NIH-Crypto      Female               NA                 0.1046041   -0.1095986   0.2774559
6 months    ki1066203-TanzaniaChild2   Female               NA                 0.1737705   -0.2896925   0.4706838
6 months    ki1101329-Keneba           Female               NA                 0.1314657   -0.0243361   0.2635701
6 months    ki1112895-Guatemala BSC    Female               NA                 0.1333333   -0.3938556   0.4611270
6 months    ki1113344-GMS-Nepal        Female               NA                 0.0641795   -0.1886556   0.2632349
6 months    ki1114097-CMIN             Female               NA                 0.2516021    0.0761251   0.3937497
6 months    ki1126311-ZVITAMBO         Female               NA                 0.1353847   -0.0071270   0.2577306
6 months    ki1135781-COHORTS          Female               NA                 0.1358104    0.0812831   0.1871015
6 months    ki1148112-LCNI-5           Female               NA                 0.2368797    0.0515497   0.3859956
9 months    ki0047075b-MAL-ED          Female               NA                 0.1797366    0.0442381   0.2960254
9 months    ki1000108-CMC-V-BCS-2002   Female               NA                 0.2000000   -0.0020360   0.3613004
9 months    ki1000108-IRC              Female               NA                -0.0218579   -0.2904715   0.1908434
9 months    ki1000109-EE               Female               NA                -0.0082125   -0.1371400   0.1060972
9 months    ki1000109-ResPak           Female               NA                 0.0256854   -0.2965501   0.2678348
9 months    ki1000304b-SAS-FoodSuppl   Female               NA                 0.0058480   -0.2157548   0.1870578
9 months    ki1017093-NIH-Birth        Female               NA                 0.0863349   -0.0991871   0.2405443
9 months    ki1017093b-PROVIDE         Female               NA                 0.2351755   -0.2803275   0.5431196
9 months    ki1017093c-NIH-Crypto      Female               NA                -0.0461575   -0.2562229   0.1287808
9 months    ki1066203-TanzaniaChild2   Female               NA                 0.2051282   -0.1590526   0.4548814
9 months    ki1101329-Keneba           Female               NA                 0.0831303   -0.0536854   0.2021811
9 months    ki1112895-Guatemala BSC    Female               NA                 0.2961877   -0.2913951   0.6164212
9 months    ki1113344-GMS-Nepal        Female               NA                 0.0095297   -0.2037457   0.1850177
9 months    ki1114097-CMIN             Female               NA                 0.1614310    0.0169240   0.2846963
9 months    ki1126311-ZVITAMBO         Female               NA                 0.1725305    0.0448342   0.2831551
9 months    ki1135781-COHORTS          Female               NA                 0.1092671    0.0620960   0.1540657
9 months    ki1148112-LCNI-5           Female               NA                 0.2984749    0.0620870   0.4752846
Birth       ki0047075b-MAL-ED          Female               NA                 0.0179189   -0.1824178   0.1843126
Birth       ki1000108-CMC-V-BCS-2002   Female               NA                 0.3750000   -0.4400292   0.7287381
Birth       ki1000108-IRC              Female               NA                 0.1527296   -0.3316981   0.4609385
Birth       ki1101329-Keneba           Female               NA                -0.0695023   -0.4347704   0.2027748
Birth       ki1126311-ZVITAMBO         Female               NA                 0.1065065   -0.0380585   0.2309388
Birth       ki1135781-COHORTS          Female               NA                 0.0941986    0.0087919   0.1722462


