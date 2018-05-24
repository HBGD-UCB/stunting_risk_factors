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
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/21139556-5005-4071-ba74-a4bcda375a5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/21139556-5005-4071-ba74-a4bcda375a5e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/21139556-5005-4071-ba74-a4bcda375a5e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/21139556-5005-4071-ba74-a4bcda375a5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                 n     nA   nAY0   nAY1
----------  -------------------------  ------------  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          <=42.4         1425    119     91     28
Birth       ki0047075b-MAL-ED          (42.4-49.2]    1425    269    219     50
Birth       ki0047075b-MAL-ED          (49.2-59.3]    1425    529    470     59
Birth       ki0047075b-MAL-ED          >59.3          1425    508    460     48
Birth       ki1017093-NIH-Birth        <=42.4           28     12     12      0
Birth       ki1017093-NIH-Birth        (42.4-49.2]      28      9      8      1
Birth       ki1017093-NIH-Birth        (49.2-59.3]      28      7      7      0
Birth       ki1017093-NIH-Birth        >59.3            28      0      0      0
Birth       ki1017093b-PROVIDE         <=42.4            0      0      0      0
Birth       ki1017093b-PROVIDE         (42.4-49.2]       0      0      0      0
Birth       ki1017093b-PROVIDE         (49.2-59.3]       0      0      0      0
Birth       ki1017093b-PROVIDE         >59.3             0      0      0      0
Birth       ki1017093c-NIH-Crypto      <=42.4           27      8      6      2
Birth       ki1017093c-NIH-Crypto      (42.4-49.2]      27      9      7      2
Birth       ki1017093c-NIH-Crypto      (49.2-59.3]      27      7      6      1
Birth       ki1017093c-NIH-Crypto      >59.3            27      3      3      0
Birth       ki1066203-TanzaniaChild2   <=42.4            0      0      0      0
Birth       ki1066203-TanzaniaChild2   (42.4-49.2]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (49.2-59.3]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   >59.3             0      0      0      0
Birth       ki1126311-ZVITAMBO         <=42.4         2710     28     24      4
Birth       ki1126311-ZVITAMBO         (42.4-49.2]    2710    300    262     38
Birth       ki1126311-ZVITAMBO         (49.2-59.3]    2710   1138    987    151
Birth       ki1126311-ZVITAMBO         >59.3          2710   1244   1168     76
Birth       ki1148112-LCNI-5           <=42.4            0      0      0      0
Birth       ki1148112-LCNI-5           (42.4-49.2]       0      0      0      0
Birth       ki1148112-LCNI-5           (49.2-59.3]       0      0      0      0
Birth       ki1148112-LCNI-5           >59.3             0      0      0      0
3 months    ki0047075b-MAL-ED          <=42.4         1759    143    108     35
3 months    ki0047075b-MAL-ED          (42.4-49.2]    1759    341    273     68
3 months    ki0047075b-MAL-ED          (49.2-59.3]    1759    651    561     90
3 months    ki0047075b-MAL-ED          >59.3          1759    624    546     78
3 months    ki1017093-NIH-Birth        <=42.4          570    153    102     51
3 months    ki1017093-NIH-Birth        (42.4-49.2]     570    191    154     37
3 months    ki1017093-NIH-Birth        (49.2-59.3]     570    167    136     31
3 months    ki1017093-NIH-Birth        >59.3           570     59     48     11
3 months    ki1017093b-PROVIDE         <=42.4          168     41     32      9
3 months    ki1017093b-PROVIDE         (42.4-49.2]     168     45     40      5
3 months    ki1017093b-PROVIDE         (49.2-59.3]     168     56     52      4
3 months    ki1017093b-PROVIDE         >59.3           168     26     24      2
3 months    ki1017093c-NIH-Crypto      <=42.4          728    102     71     31
3 months    ki1017093c-NIH-Crypto      (42.4-49.2]     728    219    164     55
3 months    ki1017093c-NIH-Crypto      (49.2-59.3]     728    260    206     54
3 months    ki1017093c-NIH-Crypto      >59.3           728    147    131     16
3 months    ki1066203-TanzaniaChild2   <=42.4          566      5      5      0
3 months    ki1066203-TanzaniaChild2   (42.4-49.2]     566     55     48      7
3 months    ki1066203-TanzaniaChild2   (49.2-59.3]     566    211    192     19
3 months    ki1066203-TanzaniaChild2   >59.3           566    295    282     13
3 months    ki1126311-ZVITAMBO         <=42.4         2124     20     10     10
3 months    ki1126311-ZVITAMBO         (42.4-49.2]    2124    220    148     72
3 months    ki1126311-ZVITAMBO         (49.2-59.3]    2124    896    719    177
3 months    ki1126311-ZVITAMBO         >59.3          2124    988    884    104
3 months    ki1148112-LCNI-5           <=42.4            0      0      0      0
3 months    ki1148112-LCNI-5           (42.4-49.2]       0      0      0      0
3 months    ki1148112-LCNI-5           (49.2-59.3]       0      0      0      0
3 months    ki1148112-LCNI-5           >59.3             0      0      0      0
6 months    ki0047075b-MAL-ED          <=42.4         1688    136    100     36
6 months    ki0047075b-MAL-ED          (42.4-49.2]    1688    330    258     72
6 months    ki0047075b-MAL-ED          (49.2-59.3]    1688    629    532     97
6 months    ki0047075b-MAL-ED          >59.3          1688    593    522     71
6 months    ki1017093-NIH-Birth        <=42.4          537    149     84     65
6 months    ki1017093-NIH-Birth        (42.4-49.2]     537    179    139     40
6 months    ki1017093-NIH-Birth        (49.2-59.3]     537    152    123     29
6 months    ki1017093-NIH-Birth        >59.3           537     57     47     10
6 months    ki1017093b-PROVIDE         <=42.4          153     38     28     10
6 months    ki1017093b-PROVIDE         (42.4-49.2]     153     40     32      8
6 months    ki1017093b-PROVIDE         (49.2-59.3]     153     50     43      7
6 months    ki1017093b-PROVIDE         >59.3           153     25     22      3
6 months    ki1017093c-NIH-Crypto      <=42.4          715    101     66     35
6 months    ki1017093c-NIH-Crypto      (42.4-49.2]     715    217    167     50
6 months    ki1017093c-NIH-Crypto      (49.2-59.3]     715    250    203     47
6 months    ki1017093c-NIH-Crypto      >59.3           715    147    129     18
6 months    ki1066203-TanzaniaChild2   <=42.4          496      5      5      0
6 months    ki1066203-TanzaniaChild2   (42.4-49.2]     496     46     41      5
6 months    ki1066203-TanzaniaChild2   (49.2-59.3]     496    185    166     19
6 months    ki1066203-TanzaniaChild2   >59.3           496    260    239     21
6 months    ki1126311-ZVITAMBO         <=42.4         1968     17      8      9
6 months    ki1126311-ZVITAMBO         (42.4-49.2]    1968    208    145     63
6 months    ki1126311-ZVITAMBO         (49.2-59.3]    1968    821    673    148
6 months    ki1126311-ZVITAMBO         >59.3          1968    922    821    101
6 months    ki1148112-LCNI-5           <=42.4          416     36     13     23
6 months    ki1148112-LCNI-5           (42.4-49.2]     416    153     91     62
6 months    ki1148112-LCNI-5           (49.2-59.3]     416    184    126     58
6 months    ki1148112-LCNI-5           >59.3           416     43     32     11
9 months    ki0047075b-MAL-ED          <=42.4         1633    132     89     43
9 months    ki0047075b-MAL-ED          (42.4-49.2]    1633    322    239     83
9 months    ki0047075b-MAL-ED          (49.2-59.3]    1633    607    479    128
9 months    ki0047075b-MAL-ED          >59.3          1633    572    488     84
9 months    ki1017093-NIH-Birth        <=42.4          507    142     73     69
9 months    ki1017093-NIH-Birth        (42.4-49.2]     507    164    108     56
9 months    ki1017093-NIH-Birth        (49.2-59.3]     507    146    101     45
9 months    ki1017093-NIH-Birth        >59.3           507     55     44     11
9 months    ki1017093b-PROVIDE         <=42.4          158     39     20     19
9 months    ki1017093b-PROVIDE         (42.4-49.2]     158     41     32      9
9 months    ki1017093b-PROVIDE         (49.2-59.3]     158     52     46      6
9 months    ki1017093b-PROVIDE         >59.3           158     26     23      3
9 months    ki1017093c-NIH-Crypto      <=42.4          706    101     61     40
9 months    ki1017093c-NIH-Crypto      (42.4-49.2]     706    214    158     56
9 months    ki1017093c-NIH-Crypto      (49.2-59.3]     706    246    195     51
9 months    ki1017093c-NIH-Crypto      >59.3           706    145    128     17
9 months    ki1066203-TanzaniaChild2   <=42.4          426      5      4      1
9 months    ki1066203-TanzaniaChild2   (42.4-49.2]     426     42     35      7
9 months    ki1066203-TanzaniaChild2   (49.2-59.3]     426    152    127     25
9 months    ki1066203-TanzaniaChild2   >59.3           426    227    197     30
9 months    ki1126311-ZVITAMBO         <=42.4         1871     15      8      7
9 months    ki1126311-ZVITAMBO         (42.4-49.2]    1871    204    136     68
9 months    ki1126311-ZVITAMBO         (49.2-59.3]    1871    794    621    173
9 months    ki1126311-ZVITAMBO         >59.3          1871    858    740    118
9 months    ki1148112-LCNI-5           <=42.4          321     28     11     17
9 months    ki1148112-LCNI-5           (42.4-49.2]     321    116     75     41
9 months    ki1148112-LCNI-5           (49.2-59.3]     321    147    112     35
9 months    ki1148112-LCNI-5           >59.3           321     30     22      8
12 months   ki0047075b-MAL-ED          <=42.4         1609    131     79     52
12 months   ki0047075b-MAL-ED          (42.4-49.2]    1609    317    206    111
12 months   ki0047075b-MAL-ED          (49.2-59.3]    1609    597    436    161
12 months   ki0047075b-MAL-ED          >59.3          1609    564    454    110
12 months   ki1017093-NIH-Birth        <=42.4          491    138     60     78
12 months   ki1017093-NIH-Birth        (42.4-49.2]     491    160    100     60
12 months   ki1017093-NIH-Birth        (49.2-59.3]     491    142    106     36
12 months   ki1017093-NIH-Birth        >59.3           491     51     41     10
12 months   ki1017093b-PROVIDE         <=42.4          153     37     16     21
12 months   ki1017093b-PROVIDE         (42.4-49.2]     153     39     26     13
12 months   ki1017093b-PROVIDE         (49.2-59.3]     153     51     44      7
12 months   ki1017093b-PROVIDE         >59.3           153     26     23      3
12 months   ki1017093c-NIH-Crypto      <=42.4          706     97     58     39
12 months   ki1017093c-NIH-Crypto      (42.4-49.2]     706    218    160     58
12 months   ki1017093c-NIH-Crypto      (49.2-59.3]     706    248    193     55
12 months   ki1017093c-NIH-Crypto      >59.3           706    143    124     19
12 months   ki1066203-TanzaniaChild2   <=42.4          349      4      4      0
12 months   ki1066203-TanzaniaChild2   (42.4-49.2]     349     34     25      9
12 months   ki1066203-TanzaniaChild2   (49.2-59.3]     349    132    112     20
12 months   ki1066203-TanzaniaChild2   >59.3           349    179    156     23
12 months   ki1126311-ZVITAMBO         <=42.4         1642     12      5      7
12 months   ki1126311-ZVITAMBO         (42.4-49.2]    1642    193    112     81
12 months   ki1126311-ZVITAMBO         (49.2-59.3]    1642    696    514    182
12 months   ki1126311-ZVITAMBO         >59.3          1642    741    619    122
12 months   ki1148112-LCNI-5           <=42.4          310     27      9     18
12 months   ki1148112-LCNI-5           (42.4-49.2]     310    116     62     54
12 months   ki1148112-LCNI-5           (49.2-59.3]     310    138     90     48
12 months   ki1148112-LCNI-5           >59.3           310     29     22      7
18 months   ki0047075b-MAL-ED          <=42.4         1540    125     50     75
18 months   ki0047075b-MAL-ED          (42.4-49.2]    1540    307    152    155
18 months   ki0047075b-MAL-ED          (49.2-59.3]    1540    574    349    225
18 months   ki0047075b-MAL-ED          >59.3          1540    534    394    140
18 months   ki1017093-NIH-Birth        <=42.4          463    128     27    101
18 months   ki1017093-NIH-Birth        (42.4-49.2]     463    154     65     89
18 months   ki1017093-NIH-Birth        (49.2-59.3]     463    133     68     65
18 months   ki1017093-NIH-Birth        >59.3           463     48     31     17
18 months   ki1017093b-PROVIDE         <=42.4          141     35     13     22
18 months   ki1017093b-PROVIDE         (42.4-49.2]     141     34     19     15
18 months   ki1017093b-PROVIDE         (49.2-59.3]     141     48     38     10
18 months   ki1017093b-PROVIDE         >59.3           141     24     19      5
18 months   ki1017093c-NIH-Crypto      <=42.4          634     91     47     44
18 months   ki1017093c-NIH-Crypto      (42.4-49.2]     634    193    131     62
18 months   ki1017093c-NIH-Crypto      (49.2-59.3]     634    218    154     64
18 months   ki1017093c-NIH-Crypto      >59.3           634    132    111     21
18 months   ki1066203-TanzaniaChild2   <=42.4          254      4      3      1
18 months   ki1066203-TanzaniaChild2   (42.4-49.2]     254     26     13     13
18 months   ki1066203-TanzaniaChild2   (49.2-59.3]     254     85     59     26
18 months   ki1066203-TanzaniaChild2   >59.3           254    139    112     27
18 months   ki1126311-ZVITAMBO         <=42.4          401      2      1      1
18 months   ki1126311-ZVITAMBO         (42.4-49.2]     401     70     24     46
18 months   ki1126311-ZVITAMBO         (49.2-59.3]     401    178     92     86
18 months   ki1126311-ZVITAMBO         >59.3           401    151     92     59
18 months   ki1148112-LCNI-5           <=42.4          356     28      7     21
18 months   ki1148112-LCNI-5           (42.4-49.2]     356    135     57     78
18 months   ki1148112-LCNI-5           (49.2-59.3]     356    159     95     64
18 months   ki1148112-LCNI-5           >59.3           356     34     22     12
24 months   ki0047075b-MAL-ED          <=42.4         1483    117     49     68
24 months   ki0047075b-MAL-ED          (42.4-49.2]    1483    295    152    143
24 months   ki0047075b-MAL-ED          (49.2-59.3]    1483    548    331    217
24 months   ki0047075b-MAL-ED          >59.3          1483    523    395    128
24 months   ki1017093-NIH-Birth        <=42.4          429    123     32     91
24 months   ki1017093-NIH-Birth        (42.4-49.2]     429    142     65     77
24 months   ki1017093-NIH-Birth        (49.2-59.3]     429    119     63     56
24 months   ki1017093-NIH-Birth        >59.3           429     45     31     14
24 months   ki1017093b-PROVIDE         <=42.4          149     37     16     21
24 months   ki1017093b-PROVIDE         (42.4-49.2]     149     37     21     16
24 months   ki1017093b-PROVIDE         (49.2-59.3]     149     50     40     10
24 months   ki1017093b-PROVIDE         >59.3           149     25     23      2
24 months   ki1017093c-NIH-Crypto      <=42.4          514     66     37     29
24 months   ki1017093c-NIH-Crypto      (42.4-49.2]     514    160    108     52
24 months   ki1017093c-NIH-Crypto      (49.2-59.3]     514    180    143     37
24 months   ki1017093c-NIH-Crypto      >59.3           514    108     94     14
24 months   ki1066203-TanzaniaChild2   <=42.4            2      0      0      0
24 months   ki1066203-TanzaniaChild2   (42.4-49.2]       2      1      1      0
24 months   ki1066203-TanzaniaChild2   (49.2-59.3]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   >59.3             2      1      1      0
24 months   ki1126311-ZVITAMBO         <=42.4          112      1      1      0
24 months   ki1126311-ZVITAMBO         (42.4-49.2]     112     21      2     19
24 months   ki1126311-ZVITAMBO         (49.2-59.3]     112     46     16     30
24 months   ki1126311-ZVITAMBO         >59.3           112     44     26     18
24 months   ki1148112-LCNI-5           <=42.4          297     25     11     14
24 months   ki1148112-LCNI-5           (42.4-49.2]     297    103     45     58
24 months   ki1148112-LCNI-5           (49.2-59.3]     297    138     84     54
24 months   ki1148112-LCNI-5           >59.3           297     31     26      5

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       <=42.4               NA                0.2352941   0.1590547   0.3115336
Birth       ki0047075b-MAL-ED       (42.4-49.2]          NA                0.1858736   0.1393708   0.2323764
Birth       ki0047075b-MAL-ED       (49.2-59.3]          NA                0.1115312   0.0846968   0.1383656
Birth       ki0047075b-MAL-ED       >59.3                NA                0.0944882   0.0690431   0.1199333
3 months    ki0047075b-MAL-ED       <=42.4               NA                0.2447552   0.1742675   0.3152430
3 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                0.1994135   0.1569930   0.2418340
3 months    ki0047075b-MAL-ED       (49.2-59.3]          NA                0.1382488   0.1117271   0.1647706
3 months    ki0047075b-MAL-ED       >59.3                NA                0.1250000   0.0990440   0.1509560
3 months    ki1017093-NIH-Birth     <=42.4               NA                0.3333333   0.2585719   0.4080947
3 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                0.1937173   0.1376202   0.2498144
3 months    ki1017093-NIH-Birth     (49.2-59.3]          NA                0.1856287   0.1266080   0.2446495
3 months    ki1017093-NIH-Birth     >59.3                NA                0.1864407   0.0869761   0.2859052
3 months    ki1017093c-NIH-Crypto   <=42.4               NA                0.3039216   0.2146000   0.3932431
3 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.2511416   0.1936659   0.3086172
3 months    ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.2076923   0.1583503   0.2570343
3 months    ki1017093c-NIH-Crypto   >59.3                NA                0.1088435   0.0584626   0.1592245
3 months    ki1126311-ZVITAMBO      <=42.4               NA                0.5000000   0.2808178   0.7191822
3 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.3272727   0.2652553   0.3892901
3 months    ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.1975446   0.1714687   0.2236205
3 months    ki1126311-ZVITAMBO      >59.3                NA                0.1052632   0.0861225   0.1244039
6 months    ki0047075b-MAL-ED       <=42.4               NA                0.2647059   0.1905374   0.3388744
6 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                0.2181818   0.1736078   0.2627559
6 months    ki0047075b-MAL-ED       (49.2-59.3]          NA                0.1542130   0.1259810   0.1824451
6 months    ki0047075b-MAL-ED       >59.3                NA                0.1197302   0.0935930   0.1458674
6 months    ki1017093-NIH-Birth     <=42.4               NA                0.4362416   0.3565395   0.5159437
6 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                0.2234637   0.1623820   0.2845453
6 months    ki1017093-NIH-Birth     (49.2-59.3]          NA                0.1907895   0.1282666   0.2533124
6 months    ki1017093-NIH-Birth     >59.3                NA                0.1754386   0.0766084   0.2742688
6 months    ki1017093c-NIH-Crypto   <=42.4               NA                0.3465347   0.2536645   0.4394048
6 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.2304147   0.1743480   0.2864815
6 months    ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.1880000   0.1395338   0.2364662
6 months    ki1017093c-NIH-Crypto   >59.3                NA                0.1224490   0.0694208   0.1754772
6 months    ki1126311-ZVITAMBO      <=42.4               NA                0.5294118   0.2920825   0.7667410
6 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.3028846   0.2404223   0.3653469
6 months    ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.1802680   0.1539664   0.2065696
6 months    ki1126311-ZVITAMBO      >59.3                NA                0.1095445   0.0893796   0.1297093
6 months    ki1148112-LCNI-5        <=42.4               NA                0.6388889   0.4817974   0.7959803
6 months    ki1148112-LCNI-5        (42.4-49.2]          NA                0.4052288   0.3273444   0.4831131
6 months    ki1148112-LCNI-5        (49.2-59.3]          NA                0.3152174   0.2480059   0.3824288
6 months    ki1148112-LCNI-5        >59.3                NA                0.2558140   0.1252452   0.3863827
9 months    ki0047075b-MAL-ED       <=42.4               NA                0.3257576   0.2457835   0.4057317
9 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                0.2577640   0.2099742   0.3055538
9 months    ki0047075b-MAL-ED       (49.2-59.3]          NA                0.2108731   0.1784115   0.2433348
9 months    ki0047075b-MAL-ED       >59.3                NA                0.1468531   0.1178372   0.1758691
9 months    ki1017093-NIH-Birth     <=42.4               NA                0.4859155   0.4036287   0.5682023
9 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                0.3414634   0.2688165   0.4141103
9 months    ki1017093-NIH-Birth     (49.2-59.3]          NA                0.3082192   0.2332445   0.3831938
9 months    ki1017093-NIH-Birth     >59.3                NA                0.2000000   0.0941830   0.3058170
9 months    ki1017093c-NIH-Crypto   <=42.4               NA                0.3960396   0.3005912   0.4914880
9 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.2616822   0.2027493   0.3206151
9 months    ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.2073171   0.1566232   0.2580110
9 months    ki1017093c-NIH-Crypto   >59.3                NA                0.1172414   0.0648411   0.1696416
9 months    ki1126311-ZVITAMBO      <=42.4               NA                0.4666667   0.2141318   0.7192015
9 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.3333333   0.2686276   0.3980391
9 months    ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.2178841   0.1891630   0.2466053
9 months    ki1126311-ZVITAMBO      >59.3                NA                0.1375291   0.1144781   0.1605802
9 months    ki1148112-LCNI-5        <=42.4               NA                0.6071429   0.4259632   0.7883225
9 months    ki1148112-LCNI-5        (42.4-49.2]          NA                0.3534483   0.2663196   0.4405770
9 months    ki1148112-LCNI-5        (49.2-59.3]          NA                0.2380952   0.1691360   0.3070545
9 months    ki1148112-LCNI-5        >59.3                NA                0.2666667   0.1081773   0.4251560
12 months   ki0047075b-MAL-ED       <=42.4               NA                0.3969466   0.3131374   0.4807557
12 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                0.3501577   0.2976299   0.4026855
12 months   ki0047075b-MAL-ED       (49.2-59.3]          NA                0.2696817   0.2340713   0.3052922
12 months   ki0047075b-MAL-ED       >59.3                NA                0.1950355   0.1623248   0.2277461
12 months   ki1017093-NIH-Birth     <=42.4               NA                0.5652174   0.4824241   0.6480107
12 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                0.3750000   0.2999092   0.4500908
12 months   ki1017093-NIH-Birth     (49.2-59.3]          NA                0.2535211   0.1818965   0.3251458
12 months   ki1017093-NIH-Birth     >59.3                NA                0.1960784   0.0870029   0.3051540
12 months   ki1017093c-NIH-Crypto   <=42.4               NA                0.4020619   0.3044181   0.4997056
12 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.2660550   0.2073541   0.3247560
12 months   ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.2217742   0.1700328   0.2735156
12 months   ki1017093c-NIH-Crypto   >59.3                NA                0.1328671   0.0771948   0.1885395
12 months   ki1126311-ZVITAMBO      <=42.4               NA                0.5833333   0.3043087   0.8623580
12 months   ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.4196891   0.3500432   0.4893351
12 months   ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.2614943   0.2288367   0.2941518
12 months   ki1126311-ZVITAMBO      >59.3                NA                0.1646424   0.1379321   0.1913526
12 months   ki1148112-LCNI-5        <=42.4               NA                0.6666667   0.4885676   0.8447657
12 months   ki1148112-LCNI-5        (42.4-49.2]          NA                0.4655172   0.3745981   0.5564364
12 months   ki1148112-LCNI-5        (49.2-59.3]          NA                0.3478261   0.2682334   0.4274187
12 months   ki1148112-LCNI-5        >59.3                NA                0.2413793   0.0853835   0.3973752
18 months   ki0047075b-MAL-ED       <=42.4               NA                0.6000000   0.5140908   0.6859092
18 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                0.5048860   0.4489400   0.5608320
18 months   ki0047075b-MAL-ED       (49.2-59.3]          NA                0.3919861   0.3520353   0.4319368
18 months   ki0047075b-MAL-ED       >59.3                NA                0.2621723   0.2248568   0.2994878
18 months   ki1017093-NIH-Birth     <=42.4               NA                0.7890625   0.7183094   0.8598156
18 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                0.5779221   0.4998334   0.6560108
18 months   ki1017093-NIH-Birth     (49.2-59.3]          NA                0.4887218   0.4036763   0.5737673
18 months   ki1017093-NIH-Birth     >59.3                NA                0.3541667   0.2187223   0.4896111
18 months   ki1017093b-PROVIDE      <=42.4               NA                0.6285714   0.4679237   0.7892192
18 months   ki1017093b-PROVIDE      (42.4-49.2]          NA                0.4411765   0.2736831   0.6086699
18 months   ki1017093b-PROVIDE      (49.2-59.3]          NA                0.2083333   0.0930349   0.3236318
18 months   ki1017093b-PROVIDE      >59.3                NA                0.2083333   0.0452767   0.3713900
18 months   ki1017093c-NIH-Crypto   <=42.4               NA                0.4835165   0.3807612   0.5862717
18 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.3212435   0.2553130   0.3871740
18 months   ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.2935780   0.2330778   0.3540781
18 months   ki1017093c-NIH-Crypto   >59.3                NA                0.1590909   0.0966454   0.2215364
18 months   ki1148112-LCNI-5        <=42.4               NA                0.7500000   0.5893871   0.9106129
18 months   ki1148112-LCNI-5        (42.4-49.2]          NA                0.5777778   0.4943438   0.6612118
18 months   ki1148112-LCNI-5        (49.2-59.3]          NA                0.4025157   0.3261823   0.4788492
18 months   ki1148112-LCNI-5        >59.3                NA                0.3529412   0.1920832   0.5137991
24 months   ki0047075b-MAL-ED       <=42.4               NA                0.5811966   0.4917697   0.6706235
24 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                0.4847458   0.4276963   0.5417952
24 months   ki0047075b-MAL-ED       (49.2-59.3]          NA                0.3959854   0.3550247   0.4369461
24 months   ki0047075b-MAL-ED       >59.3                NA                0.2447419   0.2078827   0.2816010
24 months   ki1017093-NIH-Birth     <=42.4               NA                0.7398374   0.6622140   0.8174608
24 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                0.5422535   0.4602138   0.6242933
24 months   ki1017093-NIH-Birth     (49.2-59.3]          NA                0.4705882   0.3808043   0.5603722
24 months   ki1017093-NIH-Birth     >59.3                NA                0.3111111   0.1756917   0.4465305
24 months   ki1017093c-NIH-Crypto   <=42.4               NA                0.4393939   0.3195393   0.5592486
24 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.3250000   0.2523552   0.3976448
24 months   ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.2055556   0.1464632   0.2646479
24 months   ki1017093c-NIH-Crypto   >59.3                NA                0.1296296   0.0662188   0.1930404
24 months   ki1148112-LCNI-5        <=42.4               NA                0.5600000   0.3650915   0.7549085
24 months   ki1148112-LCNI-5        (42.4-49.2]          NA                0.5631068   0.4671568   0.6590568
24 months   ki1148112-LCNI-5        (49.2-59.3]          NA                0.3913043   0.3097404   0.4728683
24 months   ki1148112-LCNI-5        >59.3                NA                0.1612903   0.0315994   0.2909812


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NA                   NA                0.1298246   0.1274493   0.1321998
3 months    ki0047075b-MAL-ED       NA                   NA                0.1540648   0.1522789   0.1558507
3 months    ki1017093-NIH-Birth     NA                   NA                0.2280702   0.2228239   0.2333164
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.2142857   0.2098078   0.2187637
3 months    ki1126311-ZVITAMBO      NA                   NA                0.1709040   0.1676488   0.1741591
6 months    ki0047075b-MAL-ED       NA                   NA                0.1635071   0.1613126   0.1657016
6 months    ki1017093-NIH-Birth     NA                   NA                0.2681564   0.2592325   0.2770804
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.2097902   0.2048671   0.2147133
6 months    ki1126311-ZVITAMBO      NA                   NA                0.1631098   0.1600830   0.1661365
6 months    ki1148112-LCNI-5        NA                   NA                0.3701923   0.3608701   0.3795145
9 months    ki0047075b-MAL-ED       NA                   NA                0.2069810   0.2043589   0.2096031
9 months    ki1017093-NIH-Birth     NA                   NA                0.3570020   0.3491641   0.3648399
9 months    ki1017093c-NIH-Crypto   NA                   NA                0.2322946   0.2261039   0.2384854
9 months    ki1126311-ZVITAMBO      NA                   NA                0.1956173   0.1926059   0.1986288
9 months    ki1148112-LCNI-5        NA                   NA                0.3146417   0.3031999   0.3260836
12 months   ki0047075b-MAL-ED       NA                   NA                0.2697328   0.2664366   0.2730289
12 months   ki1017093-NIH-Birth     NA                   NA                0.3747454   0.3629449   0.3865459
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.2422096   0.2363717   0.2480475
12 months   ki1126311-ZVITAMBO      NA                   NA                0.2387333   0.2345674   0.2428991
12 months   ki1148112-LCNI-5        NA                   NA                0.4096774   0.3978399   0.4215150
18 months   ki0047075b-MAL-ED       NA                   NA                0.3863636   0.3809216   0.3918057
18 months   ki1017093-NIH-Birth     NA                   NA                0.5874730   0.5746714   0.6002746
18 months   ki1017093b-PROVIDE      NA                   NA                0.3687943   0.3395528   0.3980359
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.3012618   0.2938232   0.3087004
18 months   ki1148112-LCNI-5        NA                   NA                0.4915730   0.4795096   0.5036365
24 months   ki0047075b-MAL-ED       NA                   NA                0.3749157   0.3693626   0.3804688
24 months   ki1017093-NIH-Birth     NA                   NA                0.5547786   0.5420451   0.5675120
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.2568093   0.2481357   0.2654829
24 months   ki1148112-LCNI-5        NA                   NA                0.4410774   0.4268139   0.4553410


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.7899628   0.5245918   1.1895749
Birth       ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.4740076   0.3166017   0.7096714
Birth       ki0047075b-MAL-ED       >59.3                <=42.4            0.4015748   0.2635066   0.6119860
3 months    ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.8147465   0.5695449   1.1655129
3 months    ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.5648453   0.3996197   0.7983846
3 months    ki0047075b-MAL-ED       >59.3                <=42.4            0.5107143   0.3580829   0.7284042
3 months    ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.5811518   0.4029174   0.8382300
3 months    ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.5568862   0.3773845   0.8217674
3 months    ki1017093-NIH-Birth     >59.3                <=42.4            0.5593220   0.3135646   0.9976927
3 months    ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.8263367   0.5693579   1.1993024
3 months    ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.6833747   0.4683112   0.9972022
3 months    ki1017093c-NIH-Crypto   >59.3                <=42.4            0.3581303   0.2069756   0.6196736
3 months    ki1126311-ZVITAMBO      (42.4-49.2]          <=42.4            0.6545455   0.4060074   1.0552264
3 months    ki1126311-ZVITAMBO      (49.2-59.3]          <=42.4            0.3950893   0.2499609   0.6244798
3 months    ki1126311-ZVITAMBO      >59.3                <=42.4            0.2105263   0.1309779   0.3383878
6 months    ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.8242424   0.5827165   1.1658767
6 months    ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.5825826   0.4168693   0.8141700
6 months    ki0047075b-MAL-ED       >59.3                <=42.4            0.4523140   0.3170890   0.6452068
6 months    ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.5122475   0.3687173   0.7116497
6 months    ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.4373482   0.3005261   0.6364619
6 months    ki1017093-NIH-Birth     >59.3                <=42.4            0.4021592   0.2224338   0.7271019
6 months    ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.6649111   0.4629738   0.9549283
6 months    ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.5425143   0.3740356   0.7868817
6 months    ki1017093c-NIH-Crypto   >59.3                <=42.4            0.3533528   0.2123395   0.5880119
6 months    ki1126311-ZVITAMBO      (42.4-49.2]          <=42.4            0.5721154   0.3492864   0.9370991
6 months    ki1126311-ZVITAMBO      (49.2-59.3]          <=42.4            0.3405062   0.2125121   0.5455899
6 months    ki1126311-ZVITAMBO      >59.3                <=42.4            0.2069173   0.1274480   0.3359392
6 months    ki1148112-LCNI-5        (42.4-49.2]          <=42.4            0.6342711   0.4642343   0.8665879
6 months    ki1148112-LCNI-5        (49.2-59.3]          <=42.4            0.4933837   0.3563206   0.6831700
6 months    ki1148112-LCNI-5        >59.3                <=42.4            0.4004044   0.2272229   0.7055790
9 months    ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.7912755   0.5817275   1.0763062
9 months    ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.6473315   0.4844845   0.8649155
9 months    ki0047075b-MAL-ED       >59.3                <=42.4            0.4508050   0.3289476   0.6178040
9 months    ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.7027218   0.5354143   0.9223099
9 months    ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.6343061   0.4716038   0.8531404
9 months    ki1017093-NIH-Birth     >59.3                <=42.4            0.4115942   0.2361607   0.7173495
9 months    ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.6607477   0.4750970   0.9189439
9 months    ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.5234756   0.3713553   0.7379097
9 months    ki1017093c-NIH-Crypto   >59.3                <=42.4            0.2960345   0.1781621   0.4918915
9 months    ki1126311-ZVITAMBO      (42.4-49.2]          <=42.4            0.7142857   0.4019685   1.2692637
9 months    ki1126311-ZVITAMBO      (49.2-59.3]          <=42.4            0.4668946   0.2675038   0.8149063
9 months    ki1126311-ZVITAMBO      >59.3                <=42.4            0.2947053   0.1672463   0.5193012
9 months    ki1148112-LCNI-5        (42.4-49.2]          <=42.4            0.5821501   0.3953079   0.8573032
9 months    ki1148112-LCNI-5        (49.2-59.3]          <=42.4            0.3921569   0.2587356   0.5943790
9 months    ki1148112-LCNI-5        >59.3                <=42.4            0.4392157   0.2258669   0.8540891
12 months   ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.8821281   0.6808463   1.1429158
12 months   ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.6793905   0.5296254   0.8715056
12 months   ki0047075b-MAL-ED       >59.3                <=42.4            0.4913393   0.3752129   0.6434064
12 months   ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.6634615   0.5176873   0.8502840
12 months   ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.4485374   0.3262802   0.6166042
12 months   ki1017093-NIH-Birth     >59.3                <=42.4            0.3469080   0.1951585   0.6166535
12 months   ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.6617267   0.4766286   0.9187073
12 months   ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.5515922   0.3938784   0.7724566
12 months   ki1017093c-NIH-Crypto   >59.3                <=42.4            0.3304644   0.2036083   0.5363568
12 months   ki1126311-ZVITAMBO      (42.4-49.2]          <=42.4            0.7194671   0.4336399   1.1936928
12 months   ki1126311-ZVITAMBO      (49.2-59.3]          <=42.4            0.4482759   0.2734301   0.7349274
12 months   ki1126311-ZVITAMBO      >59.3                <=42.4            0.2822441   0.1703204   0.4677169
12 months   ki1148112-LCNI-5        (42.4-49.2]          <=42.4            0.6982759   0.5015413   0.9721815
12 months   ki1148112-LCNI-5        (49.2-59.3]          <=42.4            0.5217391   0.3670190   0.7416830
12 months   ki1148112-LCNI-5        >59.3                <=42.4            0.3620690   0.1799226   0.7286128
18 months   ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.8414767   0.7021215   1.0084907
18 months   ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.6533101   0.5480138   0.7788382
18 months   ki0047075b-MAL-ED       >59.3                <=42.4            0.4369538   0.3570721   0.5347061
18 months   ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.7324161   0.6227739   0.8613613
18 months   ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.6193702   0.5092523   0.7532994
18 months   ki1017093-NIH-Birth     >59.3                <=42.4            0.4488449   0.3030430   0.6647958
18 months   ki1017093b-PROVIDE      (42.4-49.2]          <=42.4            0.7018717   0.4441173   1.1092202
18 months   ki1017093b-PROVIDE      (49.2-59.3]          <=42.4            0.3314394   0.1801607   0.6097448
18 months   ki1017093b-PROVIDE      >59.3                <=42.4            0.3314394   0.1454891   0.7550534
18 months   ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.6643900   0.4944417   0.8927525
18 months   ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.6071726   0.4515954   0.8163471
18 months   ki1017093c-NIH-Crypto   >59.3                <=42.4            0.3290289   0.2105646   0.5141415
18 months   ki1148112-LCNI-5        (42.4-49.2]          <=42.4            0.7703704   0.5950124   0.9974086
18 months   ki1148112-LCNI-5        (49.2-59.3]          <=42.4            0.5366876   0.4031735   0.7144160
18 months   ki1148112-LCNI-5        >59.3                <=42.4            0.4705882   0.2844094   0.7786426
24 months   ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.8340479   0.6871654   1.0123267
24 months   ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.6813278   0.5660254   0.8201179
24 months   ki0047075b-MAL-ED       >59.3                <=42.4            0.4211000   0.3395307   0.5222656
24 months   ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.7329361   0.6096862   0.8811013
24 months   ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.6360698   0.5116146   0.7908000
24 months   ki1017093-NIH-Birth     >59.3                <=42.4            0.4205128   0.2687366   0.6580087
24 months   ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.7396552   0.5198429   1.0524136
24 months   ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.4678161   0.3147514   0.6953167
24 months   ki1017093c-NIH-Crypto   >59.3                <=42.4            0.2950192   0.1685039   0.5165240
24 months   ki1148112-LCNI-5        (42.4-49.2]          <=42.4            1.0055479   0.6825020   1.4814996
24 months   ki1148112-LCNI-5        (49.2-59.3]          <=42.4            0.6987578   0.4657321   1.0483760
24 months   ki1148112-LCNI-5        >59.3                <=42.4            0.2880184   0.1199224   0.6917356


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       <=42.4               NA                -0.1054696   -0.1817460   -0.0291931
3 months    ki0047075b-MAL-ED       <=42.4               NA                -0.0906904   -0.1612008   -0.0201801
3 months    ki1017093-NIH-Birth     <=42.4               NA                -0.1052632   -0.1802084   -0.0303179
3 months    ki1017093c-NIH-Crypto   <=42.4               NA                -0.0896359   -0.1790696   -0.0002021
3 months    ki1126311-ZVITAMBO      <=42.4               NA                -0.3290960   -0.5483025   -0.1098896
6 months    ki0047075b-MAL-ED       <=42.4               NA                -0.1011988   -0.1753998   -0.0269978
6 months    ki1017093-NIH-Birth     <=42.4               NA                -0.1680852   -0.2482853   -0.0878851
6 months    ki1017093c-NIH-Crypto   <=42.4               NA                -0.1367444   -0.2297449   -0.0437439
6 months    ki1126311-ZVITAMBO      <=42.4               NA                -0.3663020   -0.6036506   -0.1289534
6 months    ki1148112-LCNI-5        <=42.4               NA                -0.2686966   -0.4260644   -0.1113288
9 months    ki0047075b-MAL-ED       <=42.4               NA                -0.1187766   -0.1987936   -0.0387595
9 months    ki1017093-NIH-Birth     <=42.4               NA                -0.1289135   -0.2115728   -0.0462543
9 months    ki1017093c-NIH-Crypto   <=42.4               NA                -0.1637450   -0.2593940   -0.0680960
9 months    ki1126311-ZVITAMBO      <=42.4               NA                -0.2710493   -0.5236021   -0.0184966
9 months    ki1148112-LCNI-5        <=42.4               NA                -0.2925011   -0.4740417   -0.1109606
12 months   ki0047075b-MAL-ED       <=42.4               NA                -0.1272138   -0.2110877   -0.0433399
12 months   ki1017093-NIH-Birth     <=42.4               NA                -0.1904720   -0.2741020   -0.1068420
12 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.1598522   -0.2576704   -0.0620341
12 months   ki1126311-ZVITAMBO      <=42.4               NA                -0.3446001   -0.6236558   -0.0655444
12 months   ki1148112-LCNI-5        <=42.4               NA                -0.2569892   -0.4354812   -0.0784972
18 months   ki0047075b-MAL-ED       <=42.4               NA                -0.2136364   -0.2997178   -0.1275550
18 months   ki1017093-NIH-Birth     <=42.4               NA                -0.2015895   -0.2734913   -0.1296876
18 months   ki1017093b-PROVIDE      <=42.4               NA                -0.2597771   -0.4230645   -0.0964898
18 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.1822547   -0.2852788   -0.0792305
18 months   ki1148112-LCNI-5        <=42.4               NA                -0.2584270   -0.4194923   -0.0973616
24 months   ki0047075b-MAL-ED       <=42.4               NA                -0.2062809   -0.2958800   -0.1166817
24 months   ki1017093-NIH-Birth     <=42.4               NA                -0.1850588   -0.2637198   -0.1063979
24 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.1825846   -0.3027527   -0.0624165
24 months   ki1148112-LCNI-5        <=42.4               NA                -0.1189226   -0.3143523    0.0765072


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       <=42.4               NA                -0.8124006   -1.5072489   -0.3101196
3 months    ki0047075b-MAL-ED       <=42.4               NA                -0.5886512   -1.1193537   -0.1908407
3 months    ki1017093-NIH-Birth     <=42.4               NA                -0.4615385   -0.8311612   -0.1665246
3 months    ki1017093c-NIH-Crypto   <=42.4               NA                -0.4183007   -0.9042690   -0.0563512
3 months    ki1126311-ZVITAMBO      <=42.4               NA                -1.9256198   -3.5370837   -0.8865095
6 months    ki0047075b-MAL-ED       <=42.4               NA                -0.6189258   -1.1431492   -0.2229297
6 months    ki1017093-NIH-Birth     <=42.4               NA                -0.6268177   -0.9588031   -0.3510984
6 months    ki1017093c-NIH-Crypto   <=42.4               NA                -0.6518152   -1.1617041   -0.2621956
6 months    ki1126311-ZVITAMBO      <=42.4               NA                -2.2457394   -4.0835800   -1.0723239
6 months    ki1148112-LCNI-5        <=42.4               NA                -0.7258297   -1.2097433   -0.3478888
9 months    ki0047075b-MAL-ED       <=42.4               NA                -0.5738524   -1.0124542   -0.2308412
9 months    ki1017093-NIH-Birth     <=42.4               NA                -0.3611003   -0.6145472   -0.1474388
9 months    ki1017093c-NIH-Crypto   <=42.4               NA                -0.7049022   -1.1727291   -0.3378067
9 months    ki1126311-ZVITAMBO      <=42.4               NA                -1.3856102   -3.0993153   -0.3883138
9 months    ki1148112-LCNI-5        <=42.4               NA                -0.9296322   -1.6063492   -0.4286192
12 months   ki0047075b-MAL-ED       <=42.4               NA                -0.4716291   -0.8182198   -0.1911058
12 months   ki1017093-NIH-Birth     <=42.4               NA                -0.5082703   -0.7520568   -0.2984050
12 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.6599747   -1.1188067   -0.3005037
12 months   ki1126311-ZVITAMBO      <=42.4               NA                -1.4434524   -2.9434582   -0.5140162
12 months   ki1148112-LCNI-5        <=42.4               NA                -0.6272966   -1.1289454   -0.2438526
18 months   ki0047075b-MAL-ED       <=42.4               NA                -0.5529412   -0.7932396   -0.3448433
18 months   ki1017093-NIH-Birth     <=42.4               NA                -0.3431468   -0.4729870   -0.2247517
18 months   ki1017093b-PROVIDE      <=42.4               NA                -0.7043956   -1.2273295   -0.3042365
18 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.6049709   -0.9878463   -0.2958405
18 months   ki1148112-LCNI-5        <=42.4               NA                -0.5257143   -0.8927197   -0.2298726
24 months   ki0047075b-MAL-ED       <=42.4               NA                -0.5502060   -0.8093470   -0.3281801
24 months   ki1017093-NIH-Birth     <=42.4               NA                -0.3335725   -0.4847734   -0.1977689
24 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.7109734   -1.2522239   -0.2997952
24 months   ki1148112-LCNI-5        <=42.4               NA                -0.2696183   -0.8008635    0.1049124


