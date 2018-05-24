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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/54410e95-aa53-42c9-a1be-3fb681da9b86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/54410e95-aa53-42c9-a1be-3fb681da9b86/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/54410e95-aa53-42c9-a1be-3fb681da9b86/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/54410e95-aa53-42c9-a1be-3fb681da9b86/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki1000108-CMC-V-BCS-2002   0       90     90     74     16
Birth       ki1000108-CMC-V-BCS-2002   1       90      0      0      0
Birth       ki1000108-IRC              0      388    381    337     44
Birth       ki1000108-IRC              1      388      7      6      1
Birth       ki1000109-EE               0        2      2      1      1
Birth       ki1000109-EE               1        2      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   0        0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   1        0      0      0      0
Birth       ki1017093b-PROVIDE         0        0      0      0      0
Birth       ki1017093b-PROVIDE         1        0      0      0      0
Birth       ki1017093c-NIH-Crypto      0       27     22     18      4
Birth       ki1017093c-NIH-Crypto      1       27      5      4      1
Birth       ki1066203-TanzaniaChild2   0        0      0      0      0
Birth       ki1066203-TanzaniaChild2   1        0      0      0      0
Birth       ki1113344-GMS-Nepal        0        0      0      0      0
Birth       ki1113344-GMS-Nepal        1        0      0      0      0
Birth       ki1135781-COHORTS          0     4694   2938   2613    325
Birth       ki1135781-COHORTS          1     4694   1756   1534    222
3 months    ki1000108-CMC-V-BCS-2002   0      359    352    263     89
3 months    ki1000108-CMC-V-BCS-2002   1      359      7      7      0
3 months    ki1000108-IRC              0      407    399    310     89
3 months    ki1000108-IRC              1      407      8      6      2
3 months    ki1000109-EE               0      374    252    110    142
3 months    ki1000109-EE               1      374    122     48     74
3 months    ki1000304b-SAS-FoodSuppl   0       97     24     18      6
3 months    ki1000304b-SAS-FoodSuppl   1       97     73     41     32
3 months    ki1017093b-PROVIDE         0      168    127    113     14
3 months    ki1017093b-PROVIDE         1      168     41     35      6
3 months    ki1017093c-NIH-Crypto      0      728    565    448    117
3 months    ki1017093c-NIH-Crypto      1      728    163    124     39
3 months    ki1066203-TanzaniaChild2   0      547    538    503     35
3 months    ki1066203-TanzaniaChild2   1      547      9      8      1
3 months    ki1113344-GMS-Nepal        0      534    132    119     13
3 months    ki1113344-GMS-Nepal        1      534    402    338     64
3 months    ki1135781-COHORTS          0     4848   2982   2590    392
3 months    ki1135781-COHORTS          1     4848   1866   1508    358
6 months    ki1000108-CMC-V-BCS-2002   0      366    358    249    109
6 months    ki1000108-CMC-V-BCS-2002   1      366      8      7      1
6 months    ki1000108-IRC              0      407    399    303     96
6 months    ki1000108-IRC              1      407      8      4      4
6 months    ki1000109-EE               0      370    248    123    125
6 months    ki1000109-EE               1      370    122     55     67
6 months    ki1000304b-SAS-FoodSuppl   0       96     24     11     13
6 months    ki1000304b-SAS-FoodSuppl   1       96     72     37     35
6 months    ki1017093b-PROVIDE         0      153    115     91     24
6 months    ki1017093b-PROVIDE         1      153     38     34      4
6 months    ki1017093c-NIH-Crypto      0      715    554    449    105
6 months    ki1017093c-NIH-Crypto      1      715    161    116     45
6 months    ki1066203-TanzaniaChild2   0      477    469    428     41
6 months    ki1066203-TanzaniaChild2   1      477      8      7      1
6 months    ki1113344-GMS-Nepal        0      527    129    110     19
6 months    ki1113344-GMS-Nepal        1      527    398    313     85
6 months    ki1135781-COHORTS          0     4699   2900   2457    443
6 months    ki1135781-COHORTS          1     4699   1799   1323    476
9 months    ki1000108-CMC-V-BCS-2002   0      363    355    223    132
9 months    ki1000108-CMC-V-BCS-2002   1      363      8      7      1
9 months    ki1000108-IRC              0      407    399    292    107
9 months    ki1000108-IRC              1      407      8      4      4
9 months    ki1000109-EE               0      364    246    103    143
9 months    ki1000109-EE               1      364    118     45     73
9 months    ki1000304b-SAS-FoodSuppl   0       85     21      9     12
9 months    ki1000304b-SAS-FoodSuppl   1       85     64     19     45
9 months    ki1017093b-PROVIDE         0      158    118     92     26
9 months    ki1017093b-PROVIDE         1      158     40     29     11
9 months    ki1017093c-NIH-Crypto      0      706    552    437    115
9 months    ki1017093c-NIH-Crypto      1      706    154    105     49
9 months    ki1066203-TanzaniaChild2   0      410    403    343     60
9 months    ki1066203-TanzaniaChild2   1      410      7      6      1
9 months    ki1113344-GMS-Nepal        0      515    124     93     31
9 months    ki1113344-GMS-Nepal        1      515    391    278    113
9 months    ki1135781-COHORTS          0     4092   2519   1978    541
9 months    ki1135781-COHORTS          1     4092   1573    986    587
12 months   ki1000108-CMC-V-BCS-2002   0      365    357    179    178
12 months   ki1000108-CMC-V-BCS-2002   1      365      8      6      2
12 months   ki1000108-IRC              0      406    398    284    114
12 months   ki1000108-IRC              1      406      8      3      5
12 months   ki1000109-EE               0      355    242     74    168
12 months   ki1000109-EE               1      355    113     27     86
12 months   ki1000304b-SAS-FoodSuppl   0       92     24      5     19
12 months   ki1000304b-SAS-FoodSuppl   1       92     68     14     54
12 months   ki1017093b-PROVIDE         0      153    115     80     35
12 months   ki1017093b-PROVIDE         1      153     38     29      9
12 months   ki1017093c-NIH-Crypto      0      706    548    428    120
12 months   ki1017093c-NIH-Crypto      1      706    158    107     51
12 months   ki1066203-TanzaniaChild2   0      342    340    289     51
12 months   ki1066203-TanzaniaChild2   1      342      2      2      0
12 months   ki1113344-GMS-Nepal        0      521    126     88     38
12 months   ki1113344-GMS-Nepal        1      521    395    255    140
12 months   ki1135781-COHORTS          0     3645   2268   1606    662
12 months   ki1135781-COHORTS          1     3645   1377    715    662
18 months   ki1000108-CMC-V-BCS-2002   0      366    358    110    248
18 months   ki1000108-CMC-V-BCS-2002   1      366      8      5      3
18 months   ki1000108-IRC              0      405    397    258    139
18 months   ki1000108-IRC              1      405      8      3      5
18 months   ki1000109-EE               0      348    236     39    197
18 months   ki1000109-EE               1      348    112     13     99
18 months   ki1000304b-SAS-FoodSuppl   0       84     23      4     19
18 months   ki1000304b-SAS-FoodSuppl   1       84     61      6     55
18 months   ki1017093b-PROVIDE         0      141    105     69     36
18 months   ki1017093b-PROVIDE         1      141     36     20     16
18 months   ki1017093c-NIH-Crypto      0      634    487    348    139
18 months   ki1017093c-NIH-Crypto      1      634    147     95     52
18 months   ki1066203-TanzaniaChild2   0      247    245    181     64
18 months   ki1066203-TanzaniaChild2   1      247      2      1      1
18 months   ki1113344-GMS-Nepal        0      512    129     60     69
18 months   ki1113344-GMS-Nepal        1      512    383    178    205
18 months   ki1135781-COHORTS          0        0      0      0      0
18 months   ki1135781-COHORTS          1        0      0      0      0
24 months   ki1000108-CMC-V-BCS-2002   0      369    361    102    259
24 months   ki1000108-CMC-V-BCS-2002   1      369      8      3      5
24 months   ki1000108-IRC              0      409    401    236    165
24 months   ki1000108-IRC              1      409      8      3      5
24 months   ki1000109-EE               0        0      0      0      0
24 months   ki1000109-EE               1        0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   0        0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   1        0      0      0      0
24 months   ki1017093b-PROVIDE         0      149    111     76     35
24 months   ki1017093b-PROVIDE         1      149     38     24     14
24 months   ki1017093c-NIH-Crypto      0      514    391    302     89
24 months   ki1017093c-NIH-Crypto      1      514    123     80     43
24 months   ki1066203-TanzaniaChild2   0        2      2      2      0
24 months   ki1066203-TanzaniaChild2   1        2      0      0      0
24 months   ki1113344-GMS-Nepal        0      467    120     73     47
24 months   ki1113344-GMS-Nepal        1      467    347    185    162
24 months   ki1135781-COHORTS          0     3559   2233   1324    909
24 months   ki1135781-COHORTS          1     3559   1326    468    858

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          0                    NA                0.1106195   0.0992765   0.1219625
Birth       ki1135781-COHORTS          1                    NA                0.1264237   0.1108785   0.1419689
3 months    ki1000109-EE               0                    NA                0.5634921   0.5021767   0.6248074
3 months    ki1000109-EE               1                    NA                0.6065574   0.5197561   0.6933587
3 months    ki1000304b-SAS-FoodSuppl   0                    NA                0.2500000   0.0758621   0.4241379
3 months    ki1000304b-SAS-FoodSuppl   1                    NA                0.4383562   0.3239417   0.5527706
3 months    ki1017093b-PROVIDE         0                    NA                0.1102362   0.0556048   0.1648676
3 months    ki1017093b-PROVIDE         1                    NA                0.1463415   0.0378293   0.2548536
3 months    ki1017093c-NIH-Crypto      0                    NA                0.2070796   0.1736443   0.2405150
3 months    ki1017093c-NIH-Crypto      1                    NA                0.2392638   0.1737235   0.3048041
3 months    ki1113344-GMS-Nepal        0                    NA                0.0984849   0.0476058   0.1493639
3 months    ki1113344-GMS-Nepal        1                    NA                0.1592040   0.1234055   0.1950024
3 months    ki1135781-COHORTS          0                    NA                0.1314554   0.1193264   0.1435844
3 months    ki1135781-COHORTS          1                    NA                0.1918542   0.1739866   0.2097219
6 months    ki1000109-EE               0                    NA                0.5040323   0.4417211   0.5663434
6 months    ki1000109-EE               1                    NA                0.5491803   0.4607676   0.6375931
6 months    ki1000304b-SAS-FoodSuppl   0                    NA                0.5416667   0.3412780   0.7420553
6 months    ki1000304b-SAS-FoodSuppl   1                    NA                0.4861111   0.3700577   0.6021646
6 months    ki1017093c-NIH-Crypto      0                    NA                0.1895307   0.1568715   0.2221899
6 months    ki1017093c-NIH-Crypto      1                    NA                0.2795031   0.2101368   0.3488694
6 months    ki1113344-GMS-Nepal        0                    NA                0.1472868   0.0860731   0.2085006
6 months    ki1113344-GMS-Nepal        1                    NA                0.2135678   0.1732667   0.2538690
6 months    ki1135781-COHORTS          0                    NA                0.1527586   0.1396637   0.1658535
6 months    ki1135781-COHORTS          1                    NA                0.2645914   0.2442055   0.2849774
9 months    ki1000109-EE               0                    NA                0.5813008   0.5195661   0.6430355
9 months    ki1000109-EE               1                    NA                0.6186441   0.5308854   0.7064028
9 months    ki1000304b-SAS-FoodSuppl   0                    NA                0.5714286   0.3585162   0.7843409
9 months    ki1000304b-SAS-FoodSuppl   1                    NA                0.7031250   0.5905269   0.8157231
9 months    ki1017093b-PROVIDE         0                    NA                0.2203390   0.1453177   0.2953602
9 months    ki1017093b-PROVIDE         1                    NA                0.2750000   0.1361864   0.4138136
9 months    ki1017093c-NIH-Crypto      0                    NA                0.2083333   0.1744304   0.2422362
9 months    ki1017093c-NIH-Crypto      1                    NA                0.3181818   0.2445666   0.3917970
9 months    ki1113344-GMS-Nepal        0                    NA                0.2500000   0.1737113   0.3262887
9 months    ki1113344-GMS-Nepal        1                    NA                0.2890026   0.2440280   0.3339771
9 months    ki1135781-COHORTS          0                    NA                0.2147678   0.1987290   0.2308065
9 months    ki1135781-COHORTS          1                    NA                0.3731723   0.3492686   0.3970760
12 months   ki1000109-EE               0                    NA                0.6942149   0.6360838   0.7523459
12 months   ki1000109-EE               1                    NA                0.7610619   0.6823258   0.8397981
12 months   ki1000304b-SAS-FoodSuppl   0                    NA                0.7916667   0.6282989   0.9550344
12 months   ki1000304b-SAS-FoodSuppl   1                    NA                0.7941176   0.6974861   0.8907492
12 months   ki1017093b-PROVIDE         0                    NA                0.3043478   0.2199747   0.3887210
12 months   ki1017093b-PROVIDE         1                    NA                0.2368421   0.1012243   0.3724600
12 months   ki1017093c-NIH-Crypto      0                    NA                0.2189781   0.1843286   0.2536276
12 months   ki1017093c-NIH-Crypto      1                    NA                0.3227848   0.2498311   0.3957385
12 months   ki1113344-GMS-Nepal        0                    NA                0.3015873   0.2213747   0.3817999
12 months   ki1113344-GMS-Nepal        1                    NA                0.3544304   0.3072128   0.4016480
12 months   ki1135781-COHORTS          0                    NA                0.2918871   0.2731741   0.3106002
12 months   ki1135781-COHORTS          1                    NA                0.4807553   0.4543623   0.5071483
18 months   ki1000109-EE               0                    NA                0.8347458   0.7872920   0.8821995
18 months   ki1000109-EE               1                    NA                0.8839286   0.8245219   0.9433352
18 months   ki1017093b-PROVIDE         0                    NA                0.3428571   0.2517431   0.4339712
18 months   ki1017093b-PROVIDE         1                    NA                0.4444444   0.2815468   0.6073421
18 months   ki1017093c-NIH-Crypto      0                    NA                0.2854209   0.2452794   0.3255625
18 months   ki1017093c-NIH-Crypto      1                    NA                0.3537415   0.2763883   0.4310947
18 months   ki1113344-GMS-Nepal        0                    NA                0.5348837   0.4487272   0.6210403
18 months   ki1113344-GMS-Nepal        1                    NA                0.5352480   0.4852490   0.5852471
24 months   ki1017093b-PROVIDE         0                    NA                0.3153153   0.2285858   0.4020448
24 months   ki1017093b-PROVIDE         1                    NA                0.3684211   0.2145331   0.5223090
24 months   ki1017093c-NIH-Crypto      0                    NA                0.2276215   0.1860204   0.2692225
24 months   ki1017093c-NIH-Crypto      1                    NA                0.3495935   0.2652421   0.4339449
24 months   ki1113344-GMS-Nepal        0                    NA                0.3916667   0.3042384   0.4790950
24 months   ki1113344-GMS-Nepal        1                    NA                0.4668588   0.4143100   0.5194076
24 months   ki1135781-COHORTS          0                    NA                0.4070757   0.3866958   0.4274556
24 months   ki1135781-COHORTS          1                    NA                0.6470588   0.6213335   0.6727841


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          NA                   NA                0.1165317   0.1163129   0.1167505
3 months    ki1000109-EE               NA                   NA                0.5775401   0.5754912   0.5795890
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.3917526   0.3754938   0.4080113
3 months    ki1017093b-PROVIDE         NA                   NA                0.1190476   0.1166956   0.1213997
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.2142857   0.2133105   0.2152610
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1441948   0.1419711   0.1464184
3 months    ki1135781-COHORTS          NA                   NA                0.1547030   0.1538756   0.1555303
6 months    ki1000109-EE               NA                   NA                0.5189189   0.5167533   0.5210845
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.5000000   0.4951626   0.5048374
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.2097902   0.2070336   0.2125468
6 months    ki1113344-GMS-Nepal        NA                   NA                0.1973435   0.1949081   0.1997789
6 months    ki1135781-COHORTS          NA                   NA                0.1955735   0.1940191   0.1971280
9 months    ki1000109-EE               NA                   NA                0.5934066   0.5916085   0.5952047
9 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.6705882   0.6584414   0.6827351
9 months    ki1017093b-PROVIDE         NA                   NA                0.2341772   0.2304594   0.2378950
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.2322946   0.2289459   0.2356433
9 months    ki1113344-GMS-Nepal        NA                   NA                0.2796117   0.2781700   0.2810533
9 months    ki1135781-COHORTS          NA                   NA                0.2756598   0.2732986   0.2780211
12 months   ki1000109-EE               NA                   NA                0.7154930   0.7122492   0.7187367
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.7934783   0.7932571   0.7936994
12 months   ki1017093b-PROVIDE         NA                   NA                0.2875817   0.2829449   0.2922185
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.2422096   0.2390159   0.2454033
12 months   ki1113344-GMS-Nepal        NA                   NA                0.3416507   0.3397058   0.3435955
12 months   ki1135781-COHORTS          NA                   NA                0.3632373   0.3602642   0.3662104
18 months   ki1000109-EE               NA                   NA                0.8505747   0.8481571   0.8529923
18 months   ki1017093b-PROVIDE         NA                   NA                0.3687943   0.3614568   0.3761319
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.3012618   0.2990157   0.3035079
18 months   ki1113344-GMS-Nepal        NA                   NA                0.5351562   0.5351425   0.5351700
24 months   ki1017093b-PROVIDE         NA                   NA                0.3288591   0.3251298   0.3325883
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.2568093   0.2523061   0.2613126
24 months   ki1113344-GMS-Nepal        NA                   NA                0.4475375   0.4445544   0.4505206
24 months   ki1135781-COHORTS          NA                   NA                0.4964878   0.4926752   0.5003003


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS          1                    0                 1.1428702   0.9737860   1.341313
3 months    ki1000109-EE               1                    0                 1.0764258   0.8993081   1.288427
3 months    ki1000304b-SAS-FoodSuppl   1                    0                 1.7534247   0.8333705   3.689233
3 months    ki1017093b-PROVIDE         1                    0                 1.3275261   0.5441396   3.238738
3 months    ki1017093c-NIH-Crypto      1                    0                 1.1554192   0.8407120   1.587932
3 months    ki1113344-GMS-Nepal        1                    0                 1.6165327   0.9202140   2.839750
3 months    ki1135781-COHORTS          1                    0                 1.4594626   1.2801413   1.663903
6 months    ki1000109-EE               1                    0                 1.0895738   0.8894126   1.334781
6 months    ki1000304b-SAS-FoodSuppl   1                    0                 0.8974359   0.5778122   1.393863
6 months    ki1017093c-NIH-Crypto      1                    0                 1.4747116   1.0901648   1.994904
6 months    ki1113344-GMS-Nepal        1                    0                 1.4500132   0.9186313   2.288773
6 months    ki1135781-COHORTS          1                    0                 1.7320884   1.5435253   1.943687
9 months    ki1000109-EE               1                    0                 1.0642408   0.8914159   1.270573
9 months    ki1000304b-SAS-FoodSuppl   1                    0                 1.2304687   0.8202408   1.845865
9 months    ki1017093b-PROVIDE         1                    0                 1.2480769   0.6789079   2.294414
9 months    ki1017093c-NIH-Crypto      1                    0                 1.5272727   1.1509894   2.026571
9 months    ki1113344-GMS-Nepal        1                    0                 1.1560102   0.8207226   1.628272
9 months    ki1135781-COHORTS          1                    0                 1.7375619   1.5747480   1.917209
12 months   ki1000109-EE               1                    0                 1.0962916   0.9596718   1.252361
12 months   ki1000304b-SAS-FoodSuppl   1                    0                 1.0030960   0.7894069   1.274630
12 months   ki1017093b-PROVIDE         1                    0                 0.7781955   0.4119038   1.470217
12 months   ki1017093c-NIH-Crypto      1                    0                 1.4740506   1.1186428   1.942376
12 months   ki1113344-GMS-Nepal        1                    0                 1.1752165   0.8728295   1.582364
12 months   ki1135781-COHORTS          1                    0                 1.6470588   1.5137453   1.792113
18 months   ki1000109-EE               1                    0                 1.0589195   0.9696919   1.156357
18 months   ki1017093b-PROVIDE         1                    0                 1.2962963   0.8243061   2.038544
18 months   ki1017093c-NIH-Crypto      1                    0                 1.2393677   0.9556222   1.607363
18 months   ki1113344-GMS-Nepal        1                    0                 1.0006811   0.8306713   1.205486
24 months   ki1017093b-PROVIDE         1                    0                 1.1684211   0.7085940   1.926643
24 months   ki1017093c-NIH-Crypto      1                    0                 1.5358546   1.1347332   2.078770
24 months   ki1113344-GMS-Nepal        1                    0                 1.1919799   0.9283203   1.530523
24 months   ki1135781-COHORTS          1                    0                 1.5895295   1.4910909   1.694467


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          0                    NA                 0.0059123   -0.0054328   0.0172574
3 months    ki1000109-EE               0                    NA                 0.0140480   -0.0473015   0.0753976
3 months    ki1000304b-SAS-FoodSuppl   0                    NA                 0.1417526   -0.0331427   0.3166479
3 months    ki1017093b-PROVIDE         0                    NA                 0.0088114   -0.0458706   0.0634934
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.0072061   -0.0262435   0.0406556
3 months    ki1113344-GMS-Nepal        0                    NA                 0.0457099   -0.0052178   0.0966376
3 months    ki1135781-COHORTS          0                    NA                 0.0232476    0.0110904   0.0354047
6 months    ki1000109-EE               0                    NA                 0.0148867   -0.0474621   0.0772354
6 months    ki1000304b-SAS-FoodSuppl   0                    NA                -0.0416667   -0.2421137   0.1587803
6 months    ki1017093c-NIH-Crypto      0                    NA                 0.0202595   -0.0125158   0.0530348
6 months    ki1113344-GMS-Nepal        0                    NA                 0.0500566   -0.0112056   0.1113188
6 months    ki1135781-COHORTS          0                    NA                 0.0428149    0.0296281   0.0560017
9 months    ki1000109-EE               0                    NA                 0.0121058   -0.0496551   0.0738667
9 months    ki1000304b-SAS-FoodSuppl   0                    NA                 0.0991597   -0.1140989   0.3124182
9 months    ki1017093b-PROVIDE         0                    NA                 0.0138382   -0.0612751   0.0889516
9 months    ki1017093c-NIH-Crypto      0                    NA                 0.0239613   -0.0101066   0.0580292
9 months    ki1113344-GMS-Nepal        0                    NA                 0.0296117   -0.0466906   0.1059139
9 months    ki1135781-COHORTS          0                    NA                 0.0608921    0.0446804   0.0771037
12 months   ki1000109-EE               0                    NA                 0.0212781   -0.0369434   0.0794996
12 months   ki1000304b-SAS-FoodSuppl   0                    NA                 0.0018116   -0.1615563   0.1651795
12 months   ki1017093b-PROVIDE         0                    NA                -0.0167661   -0.1012666   0.0677343
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.0232315   -0.0115649   0.0580279
12 months   ki1113344-GMS-Nepal        0                    NA                 0.0400634   -0.0401728   0.1202995
12 months   ki1135781-COHORTS          0                    NA                 0.0713502    0.0524024   0.0902980
18 months   ki1000109-EE               0                    NA                 0.0158289   -0.0316863   0.0633442
18 months   ki1017093b-PROVIDE         0                    NA                 0.0259372   -0.0654719   0.1173462
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.0158409   -0.0243635   0.0560453
18 months   ki1113344-GMS-Nepal        0                    NA                 0.0002725   -0.0858840   0.0864291
24 months   ki1017093b-PROVIDE         0                    NA                 0.0135437   -0.0732659   0.1003534
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.0291879   -0.0126562   0.0710319
24 months   ki1113344-GMS-Nepal        0                    NA                 0.0558708   -0.0316084   0.1433500
24 months   ki1135781-COHORTS          0                    NA                 0.0894121    0.0686787   0.1101455


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          0                    NA                 0.0507353   -0.0517867   0.1432641
3 months    ki1000109-EE               0                    NA                 0.0243239   -0.0878968   0.1249687
3 months    ki1000304b-SAS-FoodSuppl   0                    NA                 0.3618421   -0.2822514   0.6823981
3 months    ki1017093b-PROVIDE         0                    NA                 0.0740157   -0.5205624   0.4360989
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.0336283   -0.1357789   0.1777676
3 months    ki1113344-GMS-Nepal        0                    NA                 0.3170012   -0.1452082   0.5926615
3 months    ki1135781-COHORTS          0                    NA                 0.1502723    0.0679954   0.2252858
6 months    ki1000109-EE               0                    NA                 0.0286878   -0.0992063   0.1417013
6 months    ki1000304b-SAS-FoodSuppl   0                    NA                -0.0833333   -0.5684963   0.2517604
6 months    ki1017093c-NIH-Crypto      0                    NA                 0.0965704   -0.0738595   0.2399517
6 months    ki1113344-GMS-Nepal        0                    NA                 0.2536524   -0.1311430   0.5075470
6 months    ki1135781-COHORTS          0                    NA                 0.2189197    0.1486968   0.2833501
9 months    ki1000109-EE               0                    NA                 0.0204005   -0.0894062   0.1191392
9 months    ki1000304b-SAS-FoodSuppl   0                    NA                 0.1478697   -0.2374104   0.4131890
9 months    ki1017093b-PROVIDE         0                    NA                 0.0590930   -0.3230506   0.3308600
9 months    ki1017093c-NIH-Crypto      0                    NA                 0.1031504   -0.0560168   0.2383273
9 months    ki1113344-GMS-Nepal        0                    NA                 0.1059028   -0.2131950   0.3410706
9 months    ki1135781-COHORTS          0                    NA                 0.2208957    0.1600737   0.2773133
12 months   ki1000109-EE               0                    NA                 0.0297391   -0.0551351   0.1077860
12 months   ki1000304b-SAS-FoodSuppl   0                    NA                 0.0022831   -0.2263885   0.1883168
12 months   ki1017093b-PROVIDE         0                    NA                -0.0583004   -0.3970442   0.1983076
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.0959150   -0.0596615   0.2286501
12 months   ki1113344-GMS-Nepal        0                    NA                 0.1172641   -0.1517698   0.3234563
12 months   ki1135781-COHORTS          0                    NA                 0.1964286    0.1427779   0.2467214
18 months   ki1000109-EE               0                    NA                 0.0186097   -0.0388705   0.0729096
18 months   ki1017093b-PROVIDE         0                    NA                 0.0703297   -0.2135718   0.2878156
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.0525818   -0.0907033   0.1770436
18 months   ki1113344-GMS-Nepal        0                    NA                 0.0005093   -0.1741751   0.1492055
24 months   ki1017093b-PROVIDE         0                    NA                 0.0411840   -0.2626767   0.2719213
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.1136557   -0.0649774   0.2623260
24 months   ki1113344-GMS-Nepal        0                    NA                 0.1248405   -0.0941432   0.2999964
24 months   ki1135781-COHORTS          0                    NA                 0.1800892    0.1374914   0.2205832


