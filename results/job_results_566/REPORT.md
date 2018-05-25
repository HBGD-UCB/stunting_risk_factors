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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1126311-ZVITAMBO

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/4767393c-c10b-4054-b990-0eb6ec8e9049/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4767393c-c10b-4054-b990-0eb6ec8e9049/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4767393c-c10b-4054-b990-0eb6ec8e9049/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4767393c-c10b-4054-b990-0eb6ec8e9049/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                 n     nA   nAY0   nAY1
----------  -------------------------  ------------  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          <=42.4         1425    119    111      8
Birth       ki0047075b-MAL-ED          (42.4-49.2]    1425    269    259     10
Birth       ki0047075b-MAL-ED          (49.2-59.3]    1425    529    514     15
Birth       ki0047075b-MAL-ED          >59.3          1425    508    499      9
Birth       ki1017093-NIH-Birth        <=42.4           28     12     12      0
Birth       ki1017093-NIH-Birth        (42.4-49.2]      28      9      9      0
Birth       ki1017093-NIH-Birth        (49.2-59.3]      28      7      7      0
Birth       ki1017093-NIH-Birth        >59.3            28      0      0      0
Birth       ki1017093b-PROVIDE         <=42.4            0      0      0      0
Birth       ki1017093b-PROVIDE         (42.4-49.2]       0      0      0      0
Birth       ki1017093b-PROVIDE         (49.2-59.3]       0      0      0      0
Birth       ki1017093b-PROVIDE         >59.3             0      0      0      0
Birth       ki1017093c-NIH-Crypto      <=42.4           27      8      8      0
Birth       ki1017093c-NIH-Crypto      (42.4-49.2]      27      9      9      0
Birth       ki1017093c-NIH-Crypto      (49.2-59.3]      27      7      6      1
Birth       ki1017093c-NIH-Crypto      >59.3            27      3      3      0
Birth       ki1066203-TanzaniaChild2   <=42.4            0      0      0      0
Birth       ki1066203-TanzaniaChild2   (42.4-49.2]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (49.2-59.3]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   >59.3             0      0      0      0
Birth       ki1126311-ZVITAMBO         <=42.4         2710     28     27      1
Birth       ki1126311-ZVITAMBO         (42.4-49.2]    2710    300    284     16
Birth       ki1126311-ZVITAMBO         (49.2-59.3]    2710   1138   1091     47
Birth       ki1126311-ZVITAMBO         >59.3          2710   1244   1229     15
Birth       ki1148112-LCNI-5           <=42.4            0      0      0      0
Birth       ki1148112-LCNI-5           (42.4-49.2]       0      0      0      0
Birth       ki1148112-LCNI-5           (49.2-59.3]       0      0      0      0
Birth       ki1148112-LCNI-5           >59.3             0      0      0      0
3 months    ki0047075b-MAL-ED          <=42.4         1759    143    130     13
3 months    ki0047075b-MAL-ED          (42.4-49.2]    1759    341    322     19
3 months    ki0047075b-MAL-ED          (49.2-59.3]    1759    651    634     17
3 months    ki0047075b-MAL-ED          >59.3          1759    624    608     16
3 months    ki1017093-NIH-Birth        <=42.4          570    153    140     13
3 months    ki1017093-NIH-Birth        (42.4-49.2]     570    191    183      8
3 months    ki1017093-NIH-Birth        (49.2-59.3]     570    167    158      9
3 months    ki1017093-NIH-Birth        >59.3           570     59     56      3
3 months    ki1017093b-PROVIDE         <=42.4          168     41     39      2
3 months    ki1017093b-PROVIDE         (42.4-49.2]     168     45     44      1
3 months    ki1017093b-PROVIDE         (49.2-59.3]     168     56     55      1
3 months    ki1017093b-PROVIDE         >59.3           168     26     25      1
3 months    ki1017093c-NIH-Crypto      <=42.4          728    102     95      7
3 months    ki1017093c-NIH-Crypto      (42.4-49.2]     728    219    206     13
3 months    ki1017093c-NIH-Crypto      (49.2-59.3]     728    260    249     11
3 months    ki1017093c-NIH-Crypto      >59.3           728    147    145      2
3 months    ki1066203-TanzaniaChild2   <=42.4          566      5      5      0
3 months    ki1066203-TanzaniaChild2   (42.4-49.2]     566     55     54      1
3 months    ki1066203-TanzaniaChild2   (49.2-59.3]     566    211    205      6
3 months    ki1066203-TanzaniaChild2   >59.3           566    295    292      3
3 months    ki1126311-ZVITAMBO         <=42.4         2124     20     15      5
3 months    ki1126311-ZVITAMBO         (42.4-49.2]    2124    220    194     26
3 months    ki1126311-ZVITAMBO         (49.2-59.3]    2124    896    841     55
3 months    ki1126311-ZVITAMBO         >59.3          2124    988    965     23
3 months    ki1148112-LCNI-5           <=42.4            0      0      0      0
3 months    ki1148112-LCNI-5           (42.4-49.2]       0      0      0      0
3 months    ki1148112-LCNI-5           (49.2-59.3]       0      0      0      0
3 months    ki1148112-LCNI-5           >59.3             0      0      0      0
6 months    ki0047075b-MAL-ED          <=42.4         1688    136    122     14
6 months    ki0047075b-MAL-ED          (42.4-49.2]    1688    330    317     13
6 months    ki0047075b-MAL-ED          (49.2-59.3]    1688    629    617     12
6 months    ki0047075b-MAL-ED          >59.3          1688    593    582     11
6 months    ki1017093-NIH-Birth        <=42.4          537    149    128     21
6 months    ki1017093-NIH-Birth        (42.4-49.2]     537    179    171      8
6 months    ki1017093-NIH-Birth        (49.2-59.3]     537    152    147      5
6 months    ki1017093-NIH-Birth        >59.3           537     57     56      1
6 months    ki1017093b-PROVIDE         <=42.4          153     38     36      2
6 months    ki1017093b-PROVIDE         (42.4-49.2]     153     40     37      3
6 months    ki1017093b-PROVIDE         (49.2-59.3]     153     50     50      0
6 months    ki1017093b-PROVIDE         >59.3           153     25     24      1
6 months    ki1017093c-NIH-Crypto      <=42.4          715    101     95      6
6 months    ki1017093c-NIH-Crypto      (42.4-49.2]     715    217    209      8
6 months    ki1017093c-NIH-Crypto      (49.2-59.3]     715    250    243      7
6 months    ki1017093c-NIH-Crypto      >59.3           715    147    145      2
6 months    ki1066203-TanzaniaChild2   <=42.4          496      5      5      0
6 months    ki1066203-TanzaniaChild2   (42.4-49.2]     496     46     45      1
6 months    ki1066203-TanzaniaChild2   (49.2-59.3]     496    185    183      2
6 months    ki1066203-TanzaniaChild2   >59.3           496    260    256      4
6 months    ki1126311-ZVITAMBO         <=42.4         1968     17     15      2
6 months    ki1126311-ZVITAMBO         (42.4-49.2]    1968    208    193     15
6 months    ki1126311-ZVITAMBO         (49.2-59.3]    1968    821    785     36
6 months    ki1126311-ZVITAMBO         >59.3          1968    922    907     15
6 months    ki1148112-LCNI-5           <=42.4          416     36     33      3
6 months    ki1148112-LCNI-5           (42.4-49.2]     416    153    139     14
6 months    ki1148112-LCNI-5           (49.2-59.3]     416    184    173     11
6 months    ki1148112-LCNI-5           >59.3           416     43     41      2
9 months    ki0047075b-MAL-ED          <=42.4         1633    132    114     18
9 months    ki0047075b-MAL-ED          (42.4-49.2]    1633    322    303     19
9 months    ki0047075b-MAL-ED          (49.2-59.3]    1633    607    584     23
9 months    ki0047075b-MAL-ED          >59.3          1633    572    560     12
9 months    ki1017093-NIH-Birth        <=42.4          507    142    114     28
9 months    ki1017093-NIH-Birth        (42.4-49.2]     507    164    155      9
9 months    ki1017093-NIH-Birth        (49.2-59.3]     507    146    140      6
9 months    ki1017093-NIH-Birth        >59.3           507     55     53      2
9 months    ki1017093b-PROVIDE         <=42.4          158     39     33      6
9 months    ki1017093b-PROVIDE         (42.4-49.2]     158     41     39      2
9 months    ki1017093b-PROVIDE         (49.2-59.3]     158     52     52      0
9 months    ki1017093b-PROVIDE         >59.3           158     26     25      1
9 months    ki1017093c-NIH-Crypto      <=42.4          706    101     92      9
9 months    ki1017093c-NIH-Crypto      (42.4-49.2]     706    214    207      7
9 months    ki1017093c-NIH-Crypto      (49.2-59.3]     706    246    235     11
9 months    ki1017093c-NIH-Crypto      >59.3           706    145    144      1
9 months    ki1066203-TanzaniaChild2   <=42.4          426      5      5      0
9 months    ki1066203-TanzaniaChild2   (42.4-49.2]     426     42     40      2
9 months    ki1066203-TanzaniaChild2   (49.2-59.3]     426    152    150      2
9 months    ki1066203-TanzaniaChild2   >59.3           426    227    224      3
9 months    ki1126311-ZVITAMBO         <=42.4         1871     15     11      4
9 months    ki1126311-ZVITAMBO         (42.4-49.2]    1871    204    191     13
9 months    ki1126311-ZVITAMBO         (49.2-59.3]    1871    794    754     40
9 months    ki1126311-ZVITAMBO         >59.3          1871    858    834     24
9 months    ki1148112-LCNI-5           <=42.4          321     28     26      2
9 months    ki1148112-LCNI-5           (42.4-49.2]     321    116    107      9
9 months    ki1148112-LCNI-5           (49.2-59.3]     321    147    141      6
9 months    ki1148112-LCNI-5           >59.3           321     30     29      1
12 months   ki0047075b-MAL-ED          <=42.4         1609    131    111     20
12 months   ki0047075b-MAL-ED          (42.4-49.2]    1609    317    284     33
12 months   ki0047075b-MAL-ED          (49.2-59.3]    1609    597    565     32
12 months   ki0047075b-MAL-ED          >59.3          1609    564    547     17
12 months   ki1017093-NIH-Birth        <=42.4          491    138    112     26
12 months   ki1017093-NIH-Birth        (42.4-49.2]     491    160    149     11
12 months   ki1017093-NIH-Birth        (49.2-59.3]     491    142    136      6
12 months   ki1017093-NIH-Birth        >59.3           491     51     46      5
12 months   ki1017093b-PROVIDE         <=42.4          153     37     28      9
12 months   ki1017093b-PROVIDE         (42.4-49.2]     153     39     36      3
12 months   ki1017093b-PROVIDE         (49.2-59.3]     153     51     50      1
12 months   ki1017093b-PROVIDE         >59.3           153     26     26      0
12 months   ki1017093c-NIH-Crypto      <=42.4          706     97     88      9
12 months   ki1017093c-NIH-Crypto      (42.4-49.2]     706    218    205     13
12 months   ki1017093c-NIH-Crypto      (49.2-59.3]     706    248    231     17
12 months   ki1017093c-NIH-Crypto      >59.3           706    143    141      2
12 months   ki1066203-TanzaniaChild2   <=42.4          349      4      4      0
12 months   ki1066203-TanzaniaChild2   (42.4-49.2]     349     34     34      0
12 months   ki1066203-TanzaniaChild2   (49.2-59.3]     349    132    128      4
12 months   ki1066203-TanzaniaChild2   >59.3           349    179    176      3
12 months   ki1126311-ZVITAMBO         <=42.4         1642     12      7      5
12 months   ki1126311-ZVITAMBO         (42.4-49.2]    1642    193    170     23
12 months   ki1126311-ZVITAMBO         (49.2-59.3]    1642    696    648     48
12 months   ki1126311-ZVITAMBO         >59.3          1642    741    716     25
12 months   ki1148112-LCNI-5           <=42.4          310     27     22      5
12 months   ki1148112-LCNI-5           (42.4-49.2]     310    116     99     17
12 months   ki1148112-LCNI-5           (49.2-59.3]     310    138    128     10
12 months   ki1148112-LCNI-5           >59.3           310     29     27      2
18 months   ki0047075b-MAL-ED          <=42.4         1540    125     95     30
18 months   ki0047075b-MAL-ED          (42.4-49.2]    1540    307    255     52
18 months   ki0047075b-MAL-ED          (49.2-59.3]    1540    574    508     66
18 months   ki0047075b-MAL-ED          >59.3          1540    534    497     37
18 months   ki1017093-NIH-Birth        <=42.4          463    128     87     41
18 months   ki1017093-NIH-Birth        (42.4-49.2]     463    154    122     32
18 months   ki1017093-NIH-Birth        (49.2-59.3]     463    133    112     21
18 months   ki1017093-NIH-Birth        >59.3           463     48     41      7
18 months   ki1017093b-PROVIDE         <=42.4          141     35     21     14
18 months   ki1017093b-PROVIDE         (42.4-49.2]     141     34     30      4
18 months   ki1017093b-PROVIDE         (49.2-59.3]     141     48     46      2
18 months   ki1017093b-PROVIDE         >59.3           141     24     24      0
18 months   ki1017093c-NIH-Crypto      <=42.4          634     91     78     13
18 months   ki1017093c-NIH-Crypto      (42.4-49.2]     634    193    176     17
18 months   ki1017093c-NIH-Crypto      (49.2-59.3]     634    218    207     11
18 months   ki1017093c-NIH-Crypto      >59.3           634    132    131      1
18 months   ki1066203-TanzaniaChild2   <=42.4          254      4      3      1
18 months   ki1066203-TanzaniaChild2   (42.4-49.2]     254     26     23      3
18 months   ki1066203-TanzaniaChild2   (49.2-59.3]     254     85     78      7
18 months   ki1066203-TanzaniaChild2   >59.3           254    139    135      4
18 months   ki1126311-ZVITAMBO         <=42.4          401      2      2      0
18 months   ki1126311-ZVITAMBO         (42.4-49.2]     401     70     54     16
18 months   ki1126311-ZVITAMBO         (49.2-59.3]     401    178    147     31
18 months   ki1126311-ZVITAMBO         >59.3           401    151    134     17
18 months   ki1148112-LCNI-5           <=42.4          356     28     20      8
18 months   ki1148112-LCNI-5           (42.4-49.2]     356    135    110     25
18 months   ki1148112-LCNI-5           (49.2-59.3]     356    159    142     17
18 months   ki1148112-LCNI-5           >59.3           356     34     32      2
24 months   ki0047075b-MAL-ED          <=42.4         1483    117     85     32
24 months   ki0047075b-MAL-ED          (42.4-49.2]    1483    295    248     47
24 months   ki0047075b-MAL-ED          (49.2-59.3]    1483    548    484     64
24 months   ki0047075b-MAL-ED          >59.3          1483    523    494     29
24 months   ki1017093-NIH-Birth        <=42.4          429    123     81     42
24 months   ki1017093-NIH-Birth        (42.4-49.2]     429    142    115     27
24 months   ki1017093-NIH-Birth        (49.2-59.3]     429    119    103     16
24 months   ki1017093-NIH-Birth        >59.3           429     45     37      8
24 months   ki1017093b-PROVIDE         <=42.4          149     37     25     12
24 months   ki1017093b-PROVIDE         (42.4-49.2]     149     37     32      5
24 months   ki1017093b-PROVIDE         (49.2-59.3]     149     50     49      1
24 months   ki1017093b-PROVIDE         >59.3           149     25     25      0
24 months   ki1017093c-NIH-Crypto      <=42.4          514     66     54     12
24 months   ki1017093c-NIH-Crypto      (42.4-49.2]     514    160    147     13
24 months   ki1017093c-NIH-Crypto      (49.2-59.3]     514    180    171      9
24 months   ki1017093c-NIH-Crypto      >59.3           514    108    107      1
24 months   ki1066203-TanzaniaChild2   <=42.4            2      0      0      0
24 months   ki1066203-TanzaniaChild2   (42.4-49.2]       2      1      1      0
24 months   ki1066203-TanzaniaChild2   (49.2-59.3]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   >59.3             2      1      1      0
24 months   ki1126311-ZVITAMBO         <=42.4          112      1      1      0
24 months   ki1126311-ZVITAMBO         (42.4-49.2]     112     21     15      6
24 months   ki1126311-ZVITAMBO         (49.2-59.3]     112     46     35     11
24 months   ki1126311-ZVITAMBO         >59.3           112     44     39      5
24 months   ki1148112-LCNI-5           <=42.4          297     25     18      7
24 months   ki1148112-LCNI-5           (42.4-49.2]     297    103     85     18
24 months   ki1148112-LCNI-5           (49.2-59.3]     297    138    128     10
24 months   ki1148112-LCNI-5           >59.3           297     31     29      2

## Results Table

### Parameter: TSM


agecat      studyid               intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     <=42.4               NA                0.0672269   0.0222192   0.1122346
Birth       ki0047075b-MAL-ED     (42.4-49.2]          NA                0.0371747   0.0145584   0.0597910
Birth       ki0047075b-MAL-ED     (49.2-59.3]          NA                0.0283554   0.0142058   0.0425050
Birth       ki0047075b-MAL-ED     >59.3                NA                0.0177165   0.0062409   0.0291922
3 months    ki0047075b-MAL-ED     <=42.4               NA                0.0909091   0.0437776   0.1380405
3 months    ki0047075b-MAL-ED     (42.4-49.2]          NA                0.0557185   0.0313659   0.0800710
3 months    ki0047075b-MAL-ED     (49.2-59.3]          NA                0.0261137   0.0138599   0.0383674
3 months    ki0047075b-MAL-ED     >59.3                NA                0.0256410   0.0132357   0.0380463
3 months    ki1126311-ZVITAMBO    <=42.4               NA                0.2500000   0.0601826   0.4398174
3 months    ki1126311-ZVITAMBO    (42.4-49.2]          NA                0.1181818   0.0755137   0.1608500
3 months    ki1126311-ZVITAMBO    (49.2-59.3]          NA                0.0613839   0.0456634   0.0771045
3 months    ki1126311-ZVITAMBO    >59.3                NA                0.0232794   0.0138747   0.0326840
6 months    ki0047075b-MAL-ED     <=42.4               NA                0.1029412   0.0518539   0.1540284
6 months    ki0047075b-MAL-ED     (42.4-49.2]          NA                0.0393939   0.0183994   0.0603885
6 months    ki0047075b-MAL-ED     (49.2-59.3]          NA                0.0190779   0.0083841   0.0297717
6 months    ki0047075b-MAL-ED     >59.3                NA                0.0185497   0.0076867   0.0294128
9 months    ki0047075b-MAL-ED     <=42.4               NA                0.1363636   0.0778026   0.1949247
9 months    ki0047075b-MAL-ED     (42.4-49.2]          NA                0.0590062   0.0332611   0.0847514
9 months    ki0047075b-MAL-ED     (49.2-59.3]          NA                0.0378913   0.0226974   0.0530851
9 months    ki0047075b-MAL-ED     >59.3                NA                0.0209790   0.0092308   0.0327272
12 months   ki0047075b-MAL-ED     <=42.4               NA                0.1526718   0.0910616   0.2142820
12 months   ki0047075b-MAL-ED     (42.4-49.2]          NA                0.1041009   0.0704722   0.1377297
12 months   ki0047075b-MAL-ED     (49.2-59.3]          NA                0.0536013   0.0355287   0.0716739
12 months   ki0047075b-MAL-ED     >59.3                NA                0.0301418   0.0160268   0.0442569
12 months   ki1017093-NIH-Birth   <=42.4               NA                0.1884058   0.1230976   0.2537140
12 months   ki1017093-NIH-Birth   (42.4-49.2]          NA                0.0687500   0.0295036   0.1079964
12 months   ki1017093-NIH-Birth   (49.2-59.3]          NA                0.0422535   0.0091325   0.0753745
12 months   ki1017093-NIH-Birth   >59.3                NA                0.0980392   0.0163435   0.1797350
12 months   ki1126311-ZVITAMBO    <=42.4               NA                0.4166667   0.1376420   0.6956913
12 months   ki1126311-ZVITAMBO    (42.4-49.2]          NA                0.1191710   0.0734482   0.1648938
12 months   ki1126311-ZVITAMBO    (49.2-59.3]          NA                0.0689655   0.0501345   0.0877966
12 months   ki1126311-ZVITAMBO    >59.3                NA                0.0337382   0.0207341   0.0467423
18 months   ki0047075b-MAL-ED     <=42.4               NA                0.2400000   0.1651061   0.3148939
18 months   ki0047075b-MAL-ED     (42.4-49.2]          NA                0.1693811   0.1274097   0.2113525
18 months   ki0047075b-MAL-ED     (49.2-59.3]          NA                0.1149826   0.0888775   0.1410877
18 months   ki0047075b-MAL-ED     >59.3                NA                0.0692884   0.0477429   0.0908339
18 months   ki1017093-NIH-Birth   <=42.4               NA                0.3203125   0.2393928   0.4012322
18 months   ki1017093-NIH-Birth   (42.4-49.2]          NA                0.2077922   0.1436430   0.2719414
18 months   ki1017093-NIH-Birth   (49.2-59.3]          NA                0.1578947   0.0958566   0.2199329
18 months   ki1017093-NIH-Birth   >59.3                NA                0.1458333   0.0458801   0.2457865
24 months   ki0047075b-MAL-ED     <=42.4               NA                0.2735043   0.1927063   0.3543022
24 months   ki0047075b-MAL-ED     (42.4-49.2]          NA                0.1593220   0.1175451   0.2010989
24 months   ki0047075b-MAL-ED     (49.2-59.3]          NA                0.1167883   0.0898893   0.1436873
24 months   ki0047075b-MAL-ED     >59.3                NA                0.0554493   0.0358291   0.0750696
24 months   ki1017093-NIH-Birth   <=42.4               NA                0.3414634   0.2575630   0.4253639
24 months   ki1017093-NIH-Birth   (42.4-49.2]          NA                0.1901408   0.1255229   0.2547588
24 months   ki1017093-NIH-Birth   (49.2-59.3]          NA                0.1344538   0.0730899   0.1958177
24 months   ki1017093-NIH-Birth   >59.3                NA                0.1777778   0.0659417   0.2896139


### Parameter: E(Y)


agecat      studyid               intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     NA                   NA                0.0294737   0.0287769   0.0301704
3 months    ki0047075b-MAL-ED     NA                   NA                0.0369528   0.0360252   0.0378805
3 months    ki1126311-ZVITAMBO    NA                   NA                0.0513183   0.0498184   0.0528181
6 months    ki0047075b-MAL-ED     NA                   NA                0.0296209   0.0285158   0.0307259
9 months    ki0047075b-MAL-ED     NA                   NA                0.0440906   0.0426083   0.0455730
12 months   ki0047075b-MAL-ED     NA                   NA                0.0633934   0.0615655   0.0652213
12 months   ki1017093-NIH-Birth   NA                   NA                0.0977597   0.0925405   0.1029789
12 months   ki1126311-ZVITAMBO    NA                   NA                0.0615104   0.0595247   0.0634960
18 months   ki0047075b-MAL-ED     NA                   NA                0.1201299   0.1176040   0.1226558
18 months   ki1017093-NIH-Birth   NA                   NA                0.2181425   0.2120214   0.2242637
24 months   ki0047075b-MAL-ED     NA                   NA                0.1159811   0.1129163   0.1190459
24 months   ki1017093-NIH-Birth   NA                   NA                0.2167832   0.2090102   0.2245562


### Parameter: RR


agecat      studyid               intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     (42.4-49.2]          <=42.4            0.5529740   0.2237857   1.3663973
Birth       ki0047075b-MAL-ED     (49.2-59.3]          <=42.4            0.4217864   0.1830022   0.9721398
Birth       ki0047075b-MAL-ED     >59.3                <=42.4            0.2635335   0.1038175   0.6689611
3 months    ki0047075b-MAL-ED     (42.4-49.2]          <=42.4            0.6129032   0.3110995   1.2074925
3 months    ki0047075b-MAL-ED     (49.2-59.3]          <=42.4            0.2872504   0.1427485   0.5780292
3 months    ki0047075b-MAL-ED     >59.3                <=42.4            0.2820513   0.1387906   0.5731865
3 months    ki1126311-ZVITAMBO    (42.4-49.2]          <=42.4            0.4727273   0.2039310   1.0958173
3 months    ki1126311-ZVITAMBO    (49.2-59.3]          <=42.4            0.2455357   0.1101832   0.5471595
3 months    ki1126311-ZVITAMBO    >59.3                <=42.4            0.0931174   0.0394015   0.2200641
6 months    ki0047075b-MAL-ED     (42.4-49.2]          <=42.4            0.3826840   0.1847462   0.7926932
6 months    ki0047075b-MAL-ED     (49.2-59.3]          <=42.4            0.1853282   0.0876603   0.3918140
6 months    ki0047075b-MAL-ED     >59.3                <=42.4            0.1801975   0.0836327   0.3882589
9 months    ki0047075b-MAL-ED     (42.4-49.2]          <=42.4            0.4327122   0.2345969   0.7981345
9 months    ki0047075b-MAL-ED     (49.2-59.3]          <=42.4            0.2778693   0.1544084   0.5000465
9 months    ki0047075b-MAL-ED     >59.3                <=42.4            0.1538462   0.0759629   0.3115814
12 months   ki0047075b-MAL-ED     (42.4-49.2]          <=42.4            0.6818612   0.4066317   1.1433804
12 months   ki0047075b-MAL-ED     (49.2-59.3]          <=42.4            0.3510888   0.2075093   0.5940134
12 months   ki0047075b-MAL-ED     >59.3                <=42.4            0.1974291   0.1063996   0.3663382
12 months   ki1017093-NIH-Birth   (42.4-49.2]          <=42.4            0.3649038   0.1871248   0.7115830
12 months   ki1017093-NIH-Birth   (49.2-59.3]          <=42.4            0.2242687   0.0951788   0.5284415
12 months   ki1017093-NIH-Birth   >59.3                <=42.4            0.5203620   0.2110312   1.2831115
12 months   ki1126311-ZVITAMBO    (42.4-49.2]          <=42.4            0.2860104   0.1321906   0.6188179
12 months   ki1126311-ZVITAMBO    (49.2-59.3]          <=42.4            0.1655172   0.0803095   0.3411296
12 months   ki1126311-ZVITAMBO    >59.3                <=42.4            0.0809717   0.0373912   0.1753462
18 months   ki0047075b-MAL-ED     (42.4-49.2]          <=42.4            0.7057546   0.4738040   1.0512565
18 months   ki0047075b-MAL-ED     (49.2-59.3]          <=42.4            0.4790941   0.3257039   0.7047233
18 months   ki0047075b-MAL-ED     >59.3                <=42.4            0.2887016   0.1858346   0.4485097
18 months   ki1017093-NIH-Birth   (42.4-49.2]          <=42.4            0.6487171   0.4353233   0.9667159
18 months   ki1017093-NIH-Birth   (49.2-59.3]          <=42.4            0.4929397   0.3089782   0.7864293
18 months   ki1017093-NIH-Birth   >59.3                <=42.4            0.4552846   0.2193029   0.9451951
24 months   ki0047075b-MAL-ED     (42.4-49.2]          <=42.4            0.5825212   0.3924309   0.8646897
24 months   ki0047075b-MAL-ED     (49.2-59.3]          <=42.4            0.4270073   0.2935970   0.6210393
24 months   ki0047075b-MAL-ED     >59.3                <=42.4            0.2027366   0.1278628   0.3214550
24 months   ki1017093-NIH-Birth   (42.4-49.2]          <=42.4            0.5568410   0.3661037   0.8469513
24 months   ki1017093-NIH-Birth   (49.2-59.3]          <=42.4            0.3937575   0.2344877   0.6612073
24 months   ki1017093-NIH-Birth   >59.3                <=42.4            0.5206349   0.2649891   1.0229128


### Parameter: PAR


agecat      studyid               intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     <=42.4               NA                -0.0377532   -0.0827663    0.0072599
3 months    ki0047075b-MAL-ED     <=42.4               NA                -0.0539563   -0.1010969   -0.0068157
3 months    ki1126311-ZVITAMBO    <=42.4               NA                -0.1986817   -0.3885050   -0.0088584
6 months    ki0047075b-MAL-ED     <=42.4               NA                -0.0733203   -0.1244195   -0.0222211
9 months    ki0047075b-MAL-ED     <=42.4               NA                -0.0922730   -0.1508528   -0.0336932
12 months   ki0047075b-MAL-ED     <=42.4               NA                -0.0892783   -0.1509157   -0.0276410
12 months   ki1017093-NIH-Birth   <=42.4               NA                -0.0906461   -0.1561626   -0.0251297
12 months   ki1126311-ZVITAMBO    <=42.4               NA                -0.3551563   -0.6341880   -0.0761246
18 months   ki0047075b-MAL-ED     <=42.4               NA                -0.1198701   -0.1948066   -0.0449336
18 months   ki1017093-NIH-Birth   <=42.4               NA                -0.1021700   -0.1833208   -0.0210191
24 months   ki0047075b-MAL-ED     <=42.4               NA                -0.1575232   -0.2383792   -0.0766671
24 months   ki1017093-NIH-Birth   <=42.4               NA                -0.1246802   -0.2089400   -0.0404204


### Parameter: PAF


agecat      studyid               intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     <=42.4               NA                -1.2809123    -3.457027   -0.1672717
3 months    ki0047075b-MAL-ED     <=42.4               NA                -1.4601399    -3.134108   -0.4639888
3 months    ki1126311-ZVITAMBO    <=42.4               NA                -3.8715596    -9.414988   -1.2786480
6 months    ki0047075b-MAL-ED     <=42.4               NA                -2.4752941    -4.716492   -1.1127764
9 months    ki0047075b-MAL-ED     <=42.4               NA                -2.0928030    -3.758058   -1.0103646
12 months   ki0047075b-MAL-ED     <=42.4               NA                -1.4083221    -2.609271   -0.6069768
12 months   ki1017093-NIH-Birth   <=42.4               NA                -0.9272343    -1.736854   -0.3571172
12 months   ki1126311-ZVITAMBO    <=42.4               NA                -5.7739274   -12.243644   -2.4647634
18 months   ki0047075b-MAL-ED     <=42.4               NA                -0.9978378    -1.731446   -0.4612613
18 months   ki1017093-NIH-Birth   <=42.4               NA                -0.4683632    -0.893315   -0.1387913
24 months   ki0047075b-MAL-ED     <=42.4               NA                -1.3581793    -2.172395   -0.7529374
24 months   ki1017093-NIH-Birth   <=42.4               NA                -0.5751377    -1.019104   -0.2287922


