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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/efa4b531-93df-48d9-bda0-470130bbd97f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/efa4b531-93df-48d9-bda0-470130bbd97f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/efa4b531-93df-48d9-bda0-470130bbd97f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/efa4b531-93df-48d9-bda0-470130bbd97f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                   n     nA   nAY0   nAY1
----------  -------------------------  --------------  -----  -----  -----  -----
12 months   ki0047075b-MAL-ED          (149.6-154.9]    1610    458    360     98
12 months   ki0047075b-MAL-ED          (154.9-160.8]    1610    391    296     95
12 months   ki0047075b-MAL-ED          <=149.6          1610    554    348    206
12 months   ki0047075b-MAL-ED          >160.8           1610    207    172     35
12 months   ki1000304b-SAS-FoodSuppl   (149.6-154.9]      92     30      7     23
12 months   ki1000304b-SAS-FoodSuppl   (154.9-160.8]      92     15      6      9
12 months   ki1000304b-SAS-FoodSuppl   <=149.6            92     46      6     40
12 months   ki1000304b-SAS-FoodSuppl   >160.8             92      1      0      1
12 months   ki1017093-NIH-Birth        (149.6-154.9]     491    150    106     44
12 months   ki1017093-NIH-Birth        (154.9-160.8]     491     80     65     15
12 months   ki1017093-NIH-Birth        <=149.6           491    249    124    125
12 months   ki1017093-NIH-Birth        >160.8            491     12     12      0
12 months   ki1017093b-PROVIDE         (149.6-154.9]     153     45     37      8
12 months   ki1017093b-PROVIDE         (154.9-160.8]     153     29     23      6
12 months   ki1017093b-PROVIDE         <=149.6           153     72     42     30
12 months   ki1017093b-PROVIDE         >160.8            153      7      7      0
12 months   ki1017093c-NIH-Crypto      (149.6-154.9]     706    248    195     53
12 months   ki1017093c-NIH-Crypto      (154.9-160.8]     706    118    101     17
12 months   ki1017093c-NIH-Crypto      <=149.6           706    325    224    101
12 months   ki1017093c-NIH-Crypto      >160.8            706     15     15      0
12 months   ki1066203-TanzaniaChild2   (149.6-154.9]     353     97     77     20
12 months   ki1066203-TanzaniaChild2   (154.9-160.8]     353    140    129     11
12 months   ki1066203-TanzaniaChild2   <=149.6           353     39     24     15
12 months   ki1066203-TanzaniaChild2   >160.8            353     77     71      6
12 months   ki1101329-Keneba           (149.6-154.9]    1773    273    175     98
12 months   ki1101329-Keneba           (154.9-160.8]    1773    670    471    199
12 months   ki1101329-Keneba           <=149.6          1773     29     10     19
12 months   ki1101329-Keneba           >160.8           1773    801    662    139
12 months   ki1112895-Guatemala BSC    (149.6-154.9]      46     12      8      4
12 months   ki1112895-Guatemala BSC    (154.9-160.8]      46      5      4      1
12 months   ki1112895-Guatemala BSC    <=149.6            46     27     12     15
12 months   ki1112895-Guatemala BSC    >160.8             46      2      2      0
12 months   ki1126311-ZVITAMBO         (149.6-154.9]    1454    235    170     65
12 months   ki1126311-ZVITAMBO         (154.9-160.8]    1454    544    402    142
12 months   ki1126311-ZVITAMBO         <=149.6          1454     50     26     24
12 months   ki1126311-ZVITAMBO         >160.8           1454    625    511    114
12 months   ki1135781-COHORTS          (149.6-154.9]    4627   1666   1066    600
12 months   ki1135781-COHORTS          (154.9-160.8]    4627    876    671    205
12 months   ki1135781-COHORTS          <=149.6          4627   1912    902   1010
12 months   ki1135781-COHORTS          >160.8           4627    173    143     30
12 months   ki1148112-LCNI-5           (149.6-154.9]     309     87     44     43
12 months   ki1148112-LCNI-5           (154.9-160.8]     309    107     70     37
12 months   ki1148112-LCNI-5           <=149.6           309     34     13     21
12 months   ki1148112-LCNI-5           >160.8            309     81     55     26
18 months   ki0047075b-MAL-ED          (149.6-154.9]    1541    442    284    158
18 months   ki0047075b-MAL-ED          (154.9-160.8]    1541    375    254    121
18 months   ki0047075b-MAL-ED          <=149.6          1541    526    263    263
18 months   ki0047075b-MAL-ED          >160.8           1541    198    145     53
18 months   ki1000304b-SAS-FoodSuppl   (149.6-154.9]      84     26      4     22
18 months   ki1000304b-SAS-FoodSuppl   (154.9-160.8]      84     15      5     10
18 months   ki1000304b-SAS-FoodSuppl   <=149.6            84     42      1     41
18 months   ki1000304b-SAS-FoodSuppl   >160.8             84      1      0      1
18 months   ki1017093-NIH-Birth        (149.6-154.9]     463    142     70     72
18 months   ki1017093-NIH-Birth        (154.9-160.8]     463     70     42     28
18 months   ki1017093-NIH-Birth        <=149.6           463    241     70    171
18 months   ki1017093-NIH-Birth        >160.8            463     10      9      1
18 months   ki1017093b-PROVIDE         (149.6-154.9]     141     42     28     14
18 months   ki1017093b-PROVIDE         (154.9-160.8]     141     25     17      8
18 months   ki1017093b-PROVIDE         <=149.6           141     67     37     30
18 months   ki1017093b-PROVIDE         >160.8            141      7      7      0
18 months   ki1017093c-NIH-Crypto      (149.6-154.9]     634    222    156     66
18 months   ki1017093c-NIH-Crypto      (154.9-160.8]     634    111     93     18
18 months   ki1017093c-NIH-Crypto      <=149.6           634    288    182    106
18 months   ki1017093c-NIH-Crypto      >160.8            634     13     12      1
18 months   ki1066203-TanzaniaChild2   (149.6-154.9]     255     70     45     25
18 months   ki1066203-TanzaniaChild2   (154.9-160.8]     255     97     81     16
18 months   ki1066203-TanzaniaChild2   <=149.6           255     30     12     18
18 months   ki1066203-TanzaniaChild2   >160.8            255     58     50      8
18 months   ki1101329-Keneba           (149.6-154.9]    1773    263    153    110
18 months   ki1101329-Keneba           (154.9-160.8]    1773    684    417    267
18 months   ki1101329-Keneba           <=149.6          1773     33     11     22
18 months   ki1101329-Keneba           >160.8           1773    793    607    186
18 months   ki1112895-Guatemala BSC    (149.6-154.9]       0      0      0      0
18 months   ki1112895-Guatemala BSC    (154.9-160.8]       0      0      0      0
18 months   ki1112895-Guatemala BSC    <=149.6             0      0      0      0
18 months   ki1112895-Guatemala BSC    >160.8              0      0      0      0
18 months   ki1126311-ZVITAMBO         (149.6-154.9]     359     57     23     34
18 months   ki1126311-ZVITAMBO         (154.9-160.8]     359    136     60     76
18 months   ki1126311-ZVITAMBO         <=149.6           359     13      4      9
18 months   ki1126311-ZVITAMBO         >160.8            359    153     99     54
18 months   ki1135781-COHORTS          (149.6-154.9]    2905   1058    437    621
18 months   ki1135781-COHORTS          (154.9-160.8]    2905    497    268    229
18 months   ki1135781-COHORTS          <=149.6          2905   1275    336    939
18 months   ki1135781-COHORTS          >160.8           2905     75     53     22
18 months   ki1148112-LCNI-5           (149.6-154.9]     355    100     39     61
18 months   ki1148112-LCNI-5           (154.9-160.8]     355    126     74     52
18 months   ki1148112-LCNI-5           <=149.6           355     38     13     25
18 months   ki1148112-LCNI-5           >160.8            355     91     55     36
24 months   ki0047075b-MAL-ED          (149.6-154.9]    1484    420    276    144
24 months   ki0047075b-MAL-ED          (154.9-160.8]    1484    369    259    110
24 months   ki0047075b-MAL-ED          <=149.6          1484    504    260    244
24 months   ki0047075b-MAL-ED          >160.8           1484    191    133     58
24 months   ki1000304b-SAS-FoodSuppl   (149.6-154.9]       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (154.9-160.8]       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   <=149.6             0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >160.8              0      0      0      0
24 months   ki1017093-NIH-Birth        (149.6-154.9]     429    129     67     62
24 months   ki1017093-NIH-Birth        (154.9-160.8]     429     67     42     25
24 months   ki1017093-NIH-Birth        <=149.6           429    223     73    150
24 months   ki1017093-NIH-Birth        >160.8            429     10      9      1
24 months   ki1017093b-PROVIDE         (149.6-154.9]     149     44     29     15
24 months   ki1017093b-PROVIDE         (154.9-160.8]     149     28     22      6
24 months   ki1017093b-PROVIDE         <=149.6           149     70     42     28
24 months   ki1017093b-PROVIDE         >160.8            149      7      7      0
24 months   ki1017093c-NIH-Crypto      (149.6-154.9]     514    182    142     40
24 months   ki1017093c-NIH-Crypto      (154.9-160.8]     514     91     83      8
24 months   ki1017093c-NIH-Crypto      <=149.6           514    232    149     83
24 months   ki1017093c-NIH-Crypto      >160.8            514      9      8      1
24 months   ki1066203-TanzaniaChild2   (149.6-154.9]       2      2      2      0
24 months   ki1066203-TanzaniaChild2   (154.9-160.8]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   <=149.6             2      0      0      0
24 months   ki1066203-TanzaniaChild2   >160.8              2      0      0      0
24 months   ki1101329-Keneba           (149.6-154.9]    1602    235    124    111
24 months   ki1101329-Keneba           (154.9-160.8]    1602    625    378    247
24 months   ki1101329-Keneba           <=149.6          1602     29     10     19
24 months   ki1101329-Keneba           >160.8           1602    713    546    167
24 months   ki1112895-Guatemala BSC    (149.6-154.9]       0      0      0      0
24 months   ki1112895-Guatemala BSC    (154.9-160.8]       0      0      0      0
24 months   ki1112895-Guatemala BSC    <=149.6             0      0      0      0
24 months   ki1112895-Guatemala BSC    >160.8              0      0      0      0
24 months   ki1126311-ZVITAMBO         (149.6-154.9]      96     16      5     11
24 months   ki1126311-ZVITAMBO         (154.9-160.8]      96     37     12     25
24 months   ki1126311-ZVITAMBO         <=149.6            96      7      0      7
24 months   ki1126311-ZVITAMBO         >160.8             96     36     21     15
24 months   ki1135781-COHORTS          (149.6-154.9]    4740   1699    750    949
24 months   ki1135781-COHORTS          (154.9-160.8]    4740    932    561    371
24 months   ki1135781-COHORTS          <=149.6          4740   1920    548   1372
24 months   ki1135781-COHORTS          >160.8           4740    189    148     41
24 months   ki1148112-LCNI-5           (149.6-154.9]     296     82     41     41
24 months   ki1148112-LCNI-5           (154.9-160.8]     296    104     68     36
24 months   ki1148112-LCNI-5           <=149.6           296     30     10     20
24 months   ki1148112-LCNI-5           >160.8            296     80     47     33
3 months    ki0047075b-MAL-ED          (149.6-154.9]    1760    501    435     66
3 months    ki0047075b-MAL-ED          (154.9-160.8]    1760    436    376     60
3 months    ki0047075b-MAL-ED          <=149.6          1760    594    467    127
3 months    ki0047075b-MAL-ED          >160.8           1760    229    211     18
3 months    ki1000304b-SAS-FoodSuppl   (149.6-154.9]      94     30     20     10
3 months    ki1000304b-SAS-FoodSuppl   (154.9-160.8]      94     15     13      2
3 months    ki1000304b-SAS-FoodSuppl   <=149.6            94     48     25     23
3 months    ki1000304b-SAS-FoodSuppl   >160.8             94      1      0      1
3 months    ki1017093-NIH-Birth        (149.6-154.9]     570    177    147     30
3 months    ki1017093-NIH-Birth        (154.9-160.8]     570     89     75     14
3 months    ki1017093-NIH-Birth        <=149.6           570    287    201     86
3 months    ki1017093-NIH-Birth        >160.8            570     17     17      0
3 months    ki1017093b-PROVIDE         (149.6-154.9]     168     49     45      4
3 months    ki1017093b-PROVIDE         (154.9-160.8]     168     31     30      1
3 months    ki1017093b-PROVIDE         <=149.6           168     81     66     15
3 months    ki1017093b-PROVIDE         >160.8            168      7      7      0
3 months    ki1017093c-NIH-Crypto      (149.6-154.9]     728    252    202     50
3 months    ki1017093c-NIH-Crypto      (154.9-160.8]     728    120    106     14
3 months    ki1017093c-NIH-Crypto      <=149.6           728    341    249     92
3 months    ki1017093c-NIH-Crypto      >160.8            728     15     15      0
3 months    ki1066203-TanzaniaChild2   (149.6-154.9]     570    152    139     13
3 months    ki1066203-TanzaniaChild2   (154.9-160.8]     570    233    217     16
3 months    ki1066203-TanzaniaChild2   <=149.6           570     53     48      5
3 months    ki1066203-TanzaniaChild2   >160.8            570    132    127      5
3 months    ki1101329-Keneba           (149.6-154.9]    1949    284    217     67
3 months    ki1101329-Keneba           (154.9-160.8]    1949    762    648    114
3 months    ki1101329-Keneba           <=149.6          1949     33     20     13
3 months    ki1101329-Keneba           >160.8           1949    870    788     82
3 months    ki1112895-Guatemala BSC    (149.6-154.9]       3      1      1      0
3 months    ki1112895-Guatemala BSC    (154.9-160.8]       3      1      0      1
3 months    ki1112895-Guatemala BSC    <=149.6             3      1      0      1
3 months    ki1112895-Guatemala BSC    >160.8              3      0      0      0
3 months    ki1126311-ZVITAMBO         (149.6-154.9]    1926    324    256     68
3 months    ki1126311-ZVITAMBO         (154.9-160.8]    1926    690    561    129
3 months    ki1126311-ZVITAMBO         <=149.6          1926     68     48     20
3 months    ki1126311-ZVITAMBO         >160.8           1926    844    727    117
3 months    ki1135781-COHORTS          (149.6-154.9]    5160   1857   1646    211
3 months    ki1135781-COHORTS          (154.9-160.8]    5160   1010    924     86
3 months    ki1135781-COHORTS          <=149.6          5160   2107   1663    444
3 months    ki1135781-COHORTS          >160.8           5160    186    177      9
3 months    ki1148112-LCNI-5           (149.6-154.9]       0      0      0      0
3 months    ki1148112-LCNI-5           (154.9-160.8]       0      0      0      0
3 months    ki1148112-LCNI-5           <=149.6             0      0      0      0
3 months    ki1148112-LCNI-5           >160.8              0      0      0      0
6 months    ki0047075b-MAL-ED          (149.6-154.9]    1689    483    417     66
6 months    ki0047075b-MAL-ED          (154.9-160.8]    1689    415    359     56
6 months    ki0047075b-MAL-ED          <=149.6          1689    573    438    135
6 months    ki0047075b-MAL-ED          >160.8           1689    218    199     19
6 months    ki1000304b-SAS-FoodSuppl   (149.6-154.9]      95     32     21     11
6 months    ki1000304b-SAS-FoodSuppl   (154.9-160.8]      95     15     11      4
6 months    ki1000304b-SAS-FoodSuppl   <=149.6            95     47     16     31
6 months    ki1000304b-SAS-FoodSuppl   >160.8             95      1      0      1
6 months    ki1017093-NIH-Birth        (149.6-154.9]     537    168    135     33
6 months    ki1017093-NIH-Birth        (154.9-160.8]     537     83     67     16
6 months    ki1017093-NIH-Birth        <=149.6           537    273    178     95
6 months    ki1017093-NIH-Birth        >160.8            537     13     13      0
6 months    ki1017093b-PROVIDE         (149.6-154.9]     153     47     43      4
6 months    ki1017093b-PROVIDE         (154.9-160.8]     153     29     25      4
6 months    ki1017093b-PROVIDE         <=149.6           153     71     51     20
6 months    ki1017093b-PROVIDE         >160.8            153      6      6      0
6 months    ki1017093c-NIH-Crypto      (149.6-154.9]     715    251    207     44
6 months    ki1017093c-NIH-Crypto      (154.9-160.8]     715    118    101     17
6 months    ki1017093c-NIH-Crypto      <=149.6           715    330    242     88
6 months    ki1017093c-NIH-Crypto      >160.8            715     16     15      1
6 months    ki1066203-TanzaniaChild2   (149.6-154.9]     500    137    123     14
6 months    ki1066203-TanzaniaChild2   (154.9-160.8]     500    207    190     17
6 months    ki1066203-TanzaniaChild2   <=149.6           500     48     40      8
6 months    ki1066203-TanzaniaChild2   >160.8            500    108    102      6
6 months    ki1101329-Keneba           (149.6-154.9]    1877    275    215     60
6 months    ki1101329-Keneba           (154.9-160.8]    1877    727    611    116
6 months    ki1101329-Keneba           <=149.6          1877     34     19     15
6 months    ki1101329-Keneba           >160.8           1877    841    764     77
6 months    ki1112895-Guatemala BSC    (149.6-154.9]      71     23     16      7
6 months    ki1112895-Guatemala BSC    (154.9-160.8]      71      6      5      1
6 months    ki1112895-Guatemala BSC    <=149.6            71     39     27     12
6 months    ki1112895-Guatemala BSC    >160.8             71      3      3      0
6 months    ki1126311-ZVITAMBO         (149.6-154.9]    1768    264    216     48
6 months    ki1126311-ZVITAMBO         (154.9-160.8]    1768    667    538    129
6 months    ki1126311-ZVITAMBO         <=149.6          1768     63     40     23
6 months    ki1126311-ZVITAMBO         >160.8           1768    774    689     85
6 months    ki1135781-COHORTS          (149.6-154.9]    4980   1795   1474    321
6 months    ki1135781-COHORTS          (154.9-160.8]    4980    969    848    121
6 months    ki1135781-COHORTS          <=149.6          4980   2028   1403    625
6 months    ki1135781-COHORTS          >160.8           4980    188    175     13
6 months    ki1148112-LCNI-5           (149.6-154.9]     415    118     65     53
6 months    ki1148112-LCNI-5           (154.9-160.8]     415    148    105     43
6 months    ki1148112-LCNI-5           <=149.6           415     44     20     24
6 months    ki1148112-LCNI-5           >160.8            415    105     72     33
9 months    ki0047075b-MAL-ED          (149.6-154.9]    1634    464    387     77
9 months    ki0047075b-MAL-ED          (154.9-160.8]    1634    399    327     72
9 months    ki0047075b-MAL-ED          <=149.6          1634    558    392    166
9 months    ki0047075b-MAL-ED          >160.8           1634    213    190     23
9 months    ki1000304b-SAS-FoodSuppl   (149.6-154.9]      85     27     11     16
9 months    ki1000304b-SAS-FoodSuppl   (154.9-160.8]      85     14      6      8
9 months    ki1000304b-SAS-FoodSuppl   <=149.6            85     43     11     32
9 months    ki1000304b-SAS-FoodSuppl   >160.8             85      1      0      1
9 months    ki1017093-NIH-Birth        (149.6-154.9]     507    151    107     44
9 months    ki1017093-NIH-Birth        (154.9-160.8]     507     81     62     19
9 months    ki1017093-NIH-Birth        <=149.6           507    263    145    118
9 months    ki1017093-NIH-Birth        >160.8            507     12     12      0
9 months    ki1017093b-PROVIDE         (149.6-154.9]     158     48     41      7
9 months    ki1017093b-PROVIDE         (154.9-160.8]     158     29     24      5
9 months    ki1017093b-PROVIDE         <=149.6           158     74     49     25
9 months    ki1017093b-PROVIDE         >160.8            158      7      7      0
9 months    ki1017093c-NIH-Crypto      (149.6-154.9]     706    247    194     53
9 months    ki1017093c-NIH-Crypto      (154.9-160.8]     706    120    107     13
9 months    ki1017093c-NIH-Crypto      <=149.6           706    324    227     97
9 months    ki1017093c-NIH-Crypto      >160.8            706     15     14      1
9 months    ki1066203-TanzaniaChild2   (149.6-154.9]     430    107     89     18
9 months    ki1066203-TanzaniaChild2   (154.9-160.8]     430    178    156     22
9 months    ki1066203-TanzaniaChild2   <=149.6           430     46     32     14
9 months    ki1066203-TanzaniaChild2   >160.8            430     99     90      9
9 months    ki1101329-Keneba           (149.6-154.9]    1872    284    208     76
9 months    ki1101329-Keneba           (154.9-160.8]    1872    712    549    163
9 months    ki1101329-Keneba           <=149.6          1872     32     18     14
9 months    ki1101329-Keneba           >160.8           1872    844    743    101
9 months    ki1112895-Guatemala BSC    (149.6-154.9]      52     15     10      5
9 months    ki1112895-Guatemala BSC    (154.9-160.8]      52      5      4      1
9 months    ki1112895-Guatemala BSC    <=149.6            52     29     17     12
9 months    ki1112895-Guatemala BSC    >160.8             52      3      3      0
9 months    ki1126311-ZVITAMBO         (149.6-154.9]    1674    255    197     58
9 months    ki1126311-ZVITAMBO         (154.9-160.8]    1674    630    505    125
9 months    ki1126311-ZVITAMBO         <=149.6          1674     57     39     18
9 months    ki1126311-ZVITAMBO         >160.8           1674    732    609    123
9 months    ki1135781-COHORTS          (149.6-154.9]    4802   1733   1310    423
9 months    ki1135781-COHORTS          (154.9-160.8]    4802    926    758    168
9 months    ki1135781-COHORTS          <=149.6          4802   1969   1173    796
9 months    ki1135781-COHORTS          >160.8           4802    174    155     19
9 months    ki1148112-LCNI-5           (149.6-154.9]     320     85     54     31
9 months    ki1148112-LCNI-5           (154.9-160.8]     320    116     87     29
9 months    ki1148112-LCNI-5           <=149.6           320     36     14     22
9 months    ki1148112-LCNI-5           >160.8            320     83     64     19
Birth       ki0047075b-MAL-ED          (149.6-154.9]    1425    405    360     45
Birth       ki0047075b-MAL-ED          (154.9-160.8]    1425    334    301     33
Birth       ki0047075b-MAL-ED          <=149.6          1425    508    413     95
Birth       ki0047075b-MAL-ED          >160.8           1425    178    166     12
Birth       ki1000304b-SAS-FoodSuppl   (149.6-154.9]       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (154.9-160.8]       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   <=149.6             0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   >160.8              0      0      0      0
Birth       ki1017093-NIH-Birth        (149.6-154.9]      28      7      6      1
Birth       ki1017093-NIH-Birth        (154.9-160.8]      28      7      7      0
Birth       ki1017093-NIH-Birth        <=149.6            28     14     14      0
Birth       ki1017093-NIH-Birth        >160.8             28      0      0      0
Birth       ki1017093b-PROVIDE         (149.6-154.9]       0      0      0      0
Birth       ki1017093b-PROVIDE         (154.9-160.8]       0      0      0      0
Birth       ki1017093b-PROVIDE         <=149.6             0      0      0      0
Birth       ki1017093b-PROVIDE         >160.8              0      0      0      0
Birth       ki1017093c-NIH-Crypto      (149.6-154.9]      27      9      6      3
Birth       ki1017093c-NIH-Crypto      (154.9-160.8]      27      3      3      0
Birth       ki1017093c-NIH-Crypto      <=149.6            27     14     12      2
Birth       ki1017093c-NIH-Crypto      >160.8             27      1      1      0
Birth       ki1066203-TanzaniaChild2   (149.6-154.9]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (154.9-160.8]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   <=149.6             0      0      0      0
Birth       ki1066203-TanzaniaChild2   >160.8              0      0      0      0
Birth       ki1101329-Keneba           (149.6-154.9]    1429    220    206     14
Birth       ki1101329-Keneba           (154.9-160.8]    1429    548    522     26
Birth       ki1101329-Keneba           <=149.6          1429     23     21      2
Birth       ki1101329-Keneba           >160.8           1429    638    608     30
Birth       ki1112895-Guatemala BSC    (149.6-154.9]       0      0      0      0
Birth       ki1112895-Guatemala BSC    (154.9-160.8]       0      0      0      0
Birth       ki1112895-Guatemala BSC    <=149.6             0      0      0      0
Birth       ki1112895-Guatemala BSC    >160.8              0      0      0      0
Birth       ki1126311-ZVITAMBO         (149.6-154.9]    2393    387    341     46
Birth       ki1126311-ZVITAMBO         (154.9-160.8]    2393    864    773     91
Birth       ki1126311-ZVITAMBO         <=149.6          2393     84     73     11
Birth       ki1126311-ZVITAMBO         >160.8           2393   1058    971     87
Birth       ki1135781-COHORTS          (149.6-154.9]    5221   1906   1774    132
Birth       ki1135781-COHORTS          (154.9-160.8]    5221   1001    955     46
Birth       ki1135781-COHORTS          <=149.6          5221   2107   1903    204
Birth       ki1135781-COHORTS          >160.8           5221    207    199      8
Birth       ki1148112-LCNI-5           (149.6-154.9]       0      0      0      0
Birth       ki1148112-LCNI-5           (154.9-160.8]       0      0      0      0
Birth       ki1148112-LCNI-5           <=149.6             0      0      0      0
Birth       ki1148112-LCNI-5           >160.8              0      0      0      0

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                0.2139738   0.1764031   0.2515445
12 months   ki0047075b-MAL-ED          (154.9-160.8]        NA                0.2429668   0.2004436   0.2854899
12 months   ki0047075b-MAL-ED          <=149.6              NA                0.3718412   0.3315841   0.4120982
12 months   ki0047075b-MAL-ED          >160.8               NA                0.1690821   0.1180051   0.2201592
12 months   ki1066203-TanzaniaChild2   (149.6-154.9]        NA                0.2061856   0.1255611   0.2868100
12 months   ki1066203-TanzaniaChild2   (154.9-160.8]        NA                0.0785714   0.0339377   0.1232052
12 months   ki1066203-TanzaniaChild2   <=149.6              NA                0.3846154   0.2317115   0.5375192
12 months   ki1066203-TanzaniaChild2   >160.8               NA                0.0779221   0.0179661   0.1378781
12 months   ki1101329-Keneba           (149.6-154.9]        NA                0.3589744   0.3020552   0.4158935
12 months   ki1101329-Keneba           (154.9-160.8]        NA                0.2970149   0.2624054   0.3316244
12 months   ki1101329-Keneba           <=149.6              NA                0.6551724   0.4821309   0.8282140
12 months   ki1101329-Keneba           >160.8               NA                0.1735331   0.1472995   0.1997667
12 months   ki1126311-ZVITAMBO         (149.6-154.9]        NA                0.2765957   0.2193851   0.3338064
12 months   ki1126311-ZVITAMBO         (154.9-160.8]        NA                0.2610294   0.2241099   0.2979490
12 months   ki1126311-ZVITAMBO         <=149.6              NA                0.4800000   0.3414729   0.6185271
12 months   ki1126311-ZVITAMBO         >160.8               NA                0.1824000   0.1521141   0.2126859
12 months   ki1135781-COHORTS          (149.6-154.9]        NA                0.3601441   0.3370906   0.3831976
12 months   ki1135781-COHORTS          (154.9-160.8]        NA                0.2340183   0.2059783   0.2620582
12 months   ki1135781-COHORTS          <=149.6              NA                0.5282427   0.5058644   0.5506210
12 months   ki1135781-COHORTS          >160.8               NA                0.1734104   0.1169876   0.2298332
12 months   ki1148112-LCNI-5           (149.6-154.9]        NA                0.4942529   0.3890243   0.5994814
12 months   ki1148112-LCNI-5           (154.9-160.8]        NA                0.3457944   0.2555280   0.4360608
12 months   ki1148112-LCNI-5           <=149.6              NA                0.6176471   0.4540351   0.7812590
12 months   ki1148112-LCNI-5           >160.8               NA                0.3209877   0.2191537   0.4228216
18 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                0.3574661   0.3127727   0.4021595
18 months   ki0047075b-MAL-ED          (154.9-160.8]        NA                0.3226667   0.2753350   0.3699983
18 months   ki0047075b-MAL-ED          <=149.6              NA                0.5000000   0.4572569   0.5427431
18 months   ki0047075b-MAL-ED          >160.8               NA                0.2676768   0.2059870   0.3293665
18 months   ki1066203-TanzaniaChild2   (149.6-154.9]        NA                0.3571429   0.2446745   0.4696113
18 months   ki1066203-TanzaniaChild2   (154.9-160.8]        NA                0.1649485   0.0909460   0.2389509
18 months   ki1066203-TanzaniaChild2   <=149.6              NA                0.6000000   0.4243507   0.7756493
18 months   ki1066203-TanzaniaChild2   >160.8               NA                0.1379310   0.0490131   0.2268490
18 months   ki1101329-Keneba           (149.6-154.9]        NA                0.4182510   0.3586190   0.4778829
18 months   ki1101329-Keneba           (154.9-160.8]        NA                0.3903509   0.3537821   0.4269196
18 months   ki1101329-Keneba           <=149.6              NA                0.6666667   0.5057847   0.8275486
18 months   ki1101329-Keneba           >160.8               NA                0.2345523   0.2050530   0.2640516
18 months   ki1135781-COHORTS          (149.6-154.9]        NA                0.5869565   0.5572822   0.6166308
18 months   ki1135781-COHORTS          (154.9-160.8]        NA                0.4607646   0.4169344   0.5045948
18 months   ki1135781-COHORTS          <=149.6              NA                0.7364706   0.7122848   0.7606564
18 months   ki1135781-COHORTS          >160.8               NA                0.2933333   0.1902757   0.3963910
18 months   ki1148112-LCNI-5           (149.6-154.9]        NA                0.6100000   0.5142678   0.7057322
18 months   ki1148112-LCNI-5           (154.9-160.8]        NA                0.4126984   0.3266144   0.4987824
18 months   ki1148112-LCNI-5           <=149.6              NA                0.6578947   0.5068426   0.8089469
18 months   ki1148112-LCNI-5           >160.8               NA                0.3956044   0.2949967   0.4962121
24 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                0.3428571   0.2974466   0.3882676
24 months   ki0047075b-MAL-ED          (154.9-160.8]        NA                0.2981030   0.2514154   0.3447905
24 months   ki0047075b-MAL-ED          <=149.6              NA                0.4841270   0.4404824   0.5277716
24 months   ki0047075b-MAL-ED          >160.8               NA                0.3036649   0.2384294   0.3689005
24 months   ki1101329-Keneba           (149.6-154.9]        NA                0.4723404   0.4084914   0.5361894
24 months   ki1101329-Keneba           (154.9-160.8]        NA                0.3952000   0.3568595   0.4335405
24 months   ki1101329-Keneba           <=149.6              NA                0.6551724   0.4821256   0.8282192
24 months   ki1101329-Keneba           >160.8               NA                0.2342216   0.2031256   0.2653176
24 months   ki1135781-COHORTS          (149.6-154.9]        NA                0.5585639   0.5349500   0.5821778
24 months   ki1135781-COHORTS          (154.9-160.8]        NA                0.3980687   0.3666391   0.4294982
24 months   ki1135781-COHORTS          <=149.6              NA                0.7145833   0.6943806   0.7347860
24 months   ki1135781-COHORTS          >160.8               NA                0.2169312   0.1581655   0.2756969
24 months   ki1148112-LCNI-5           (149.6-154.9]        NA                0.5000000   0.3915958   0.6084042
24 months   ki1148112-LCNI-5           (154.9-160.8]        NA                0.3461538   0.2545658   0.4377419
24 months   ki1148112-LCNI-5           <=149.6              NA                0.6666667   0.4976942   0.8356392
24 months   ki1148112-LCNI-5           >160.8               NA                0.4125000   0.3044428   0.5205572
3 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                0.1317365   0.1021134   0.1613597
3 months    ki0047075b-MAL-ED          (154.9-160.8]        NA                0.1376147   0.1052694   0.1699600
3 months    ki0047075b-MAL-ED          <=149.6              NA                0.2138047   0.1808246   0.2467848
3 months    ki0047075b-MAL-ED          >160.8               NA                0.0786026   0.0437371   0.1134681
3 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                0.0855263   0.0410281   0.1300246
3 months    ki1066203-TanzaniaChild2   (154.9-160.8]        NA                0.0686695   0.0361694   0.1011697
3 months    ki1066203-TanzaniaChild2   <=149.6              NA                0.0943396   0.0155768   0.1731024
3 months    ki1066203-TanzaniaChild2   >160.8               NA                0.0378788   0.0052835   0.0704741
3 months    ki1101329-Keneba           (149.6-154.9]        NA                0.2359155   0.1865243   0.2853067
3 months    ki1101329-Keneba           (154.9-160.8]        NA                0.1496063   0.1242744   0.1749382
3 months    ki1101329-Keneba           <=149.6              NA                0.3939394   0.2271858   0.5606930
3 months    ki1101329-Keneba           >160.8               NA                0.0942529   0.0748328   0.1136729
3 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                0.2098765   0.1655241   0.2542290
3 months    ki1126311-ZVITAMBO         (154.9-160.8]        NA                0.1869565   0.1578585   0.2160545
3 months    ki1126311-ZVITAMBO         <=149.6              NA                0.2941176   0.1857915   0.4024437
3 months    ki1126311-ZVITAMBO         >160.8               NA                0.1386256   0.1153067   0.1619445
3 months    ki1135781-COHORTS          (149.6-154.9]        NA                0.1136241   0.0991887   0.1280595
3 months    ki1135781-COHORTS          (154.9-160.8]        NA                0.0851485   0.0679341   0.1023630
3 months    ki1135781-COHORTS          <=149.6              NA                0.2107262   0.1933108   0.2281415
3 months    ki1135781-COHORTS          >160.8               NA                0.0483871   0.0175461   0.0792281
6 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                0.1366460   0.1060055   0.1672865
6 months    ki0047075b-MAL-ED          (154.9-160.8]        NA                0.1349398   0.1020587   0.1678208
6 months    ki0047075b-MAL-ED          <=149.6              NA                0.2356021   0.2008446   0.2703596
6 months    ki0047075b-MAL-ED          >160.8               NA                0.0871560   0.0497022   0.1246097
6 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                0.1021898   0.0514185   0.1529611
6 months    ki1066203-TanzaniaChild2   (154.9-160.8]        NA                0.0821256   0.0446862   0.1195650
6 months    ki1066203-TanzaniaChild2   <=149.6              NA                0.1666667   0.0611318   0.2722015
6 months    ki1066203-TanzaniaChild2   >160.8               NA                0.0555556   0.0123119   0.0987993
6 months    ki1101329-Keneba           (149.6-154.9]        NA                0.2181818   0.1693549   0.2670088
6 months    ki1101329-Keneba           (154.9-160.8]        NA                0.1595598   0.1329335   0.1861862
6 months    ki1101329-Keneba           <=149.6              NA                0.4411765   0.2742336   0.6081193
6 months    ki1101329-Keneba           >160.8               NA                0.0915577   0.0720609   0.1110544
6 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                0.1818182   0.1352797   0.2283567
6 months    ki1126311-ZVITAMBO         (154.9-160.8]        NA                0.1934033   0.1634208   0.2233858
6 months    ki1126311-ZVITAMBO         <=149.6              NA                0.3650794   0.2461596   0.4839991
6 months    ki1126311-ZVITAMBO         >160.8               NA                0.1098191   0.0877859   0.1318524
6 months    ki1135781-COHORTS          (149.6-154.9]        NA                0.1788301   0.1611006   0.1965596
6 months    ki1135781-COHORTS          (154.9-160.8]        NA                0.1248710   0.1040550   0.1456870
6 months    ki1135781-COHORTS          <=149.6              NA                0.3081854   0.2880871   0.3282837
6 months    ki1135781-COHORTS          >160.8               NA                0.0691489   0.0328791   0.1054188
6 months    ki1148112-LCNI-5           (149.6-154.9]        NA                0.4491525   0.3592973   0.5390078
6 months    ki1148112-LCNI-5           (154.9-160.8]        NA                0.2905405   0.2173073   0.3637738
6 months    ki1148112-LCNI-5           <=149.6              NA                0.5454545   0.3981509   0.6927582
6 months    ki1148112-LCNI-5           >160.8               NA                0.3142857   0.2253838   0.4031877
9 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                0.1659483   0.1320869   0.1998097
9 months    ki0047075b-MAL-ED          (154.9-160.8]        NA                0.1804511   0.1427059   0.2181963
9 months    ki0047075b-MAL-ED          <=149.6              NA                0.2974910   0.2595485   0.3354336
9 months    ki0047075b-MAL-ED          >160.8               NA                0.1079812   0.0662893   0.1496732
9 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                0.1682243   0.0972650   0.2391836
9 months    ki1066203-TanzaniaChild2   (154.9-160.8]        NA                0.1235955   0.0751897   0.1720013
9 months    ki1066203-TanzaniaChild2   <=149.6              NA                0.3043478   0.1712240   0.4374717
9 months    ki1066203-TanzaniaChild2   >160.8               NA                0.0909091   0.0342143   0.1476039
9 months    ki1101329-Keneba           (149.6-154.9]        NA                0.2676056   0.2161035   0.3191077
9 months    ki1101329-Keneba           (154.9-160.8]        NA                0.2289326   0.1980635   0.2598017
9 months    ki1101329-Keneba           <=149.6              NA                0.4375000   0.2655748   0.6094252
9 months    ki1101329-Keneba           >160.8               NA                0.1196682   0.0977651   0.1415713
9 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                0.2274510   0.1759857   0.2789163
9 months    ki1126311-ZVITAMBO         (154.9-160.8]        NA                0.1984127   0.1672620   0.2295634
9 months    ki1126311-ZVITAMBO         <=149.6              NA                0.3157895   0.1950820   0.4364969
9 months    ki1126311-ZVITAMBO         >160.8               NA                0.1680328   0.1409388   0.1951267
9 months    ki1135781-COHORTS          (149.6-154.9]        NA                0.2440854   0.2238598   0.2643110
9 months    ki1135781-COHORTS          (154.9-160.8]        NA                0.1814255   0.1566018   0.2062492
9 months    ki1135781-COHORTS          <=149.6              NA                0.4042661   0.3825876   0.4259447
9 months    ki1135781-COHORTS          >160.8               NA                0.1091954   0.0628494   0.1555414
9 months    ki1148112-LCNI-5           (149.6-154.9]        NA                0.3647059   0.2622169   0.4671948
9 months    ki1148112-LCNI-5           (154.9-160.8]        NA                0.2500000   0.1710778   0.3289222
9 months    ki1148112-LCNI-5           <=149.6              NA                0.6111111   0.4516153   0.7706069
9 months    ki1148112-LCNI-5           >160.8               NA                0.2289157   0.1383888   0.3194425
Birth       ki0047075b-MAL-ED          (149.6-154.9]        NA                0.1111111   0.0804932   0.1417290
Birth       ki0047075b-MAL-ED          (154.9-160.8]        NA                0.0988024   0.0667898   0.1308150
Birth       ki0047075b-MAL-ED          <=149.6              NA                0.1870079   0.1530890   0.2209268
Birth       ki0047075b-MAL-ED          >160.8               NA                0.0674157   0.0305676   0.1042638
Birth       ki1126311-ZVITAMBO         (149.6-154.9]        NA                0.1188630   0.0866131   0.1511130
Birth       ki1126311-ZVITAMBO         (154.9-160.8]        NA                0.1053241   0.0848512   0.1257969
Birth       ki1126311-ZVITAMBO         <=149.6              NA                0.1309524   0.0587955   0.2031093
Birth       ki1126311-ZVITAMBO         >160.8               NA                0.0822306   0.0656737   0.0987875
Birth       ki1135781-COHORTS          (149.6-154.9]        NA                0.0692550   0.0578559   0.0806540
Birth       ki1135781-COHORTS          (154.9-160.8]        NA                0.0459540   0.0329817   0.0589264
Birth       ki1135781-COHORTS          <=149.6              NA                0.0968201   0.0841923   0.1094479
Birth       ki1135781-COHORTS          >160.8               NA                0.0386474   0.0123867   0.0649080


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          NA                   NA                0.2695652   0.2657967   0.2733338
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.1473088   0.1368109   0.1578067
12 months   ki1101329-Keneba           NA                   NA                0.2566272   0.2524766   0.2607778
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2372765   0.2341146   0.2404383
12 months   ki1135781-COHORTS          NA                   NA                0.3987465   0.3952763   0.4022167
12 months   ki1148112-LCNI-5           NA                   NA                0.4110032   0.3996986   0.4223079
18 months   ki0047075b-MAL-ED          NA                   NA                0.3861129   0.3818036   0.3904222
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.2627451   0.2440908   0.2813994
18 months   ki1101329-Keneba           NA                   NA                0.3299492   0.3255952   0.3343032
18 months   ki1135781-COHORTS          NA                   NA                0.6234079   0.6191926   0.6276233
18 months   ki1148112-LCNI-5           NA                   NA                0.4901408   0.4789801   0.5013016
24 months   ki0047075b-MAL-ED          NA                   NA                0.3746631   0.3705718   0.3787544
24 months   ki1101329-Keneba           NA                   NA                0.3395755   0.3345476   0.3446034
24 months   ki1135781-COHORTS          NA                   NA                0.5765823   0.5726317   0.5805329
24 months   ki1148112-LCNI-5           NA                   NA                0.4391892   0.4280652   0.4503131
3 months    ki0047075b-MAL-ED          NA                   NA                0.1539773   0.1518082   0.1561464
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0684211   0.0668696   0.0699725
3 months    ki1101329-Keneba           NA                   NA                0.1416111   0.1390217   0.1442005
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1734164   0.1717848   0.1750481
3 months    ki1135781-COHORTS          NA                   NA                0.1453488   0.1438159   0.1468817
6 months    ki0047075b-MAL-ED          NA                   NA                0.1634103   0.1608313   0.1659893
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.0900000   0.0873870   0.0926130
6 months    ki1101329-Keneba           NA                   NA                0.1427810   0.1400172   0.1455449
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1611991   0.1586066   0.1637916
6 months    ki1135781-COHORTS          NA                   NA                0.2168675   0.2146475   0.2190875
6 months    ki1148112-LCNI-5           NA                   NA                0.3686747   0.3600157   0.3773337
9 months    ki0047075b-MAL-ED          NA                   NA                0.2068543   0.2035204   0.2101883
9 months    ki1066203-TanzaniaChild2   NA                   NA                0.1465116   0.1407467   0.1522766
9 months    ki1101329-Keneba           NA                   NA                0.1891026   0.1859742   0.1922309
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1935484   0.1920502   0.1950465
9 months    ki1135781-COHORTS          NA                   NA                0.2927947   0.2900283   0.2955611
9 months    ki1148112-LCNI-5           NA                   NA                0.3156250   0.3026529   0.3285971
Birth       ki0047075b-MAL-ED          NA                   NA                0.1298246   0.1275150   0.1321341
Birth       ki1126311-ZVITAMBO         NA                   NA                0.0982031   0.0975851   0.0988210
Birth       ki1135781-COHORTS          NA                   NA                0.0746983   0.0741435   0.0752531


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          (154.9-160.8]        (149.6-154.9]     1.1354977   0.8861738   1.4549685
12 months   ki0047075b-MAL-ED          <=149.6              (149.6-154.9]     1.7377883   1.4138740   2.1359104
12 months   ki0047075b-MAL-ED          >160.8               (149.6-154.9]     0.7902001   0.5571750   1.1206824
12 months   ki1066203-TanzaniaChild2   (154.9-160.8]        (149.6-154.9]     0.3810714   0.1912053   0.7594739
12 months   ki1066203-TanzaniaChild2   <=149.6              (149.6-154.9]     1.8653846   1.0680546   3.2579419
12 months   ki1066203-TanzaniaChild2   >160.8               (149.6-154.9]     0.3779221   0.1594279   0.8958599
12 months   ki1101329-Keneba           (154.9-160.8]        (149.6-154.9]     0.8273987   0.6796067   1.0073307
12 months   ki1101329-Keneba           <=149.6              (149.6-154.9]     1.8251232   1.3412353   2.4835870
12 months   ki1101329-Keneba           >160.8               (149.6-154.9]     0.4834136   0.3883066   0.6018149
12 months   ki1126311-ZVITAMBO         (154.9-160.8]        (149.6-154.9]     0.9437217   0.7345500   1.2124575
12 months   ki1126311-ZVITAMBO         <=149.6              (149.6-154.9]     1.7353846   1.2167267   2.4751325
12 months   ki1126311-ZVITAMBO         >160.8               (149.6-154.9]     0.6594462   0.5058100   0.8597481
12 months   ki1135781-COHORTS          (154.9-160.8]        (149.6-154.9]     0.6497907   0.5672522   0.7443390
12 months   ki1135781-COHORTS          <=149.6              (149.6-154.9]     1.4667538   1.3583776   1.5837768
12 months   ki1135781-COHORTS          >160.8               (149.6-154.9]     0.4815029   0.3456076   0.6708332
12 months   ki1148112-LCNI-5           (154.9-160.8]        (149.6-154.9]     0.6996305   0.4995454   0.9798565
12 months   ki1148112-LCNI-5           <=149.6              (149.6-154.9]     1.2496580   0.8896031   1.7554402
12 months   ki1148112-LCNI-5           >160.8               (149.6-154.9]     0.6494401   0.4432090   0.9516335
18 months   ki0047075b-MAL-ED          (154.9-160.8]        (149.6-154.9]     0.9026498   0.7444100   1.0945268
18 months   ki0047075b-MAL-ED          <=149.6              (149.6-154.9]     1.3987342   1.2021458   1.6274709
18 months   ki0047075b-MAL-ED          >160.8               (149.6-154.9]     0.7488173   0.5761115   0.9732966
18 months   ki1066203-TanzaniaChild2   (154.9-160.8]        (149.6-154.9]     0.4618557   0.2669662   0.7990176
18 months   ki1066203-TanzaniaChild2   <=149.6              (149.6-154.9]     1.6800000   1.0928920   2.5825059
18 months   ki1066203-TanzaniaChild2   >160.8               (149.6-154.9]     0.3862069   0.1884651   0.7914238
18 months   ki1101329-Keneba           (154.9-160.8]        (149.6-154.9]     0.9332935   0.7869159   1.1068993
18 months   ki1101329-Keneba           <=149.6              (149.6-154.9]     1.5939394   1.2043203   2.1096072
18 months   ki1101329-Keneba           >160.8               (149.6-154.9]     0.5607933   0.4636980   0.6782198
18 months   ki1135781-COHORTS          (154.9-160.8]        (149.6-154.9]     0.7850063   0.7048371   0.8742941
18 months   ki1135781-COHORTS          <=149.6              (149.6-154.9]     1.2547277   1.1813200   1.3326969
18 months   ki1135781-COHORTS          >160.8               (149.6-154.9]     0.4997531   0.3504305   0.7127038
18 months   ki1148112-LCNI-5           (154.9-160.8]        (149.6-154.9]     0.6765548   0.5211197   0.8783516
18 months   ki1148112-LCNI-5           <=149.6              (149.6-154.9]     1.0785160   0.8166666   1.4243226
18 months   ki1148112-LCNI-5           >160.8               (149.6-154.9]     0.6485318   0.4810020   0.8744110
24 months   ki0047075b-MAL-ED          (154.9-160.8]        (149.6-154.9]     0.8694670   0.7082300   1.0674115
24 months   ki0047075b-MAL-ED          <=149.6              (149.6-154.9]     1.4120370   1.2029974   1.6574005
24 months   ki0047075b-MAL-ED          >160.8               (149.6-154.9]     0.8856894   0.6881394   1.1399517
24 months   ki1101329-Keneba           (154.9-160.8]        (149.6-154.9]     0.8366847   0.7084366   0.9881494
24 months   ki1101329-Keneba           <=149.6              (149.6-154.9]     1.3870767   1.0309629   1.8661989
24 months   ki1101329-Keneba           >160.8               (149.6-154.9]     0.4958746   0.4102858   0.5993178
24 months   ki1135781-COHORTS          (154.9-160.8]        (149.6-154.9]     0.7126646   0.6516123   0.7794370
24 months   ki1135781-COHORTS          <=149.6              (149.6-154.9]     1.2793225   1.2158851   1.3460697
24 months   ki1135781-COHORTS          >160.8               (149.6-154.9]     0.3883732   0.2952410   0.5108833
24 months   ki1148112-LCNI-5           (154.9-160.8]        (149.6-154.9]     0.6923077   0.4917447   0.9746723
24 months   ki1148112-LCNI-5           <=149.6              (149.6-154.9]     1.3333333   0.9551801   1.8611964
24 months   ki1148112-LCNI-5           >160.8               (149.6-154.9]     0.8250000   0.5871869   1.1591283
3 months    ki0047075b-MAL-ED          (154.9-160.8]        (149.6-154.9]     1.0446205   0.7545521   1.4461984
3 months    ki0047075b-MAL-ED          <=149.6              (149.6-154.9]     1.6229721   1.2356168   2.1317600
3 months    ki0047075b-MAL-ED          >160.8               (149.6-154.9]     0.5966653   0.3628710   0.9810912
3 months    ki1066203-TanzaniaChild2   (154.9-160.8]        (149.6-154.9]     0.8029052   0.3973789   1.6222724
3 months    ki1066203-TanzaniaChild2   <=149.6              (149.6-154.9]     1.1030479   0.4124430   2.9500187
3 months    ki1066203-TanzaniaChild2   >160.8               (149.6-154.9]     0.4428904   0.1620239   1.2106356
3 months    ki1101329-Keneba           (154.9-160.8]        (149.6-154.9]     0.6341521   0.4844562   0.8301036
3 months    ki1101329-Keneba           <=149.6              (149.6-154.9]     1.6698327   1.0413121   2.6777188
3 months    ki1101329-Keneba           >160.8               (149.6-154.9]     0.3995197   0.2978292   0.5359312
3 months    ki1126311-ZVITAMBO         (154.9-160.8]        (149.6-154.9]     0.8907928   0.6851628   1.1581363
3 months    ki1126311-ZVITAMBO         <=149.6              (149.6-154.9]     1.4013841   0.9165221   2.1427496
3 months    ki1126311-ZVITAMBO         >160.8               (149.6-154.9]     0.6605102   0.5041685   0.8653331
3 months    ki1135781-COHORTS          (154.9-160.8]        (149.6-154.9]     0.7493876   0.5902123   0.9514913
3 months    ki1135781-COHORTS          <=149.6              (149.6-154.9]     1.8545899   1.5937716   2.1580907
3 months    ki1135781-COHORTS          >160.8               (149.6-154.9]     0.4258523   0.2223324   0.8156716
6 months    ki0047075b-MAL-ED          (154.9-160.8]        (149.6-154.9]     0.9875137   0.7091352   1.3751726
6 months    ki0047075b-MAL-ED          <=149.6              (149.6-154.9]     1.7241790   1.3182962   2.2550267
6 months    ki0047075b-MAL-ED          >160.8               (149.6-154.9]     0.6378233   0.3928173   1.0356433
6 months    ki1066203-TanzaniaChild2   (154.9-160.8]        (149.6-154.9]     0.8036577   0.4094773   1.5772932
6 months    ki1066203-TanzaniaChild2   <=149.6              (149.6-154.9]     1.6309524   0.7292821   3.6474303
6 months    ki1066203-TanzaniaChild2   >160.8               (149.6-154.9]     0.5436508   0.2159126   1.3688698
6 months    ki1101329-Keneba           (154.9-160.8]        (149.6-154.9]     0.7313159   0.5531825   0.9668110
6 months    ki1101329-Keneba           <=149.6              (149.6-154.9]     2.0220588   1.3027659   3.1384931
6 months    ki1101329-Keneba           >160.8               (149.6-154.9]     0.4196393   0.3081178   0.5715255
6 months    ki1126311-ZVITAMBO         (154.9-160.8]        (149.6-154.9]     1.0637181   0.7886144   1.4347903
6 months    ki1126311-ZVITAMBO         <=149.6              (149.6-154.9]     2.0079365   1.3268876   3.0385460
6 months    ki1126311-ZVITAMBO         >160.8               (149.6-154.9]     0.6040052   0.4363131   0.8361478
6 months    ki1135781-COHORTS          (154.9-160.8]        (149.6-154.9]     0.6982662   0.5751593   0.8477228
6 months    ki1135781-COHORTS          <=149.6              (149.6-154.9]     1.7233421   1.5305050   1.9404757
6 months    ki1135781-COHORTS          >160.8               (149.6-154.9]     0.3866740   0.2267338   0.6594373
6 months    ki1148112-LCNI-5           (154.9-160.8]        (149.6-154.9]     0.6468638   0.4688746   0.8924196
6 months    ki1148112-LCNI-5           <=149.6              (149.6-154.9]     1.2144082   0.8677710   1.6995122
6 months    ki1148112-LCNI-5           >160.8               (149.6-154.9]     0.6997305   0.4948383   0.9894600
9 months    ki0047075b-MAL-ED          (154.9-160.8]        (149.6-154.9]     1.0873938   0.8118589   1.4564419
9 months    ki0047075b-MAL-ED          <=149.6              (149.6-154.9]     1.7926733   1.4092795   2.2803691
9 months    ki0047075b-MAL-ED          >160.8               (149.6-154.9]     0.6506920   0.4204523   1.0070112
9 months    ki1066203-TanzaniaChild2   (154.9-160.8]        (149.6-154.9]     0.7347066   0.4131755   1.3064516
9 months    ki1066203-TanzaniaChild2   <=149.6              (149.6-154.9]     1.8091787   0.9853211   3.3218895
9 months    ki1066203-TanzaniaChild2   >160.8               (149.6-154.9]     0.5404041   0.2545298   1.1473571
9 months    ki1101329-Keneba           (154.9-160.8]        (149.6-154.9]     0.8554849   0.6763277   1.0821004
9 months    ki1101329-Keneba           <=149.6              (149.6-154.9]     1.6348684   1.0554785   2.5323062
9 months    ki1101329-Keneba           >160.8               (149.6-154.9]     0.4471813   0.3428768   0.5832158
9 months    ki1126311-ZVITAMBO         (154.9-160.8]        (149.6-154.9]     0.8723317   0.6623317   1.1489146
9 months    ki1126311-ZVITAMBO         <=149.6              (149.6-154.9]     1.3883848   0.8904306   2.1648090
9 months    ki1126311-ZVITAMBO         >160.8               (149.6-154.9]     0.7387648   0.5595517   0.9753763
9 months    ki1135781-COHORTS          (154.9-160.8]        (149.6-154.9]     0.7432869   0.6334120   0.8722213
9 months    ki1135781-COHORTS          <=149.6              (149.6-154.9]     1.6562487   1.5005843   1.8280611
9 months    ki1135781-COHORTS          >160.8               (149.6-154.9]     0.4473656   0.2903048   0.6893994
9 months    ki1148112-LCNI-5           (154.9-160.8]        (149.6-154.9]     0.6854839   0.4492043   1.0460456
9 months    ki1148112-LCNI-5           <=149.6              (149.6-154.9]     1.6756272   1.1418688   2.4588872
9 months    ki1148112-LCNI-5           >160.8               (149.6-154.9]     0.6276720   0.3864024   1.0195903
Birth       ki0047075b-MAL-ED          (154.9-160.8]        (149.6-154.9]     0.8892216   0.5811486   1.3606073
Birth       ki0047075b-MAL-ED          <=149.6              (149.6-154.9]     1.6830709   1.2101252   2.3408550
Birth       ki0047075b-MAL-ED          >160.8               (149.6-154.9]     0.6067416   0.3289773   1.1190297
Birth       ki1126311-ZVITAMBO         (154.9-160.8]        (149.6-154.9]     0.8860960   0.6346426   1.2371785
Birth       ki1126311-ZVITAMBO         <=149.6              (149.6-154.9]     1.1017081   0.5961092   2.0361381
Birth       ki1126311-ZVITAMBO         >160.8               (149.6-154.9]     0.6918098   0.4934603   0.9698872
Birth       ki1135781-COHORTS          (154.9-160.8]        (149.6-154.9]     0.6635486   0.4785837   0.9199995
Birth       ki1135781-COHORTS          <=149.6              (149.6-154.9]     1.3980239   1.1332096   1.7247215
Birth       ki1135781-COHORTS          >160.8               (149.6-154.9]     0.5580443   0.2773535   1.1228035


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.0555914    0.0178322    0.0933506
12 months   ki1066203-TanzaniaChild2   (149.6-154.9]        NA                -0.0588768   -0.1401818    0.0224283
12 months   ki1101329-Keneba           (149.6-154.9]        NA                -0.1023472   -0.1594175   -0.0452769
12 months   ki1126311-ZVITAMBO         (149.6-154.9]        NA                -0.0393193   -0.0966172    0.0179787
12 months   ki1135781-COHORTS          (149.6-154.9]        NA                 0.0386024    0.0152892    0.0619156
12 months   ki1148112-LCNI-5           (149.6-154.9]        NA                -0.0832496   -0.1890837    0.0225844
18 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.0286469   -0.0162538    0.0735475
18 months   ki1066203-TanzaniaChild2   (149.6-154.9]        NA                -0.0943978   -0.2084027    0.0196072
18 months   ki1101329-Keneba           (149.6-154.9]        NA                -0.0883017   -0.1480924   -0.0285110
18 months   ki1135781-COHORTS          (149.6-154.9]        NA                 0.0364514    0.0064792    0.0664236
18 months   ki1148112-LCNI-5           (149.6-154.9]        NA                -0.1198592   -0.2162397   -0.0234786
24 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.0318059   -0.0137885    0.0774004
24 months   ki1101329-Keneba           (149.6-154.9]        NA                -0.1327649   -0.1968116   -0.0687182
24 months   ki1135781-COHORTS          (149.6-154.9]        NA                 0.0180184   -0.0059237    0.0419605
24 months   ki1148112-LCNI-5           (149.6-154.9]        NA                -0.0608108   -0.1697842    0.0481626
3 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.0222407   -0.0074617    0.0519432
3 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                -0.0171053   -0.0616306    0.0274200
3 months    ki1101329-Keneba           (149.6-154.9]        NA                -0.0943044   -0.1437634   -0.0448454
3 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                -0.0364601   -0.0808426    0.0079223
3 months    ki1135781-COHORTS          (149.6-154.9]        NA                 0.0317247    0.0172082    0.0462413
6 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.0267643   -0.0039845    0.0575132
6 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                -0.0121898   -0.0630283    0.0386487
6 months    ki1101329-Keneba           (149.6-154.9]        NA                -0.0754008   -0.1243059   -0.0264957
6 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                -0.0206191   -0.0672298    0.0259916
6 months    ki1135781-COHORTS          (149.6-154.9]        NA                 0.0380374    0.0201694    0.0559053
6 months    ki1148112-LCNI-5           (149.6-154.9]        NA                -0.0804778   -0.1707494    0.0097937
9 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.0409061    0.0068809    0.0749312
9 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                -0.0217127   -0.0929058    0.0494804
9 months    ki1101329-Keneba           (149.6-154.9]        NA                -0.0785031   -0.1301001   -0.0269060
9 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                -0.0339026   -0.0853897    0.0175845
9 months    ki1135781-COHORTS          (149.6-154.9]        NA                 0.0487093    0.0282954    0.0691232
9 months    ki1148112-LCNI-5           (149.6-154.9]        NA                -0.0490809   -0.1523875    0.0542258
Birth       ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.0187135   -0.0119914    0.0494183
Birth       ki1126311-ZVITAMBO         (149.6-154.9]        NA                -0.0206600   -0.0529158    0.0115959
Birth       ki1135781-COHORTS          (149.6-154.9]        NA                 0.0054433   -0.0059692    0.0168559


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.2062262    0.0533404    0.3344210
12 months   ki1066203-TanzaniaChild2   (149.6-154.9]        NA                -0.3996828   -1.0828042    0.0593874
12 months   ki1101329-Keneba           (149.6-154.9]        NA                -0.3988166   -0.6405145   -0.1927281
12 months   ki1126311-ZVITAMBO         (149.6-154.9]        NA                -0.1657108   -0.4341872    0.0525075
12 months   ki1135781-COHORTS          (149.6-154.9]        NA                 0.0968095    0.0365368    0.1533116
12 months   ki1148112-LCNI-5           (149.6-154.9]        NA                -0.2025523   -0.4905122    0.0297752
18 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.0741929   -0.0496283    0.1834074
18 months   ki1066203-TanzaniaChild2   (149.6-154.9]        NA                -0.3592751   -0.8771735    0.0157390
18 months   ki1101329-Keneba           (149.6-154.9]        NA                -0.2676221   -0.4627625   -0.0985145
18 months   ki1135781-COHORTS          (149.6-154.9]        NA                 0.0584712    0.0092013    0.1052910
18 months   ki1148112-LCNI-5           (149.6-154.9]        NA                -0.2445402   -0.4584109   -0.0620329
24 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.0848921   -0.0451740    0.1987722
24 months   ki1101329-Keneba           (149.6-154.9]        NA                -0.3909731   -0.5935877   -0.2141196
24 months   ki1135781-COHORTS          (149.6-154.9]        NA                 0.0312504   -0.0111402    0.0718638
24 months   ki1148112-LCNI-5           (149.6-154.9]        NA                -0.1384615   -0.4161765    0.0847930
3 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.1444417   -0.0717647    0.3170330
3 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                -0.2500000   -1.1041779    0.2574297
3 months    ki1101329-Keneba           (149.6-154.9]        NA                -0.6659395   -1.0555548   -0.3501729
3 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                -0.2102462   -0.4953490    0.0204990
3 months    ki1135781-COHORTS          (149.6-154.9]        NA                 0.2182660    0.1119779    0.3118324
6 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.1637861   -0.0469872    0.3321278
6 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                -0.1354420   -0.8676918    0.3097209
6 months    ki1101329-Keneba           (149.6-154.9]        NA                -0.5280868   -0.9129419   -0.2206588
6 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                -0.1279107   -0.4576617    0.1272443
6 months    ki1135781-COHORTS          (149.6-154.9]        NA                 0.1753946    0.0889720    0.2536189
6 months    ki1148112-LCNI-5           (149.6-154.9]        NA                -0.2182896   -0.4901503    0.0039733
9 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.1977530    0.0155334    0.3462447
9 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                -0.1481976   -0.7538936    0.2483252
9 months    ki1101329-Keneba           (149.6-154.9]        NA                -0.4151349   -0.7166760   -0.1665607
9 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                -0.1751634   -0.4737490    0.0629279
9 months    ki1135781-COHORTS          (149.6-154.9]        NA                 0.1663598    0.0938530    0.2330649
9 months    ki1148112-LCNI-5           (149.6-154.9]        NA                -0.1555038   -0.5350211    0.1301820
Birth       ki0047075b-MAL-ED          (149.6-154.9]        NA                 0.1441441   -0.1280399    0.3506531
Birth       ki1126311-ZVITAMBO         (149.6-154.9]        NA                -0.2103799   -0.5877646    0.0773069
Birth       ki1135781-COHORTS          (149.6-154.9]        NA                 0.0728711   -0.0931904    0.2137069


