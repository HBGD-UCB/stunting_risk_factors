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

* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/8c0c790b-ba42-4a6f-8852-17ea656bd490/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c0c790b-ba42-4a6f-8852-17ea656bd490/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/8c0c790b-ba42-4a6f-8852-17ea656bd490/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c0c790b-ba42-4a6f-8852-17ea656bd490/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                 n     nA   nAY0   nAY1
----------  -------------------------  ------------  -----  -----  -----  -----
12 months   ki0047075b-MAL-ED          (42.4-49.2]    1609    317    206    111
12 months   ki0047075b-MAL-ED          (49.2-59.3]    1609    597    436    161
12 months   ki0047075b-MAL-ED          <=42.4         1609    131     79     52
12 months   ki0047075b-MAL-ED          >59.3          1609    564    454    110
12 months   ki1017093-NIH-Birth        (42.4-49.2]     491    160    100     60
12 months   ki1017093-NIH-Birth        (49.2-59.3]     491    142    106     36
12 months   ki1017093-NIH-Birth        <=42.4          491    138     60     78
12 months   ki1017093-NIH-Birth        >59.3           491     51     41     10
12 months   ki1017093b-PROVIDE         (42.4-49.2]     153     39     26     13
12 months   ki1017093b-PROVIDE         (49.2-59.3]     153     51     44      7
12 months   ki1017093b-PROVIDE         <=42.4          153     37     16     21
12 months   ki1017093b-PROVIDE         >59.3           153     26     23      3
12 months   ki1017093c-NIH-Crypto      (42.4-49.2]     706    218    160     58
12 months   ki1017093c-NIH-Crypto      (49.2-59.3]     706    248    193     55
12 months   ki1017093c-NIH-Crypto      <=42.4          706     97     58     39
12 months   ki1017093c-NIH-Crypto      >59.3           706    143    124     19
12 months   ki1066203-TanzaniaChild2   (42.4-49.2]     349     34     25      9
12 months   ki1066203-TanzaniaChild2   (49.2-59.3]     349    132    112     20
12 months   ki1066203-TanzaniaChild2   <=42.4          349      4      4      0
12 months   ki1066203-TanzaniaChild2   >59.3           349    179    156     23
12 months   ki1126311-ZVITAMBO         (42.4-49.2]    1642    193    112     81
12 months   ki1126311-ZVITAMBO         (49.2-59.3]    1642    696    514    182
12 months   ki1126311-ZVITAMBO         <=42.4         1642     12      5      7
12 months   ki1126311-ZVITAMBO         >59.3          1642    741    619    122
12 months   ki1148112-LCNI-5           (42.4-49.2]     310    116     62     54
12 months   ki1148112-LCNI-5           (49.2-59.3]     310    138     90     48
12 months   ki1148112-LCNI-5           <=42.4          310     27      9     18
12 months   ki1148112-LCNI-5           >59.3           310     29     22      7
18 months   ki0047075b-MAL-ED          (42.4-49.2]    1540    307    152    155
18 months   ki0047075b-MAL-ED          (49.2-59.3]    1540    574    349    225
18 months   ki0047075b-MAL-ED          <=42.4         1540    125     50     75
18 months   ki0047075b-MAL-ED          >59.3          1540    534    394    140
18 months   ki1017093-NIH-Birth        (42.4-49.2]     463    154     65     89
18 months   ki1017093-NIH-Birth        (49.2-59.3]     463    133     68     65
18 months   ki1017093-NIH-Birth        <=42.4          463    128     27    101
18 months   ki1017093-NIH-Birth        >59.3           463     48     31     17
18 months   ki1017093b-PROVIDE         (42.4-49.2]     141     34     19     15
18 months   ki1017093b-PROVIDE         (49.2-59.3]     141     48     38     10
18 months   ki1017093b-PROVIDE         <=42.4          141     35     13     22
18 months   ki1017093b-PROVIDE         >59.3           141     24     19      5
18 months   ki1017093c-NIH-Crypto      (42.4-49.2]     634    193    131     62
18 months   ki1017093c-NIH-Crypto      (49.2-59.3]     634    218    154     64
18 months   ki1017093c-NIH-Crypto      <=42.4          634     91     47     44
18 months   ki1017093c-NIH-Crypto      >59.3           634    132    111     21
18 months   ki1066203-TanzaniaChild2   (42.4-49.2]     254     26     13     13
18 months   ki1066203-TanzaniaChild2   (49.2-59.3]     254     85     59     26
18 months   ki1066203-TanzaniaChild2   <=42.4          254      4      3      1
18 months   ki1066203-TanzaniaChild2   >59.3           254    139    112     27
18 months   ki1126311-ZVITAMBO         (42.4-49.2]     401     70     24     46
18 months   ki1126311-ZVITAMBO         (49.2-59.3]     401    178     92     86
18 months   ki1126311-ZVITAMBO         <=42.4          401      2      1      1
18 months   ki1126311-ZVITAMBO         >59.3           401    151     92     59
18 months   ki1148112-LCNI-5           (42.4-49.2]     356    135     57     78
18 months   ki1148112-LCNI-5           (49.2-59.3]     356    159     95     64
18 months   ki1148112-LCNI-5           <=42.4          356     28      7     21
18 months   ki1148112-LCNI-5           >59.3           356     34     22     12
24 months   ki0047075b-MAL-ED          (42.4-49.2]    1483    295    152    143
24 months   ki0047075b-MAL-ED          (49.2-59.3]    1483    548    331    217
24 months   ki0047075b-MAL-ED          <=42.4         1483    117     49     68
24 months   ki0047075b-MAL-ED          >59.3          1483    523    395    128
24 months   ki1017093-NIH-Birth        (42.4-49.2]     429    142     65     77
24 months   ki1017093-NIH-Birth        (49.2-59.3]     429    119     63     56
24 months   ki1017093-NIH-Birth        <=42.4          429    123     32     91
24 months   ki1017093-NIH-Birth        >59.3           429     45     31     14
24 months   ki1017093b-PROVIDE         (42.4-49.2]     149     37     21     16
24 months   ki1017093b-PROVIDE         (49.2-59.3]     149     50     40     10
24 months   ki1017093b-PROVIDE         <=42.4          149     37     16     21
24 months   ki1017093b-PROVIDE         >59.3           149     25     23      2
24 months   ki1017093c-NIH-Crypto      (42.4-49.2]     514    160    108     52
24 months   ki1017093c-NIH-Crypto      (49.2-59.3]     514    180    143     37
24 months   ki1017093c-NIH-Crypto      <=42.4          514     66     37     29
24 months   ki1017093c-NIH-Crypto      >59.3           514    108     94     14
24 months   ki1066203-TanzaniaChild2   (42.4-49.2]       2      1      1      0
24 months   ki1066203-TanzaniaChild2   (49.2-59.3]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   <=42.4            2      0      0      0
24 months   ki1066203-TanzaniaChild2   >59.3             2      1      1      0
24 months   ki1126311-ZVITAMBO         (42.4-49.2]     112     21      2     19
24 months   ki1126311-ZVITAMBO         (49.2-59.3]     112     46     16     30
24 months   ki1126311-ZVITAMBO         <=42.4          112      1      1      0
24 months   ki1126311-ZVITAMBO         >59.3           112     44     26     18
24 months   ki1148112-LCNI-5           (42.4-49.2]     297    103     45     58
24 months   ki1148112-LCNI-5           (49.2-59.3]     297    138     84     54
24 months   ki1148112-LCNI-5           <=42.4          297     25     11     14
24 months   ki1148112-LCNI-5           >59.3           297     31     26      5
3 months    ki0047075b-MAL-ED          (42.4-49.2]    1759    341    273     68
3 months    ki0047075b-MAL-ED          (49.2-59.3]    1759    651    561     90
3 months    ki0047075b-MAL-ED          <=42.4         1759    143    108     35
3 months    ki0047075b-MAL-ED          >59.3          1759    624    546     78
3 months    ki1017093-NIH-Birth        (42.4-49.2]     570    191    154     37
3 months    ki1017093-NIH-Birth        (49.2-59.3]     570    167    136     31
3 months    ki1017093-NIH-Birth        <=42.4          570    153    102     51
3 months    ki1017093-NIH-Birth        >59.3           570     59     48     11
3 months    ki1017093b-PROVIDE         (42.4-49.2]     168     45     40      5
3 months    ki1017093b-PROVIDE         (49.2-59.3]     168     56     52      4
3 months    ki1017093b-PROVIDE         <=42.4          168     41     32      9
3 months    ki1017093b-PROVIDE         >59.3           168     26     24      2
3 months    ki1017093c-NIH-Crypto      (42.4-49.2]     728    219    164     55
3 months    ki1017093c-NIH-Crypto      (49.2-59.3]     728    260    206     54
3 months    ki1017093c-NIH-Crypto      <=42.4          728    102     71     31
3 months    ki1017093c-NIH-Crypto      >59.3           728    147    131     16
3 months    ki1066203-TanzaniaChild2   (42.4-49.2]     566     55     48      7
3 months    ki1066203-TanzaniaChild2   (49.2-59.3]     566    211    192     19
3 months    ki1066203-TanzaniaChild2   <=42.4          566      5      5      0
3 months    ki1066203-TanzaniaChild2   >59.3           566    295    282     13
3 months    ki1126311-ZVITAMBO         (42.4-49.2]    2124    220    148     72
3 months    ki1126311-ZVITAMBO         (49.2-59.3]    2124    896    719    177
3 months    ki1126311-ZVITAMBO         <=42.4         2124     20     10     10
3 months    ki1126311-ZVITAMBO         >59.3          2124    988    884    104
3 months    ki1148112-LCNI-5           (42.4-49.2]       0      0      0      0
3 months    ki1148112-LCNI-5           (49.2-59.3]       0      0      0      0
3 months    ki1148112-LCNI-5           <=42.4            0      0      0      0
3 months    ki1148112-LCNI-5           >59.3             0      0      0      0
6 months    ki0047075b-MAL-ED          (42.4-49.2]    1688    330    258     72
6 months    ki0047075b-MAL-ED          (49.2-59.3]    1688    629    532     97
6 months    ki0047075b-MAL-ED          <=42.4         1688    136    100     36
6 months    ki0047075b-MAL-ED          >59.3          1688    593    522     71
6 months    ki1017093-NIH-Birth        (42.4-49.2]     537    179    139     40
6 months    ki1017093-NIH-Birth        (49.2-59.3]     537    152    123     29
6 months    ki1017093-NIH-Birth        <=42.4          537    149     84     65
6 months    ki1017093-NIH-Birth        >59.3           537     57     47     10
6 months    ki1017093b-PROVIDE         (42.4-49.2]     153     40     32      8
6 months    ki1017093b-PROVIDE         (49.2-59.3]     153     50     43      7
6 months    ki1017093b-PROVIDE         <=42.4          153     38     28     10
6 months    ki1017093b-PROVIDE         >59.3           153     25     22      3
6 months    ki1017093c-NIH-Crypto      (42.4-49.2]     715    217    167     50
6 months    ki1017093c-NIH-Crypto      (49.2-59.3]     715    250    203     47
6 months    ki1017093c-NIH-Crypto      <=42.4          715    101     66     35
6 months    ki1017093c-NIH-Crypto      >59.3           715    147    129     18
6 months    ki1066203-TanzaniaChild2   (42.4-49.2]     496     46     41      5
6 months    ki1066203-TanzaniaChild2   (49.2-59.3]     496    185    166     19
6 months    ki1066203-TanzaniaChild2   <=42.4          496      5      5      0
6 months    ki1066203-TanzaniaChild2   >59.3           496    260    239     21
6 months    ki1126311-ZVITAMBO         (42.4-49.2]    1968    208    145     63
6 months    ki1126311-ZVITAMBO         (49.2-59.3]    1968    821    673    148
6 months    ki1126311-ZVITAMBO         <=42.4         1968     17      8      9
6 months    ki1126311-ZVITAMBO         >59.3          1968    922    821    101
6 months    ki1148112-LCNI-5           (42.4-49.2]     416    153     91     62
6 months    ki1148112-LCNI-5           (49.2-59.3]     416    184    126     58
6 months    ki1148112-LCNI-5           <=42.4          416     36     13     23
6 months    ki1148112-LCNI-5           >59.3           416     43     32     11
9 months    ki0047075b-MAL-ED          (42.4-49.2]    1633    322    239     83
9 months    ki0047075b-MAL-ED          (49.2-59.3]    1633    607    479    128
9 months    ki0047075b-MAL-ED          <=42.4         1633    132     89     43
9 months    ki0047075b-MAL-ED          >59.3          1633    572    488     84
9 months    ki1017093-NIH-Birth        (42.4-49.2]     507    164    108     56
9 months    ki1017093-NIH-Birth        (49.2-59.3]     507    146    101     45
9 months    ki1017093-NIH-Birth        <=42.4          507    142     73     69
9 months    ki1017093-NIH-Birth        >59.3           507     55     44     11
9 months    ki1017093b-PROVIDE         (42.4-49.2]     158     41     32      9
9 months    ki1017093b-PROVIDE         (49.2-59.3]     158     52     46      6
9 months    ki1017093b-PROVIDE         <=42.4          158     39     20     19
9 months    ki1017093b-PROVIDE         >59.3           158     26     23      3
9 months    ki1017093c-NIH-Crypto      (42.4-49.2]     706    214    158     56
9 months    ki1017093c-NIH-Crypto      (49.2-59.3]     706    246    195     51
9 months    ki1017093c-NIH-Crypto      <=42.4          706    101     61     40
9 months    ki1017093c-NIH-Crypto      >59.3           706    145    128     17
9 months    ki1066203-TanzaniaChild2   (42.4-49.2]     426     42     35      7
9 months    ki1066203-TanzaniaChild2   (49.2-59.3]     426    152    127     25
9 months    ki1066203-TanzaniaChild2   <=42.4          426      5      4      1
9 months    ki1066203-TanzaniaChild2   >59.3           426    227    197     30
9 months    ki1126311-ZVITAMBO         (42.4-49.2]    1871    204    136     68
9 months    ki1126311-ZVITAMBO         (49.2-59.3]    1871    794    621    173
9 months    ki1126311-ZVITAMBO         <=42.4         1871     15      8      7
9 months    ki1126311-ZVITAMBO         >59.3          1871    858    740    118
9 months    ki1148112-LCNI-5           (42.4-49.2]     321    116     75     41
9 months    ki1148112-LCNI-5           (49.2-59.3]     321    147    112     35
9 months    ki1148112-LCNI-5           <=42.4          321     28     11     17
9 months    ki1148112-LCNI-5           >59.3           321     30     22      8
Birth       ki0047075b-MAL-ED          (42.4-49.2]    1425    269    219     50
Birth       ki0047075b-MAL-ED          (49.2-59.3]    1425    529    470     59
Birth       ki0047075b-MAL-ED          <=42.4         1425    119     91     28
Birth       ki0047075b-MAL-ED          >59.3          1425    508    460     48
Birth       ki1017093-NIH-Birth        (42.4-49.2]      28      9      8      1
Birth       ki1017093-NIH-Birth        (49.2-59.3]      28      7      7      0
Birth       ki1017093-NIH-Birth        <=42.4           28     12     12      0
Birth       ki1017093-NIH-Birth        >59.3            28      0      0      0
Birth       ki1017093b-PROVIDE         (42.4-49.2]       0      0      0      0
Birth       ki1017093b-PROVIDE         (49.2-59.3]       0      0      0      0
Birth       ki1017093b-PROVIDE         <=42.4            0      0      0      0
Birth       ki1017093b-PROVIDE         >59.3             0      0      0      0
Birth       ki1017093c-NIH-Crypto      (42.4-49.2]      27      9      7      2
Birth       ki1017093c-NIH-Crypto      (49.2-59.3]      27      7      6      1
Birth       ki1017093c-NIH-Crypto      <=42.4           27      8      6      2
Birth       ki1017093c-NIH-Crypto      >59.3            27      3      3      0
Birth       ki1066203-TanzaniaChild2   (42.4-49.2]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (49.2-59.3]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   <=42.4            0      0      0      0
Birth       ki1066203-TanzaniaChild2   >59.3             0      0      0      0
Birth       ki1126311-ZVITAMBO         (42.4-49.2]    2710    300    262     38
Birth       ki1126311-ZVITAMBO         (49.2-59.3]    2710   1138    987    151
Birth       ki1126311-ZVITAMBO         <=42.4         2710     28     24      4
Birth       ki1126311-ZVITAMBO         >59.3          2710   1244   1168     76
Birth       ki1148112-LCNI-5           (42.4-49.2]       0      0      0      0
Birth       ki1148112-LCNI-5           (49.2-59.3]       0      0      0      0
Birth       ki1148112-LCNI-5           <=42.4            0      0      0      0
Birth       ki1148112-LCNI-5           >59.3             0      0      0      0

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                0.3501577   0.2976299   0.4026855
12 months   ki0047075b-MAL-ED       (49.2-59.3]          NA                0.2696817   0.2340713   0.3052922
12 months   ki0047075b-MAL-ED       <=42.4               NA                0.3969466   0.3131374   0.4807557
12 months   ki0047075b-MAL-ED       >59.3                NA                0.1950355   0.1623248   0.2277461
12 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                0.3750000   0.2999092   0.4500908
12 months   ki1017093-NIH-Birth     (49.2-59.3]          NA                0.2535211   0.1818965   0.3251458
12 months   ki1017093-NIH-Birth     <=42.4               NA                0.5652174   0.4824241   0.6480107
12 months   ki1017093-NIH-Birth     >59.3                NA                0.1960784   0.0870029   0.3051540
12 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.2660550   0.2073541   0.3247560
12 months   ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.2217742   0.1700328   0.2735156
12 months   ki1017093c-NIH-Crypto   <=42.4               NA                0.4020619   0.3044181   0.4997056
12 months   ki1017093c-NIH-Crypto   >59.3                NA                0.1328671   0.0771948   0.1885395
12 months   ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.4196891   0.3500432   0.4893351
12 months   ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.2614943   0.2288367   0.2941518
12 months   ki1126311-ZVITAMBO      <=42.4               NA                0.5833333   0.3043087   0.8623580
12 months   ki1126311-ZVITAMBO      >59.3                NA                0.1646424   0.1379321   0.1913526
12 months   ki1148112-LCNI-5        (42.4-49.2]          NA                0.4655172   0.3745981   0.5564364
12 months   ki1148112-LCNI-5        (49.2-59.3]          NA                0.3478261   0.2682334   0.4274187
12 months   ki1148112-LCNI-5        <=42.4               NA                0.6666667   0.4885676   0.8447657
12 months   ki1148112-LCNI-5        >59.3                NA                0.2413793   0.0853835   0.3973752
18 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                0.5048860   0.4489400   0.5608320
18 months   ki0047075b-MAL-ED       (49.2-59.3]          NA                0.3919861   0.3520353   0.4319368
18 months   ki0047075b-MAL-ED       <=42.4               NA                0.6000000   0.5140908   0.6859092
18 months   ki0047075b-MAL-ED       >59.3                NA                0.2621723   0.2248568   0.2994878
18 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                0.5779221   0.4998334   0.6560108
18 months   ki1017093-NIH-Birth     (49.2-59.3]          NA                0.4887218   0.4036763   0.5737673
18 months   ki1017093-NIH-Birth     <=42.4               NA                0.7890625   0.7183094   0.8598156
18 months   ki1017093-NIH-Birth     >59.3                NA                0.3541667   0.2187223   0.4896111
18 months   ki1017093b-PROVIDE      (42.4-49.2]          NA                0.4411765   0.2736831   0.6086699
18 months   ki1017093b-PROVIDE      (49.2-59.3]          NA                0.2083333   0.0930349   0.3236318
18 months   ki1017093b-PROVIDE      <=42.4               NA                0.6285714   0.4679237   0.7892192
18 months   ki1017093b-PROVIDE      >59.3                NA                0.2083333   0.0452767   0.3713900
18 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.3212435   0.2553130   0.3871740
18 months   ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.2935780   0.2330778   0.3540781
18 months   ki1017093c-NIH-Crypto   <=42.4               NA                0.4835165   0.3807612   0.5862717
18 months   ki1017093c-NIH-Crypto   >59.3                NA                0.1590909   0.0966454   0.2215364
18 months   ki1148112-LCNI-5        (42.4-49.2]          NA                0.5777778   0.4943438   0.6612118
18 months   ki1148112-LCNI-5        (49.2-59.3]          NA                0.4025157   0.3261823   0.4788492
18 months   ki1148112-LCNI-5        <=42.4               NA                0.7500000   0.5893871   0.9106129
18 months   ki1148112-LCNI-5        >59.3                NA                0.3529412   0.1920832   0.5137991
24 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                0.4847458   0.4276963   0.5417952
24 months   ki0047075b-MAL-ED       (49.2-59.3]          NA                0.3959854   0.3550247   0.4369461
24 months   ki0047075b-MAL-ED       <=42.4               NA                0.5811966   0.4917697   0.6706235
24 months   ki0047075b-MAL-ED       >59.3                NA                0.2447419   0.2078827   0.2816010
24 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                0.5422535   0.4602138   0.6242933
24 months   ki1017093-NIH-Birth     (49.2-59.3]          NA                0.4705882   0.3808043   0.5603722
24 months   ki1017093-NIH-Birth     <=42.4               NA                0.7398374   0.6622140   0.8174608
24 months   ki1017093-NIH-Birth     >59.3                NA                0.3111111   0.1756917   0.4465305
24 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.3250000   0.2523552   0.3976448
24 months   ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.2055556   0.1464632   0.2646479
24 months   ki1017093c-NIH-Crypto   <=42.4               NA                0.4393939   0.3195393   0.5592486
24 months   ki1017093c-NIH-Crypto   >59.3                NA                0.1296296   0.0662188   0.1930404
24 months   ki1148112-LCNI-5        (42.4-49.2]          NA                0.5631068   0.4671568   0.6590568
24 months   ki1148112-LCNI-5        (49.2-59.3]          NA                0.3913043   0.3097404   0.4728683
24 months   ki1148112-LCNI-5        <=42.4               NA                0.5600000   0.3650915   0.7549085
24 months   ki1148112-LCNI-5        >59.3                NA                0.1612903   0.0315994   0.2909812
3 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                0.1994135   0.1569930   0.2418340
3 months    ki0047075b-MAL-ED       (49.2-59.3]          NA                0.1382488   0.1117271   0.1647706
3 months    ki0047075b-MAL-ED       <=42.4               NA                0.2447552   0.1742675   0.3152430
3 months    ki0047075b-MAL-ED       >59.3                NA                0.1250000   0.0990440   0.1509560
3 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                0.1937173   0.1376202   0.2498144
3 months    ki1017093-NIH-Birth     (49.2-59.3]          NA                0.1856287   0.1266080   0.2446495
3 months    ki1017093-NIH-Birth     <=42.4               NA                0.3333333   0.2585719   0.4080947
3 months    ki1017093-NIH-Birth     >59.3                NA                0.1864407   0.0869761   0.2859052
3 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.2511416   0.1936659   0.3086172
3 months    ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.2076923   0.1583503   0.2570343
3 months    ki1017093c-NIH-Crypto   <=42.4               NA                0.3039216   0.2146000   0.3932431
3 months    ki1017093c-NIH-Crypto   >59.3                NA                0.1088435   0.0584626   0.1592245
3 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.3272727   0.2652553   0.3892901
3 months    ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.1975446   0.1714687   0.2236205
3 months    ki1126311-ZVITAMBO      <=42.4               NA                0.5000000   0.2808178   0.7191822
3 months    ki1126311-ZVITAMBO      >59.3                NA                0.1052632   0.0861225   0.1244039
6 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                0.2181818   0.1736078   0.2627559
6 months    ki0047075b-MAL-ED       (49.2-59.3]          NA                0.1542130   0.1259810   0.1824451
6 months    ki0047075b-MAL-ED       <=42.4               NA                0.2647059   0.1905374   0.3388744
6 months    ki0047075b-MAL-ED       >59.3                NA                0.1197302   0.0935930   0.1458674
6 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                0.2234637   0.1623820   0.2845453
6 months    ki1017093-NIH-Birth     (49.2-59.3]          NA                0.1907895   0.1282666   0.2533124
6 months    ki1017093-NIH-Birth     <=42.4               NA                0.4362416   0.3565395   0.5159437
6 months    ki1017093-NIH-Birth     >59.3                NA                0.1754386   0.0766084   0.2742688
6 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.2304147   0.1743480   0.2864815
6 months    ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.1880000   0.1395338   0.2364662
6 months    ki1017093c-NIH-Crypto   <=42.4               NA                0.3465347   0.2536645   0.4394048
6 months    ki1017093c-NIH-Crypto   >59.3                NA                0.1224490   0.0694208   0.1754772
6 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.3028846   0.2404223   0.3653469
6 months    ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.1802680   0.1539664   0.2065696
6 months    ki1126311-ZVITAMBO      <=42.4               NA                0.5294118   0.2920825   0.7667410
6 months    ki1126311-ZVITAMBO      >59.3                NA                0.1095445   0.0893796   0.1297093
6 months    ki1148112-LCNI-5        (42.4-49.2]          NA                0.4052288   0.3273444   0.4831131
6 months    ki1148112-LCNI-5        (49.2-59.3]          NA                0.3152174   0.2480059   0.3824288
6 months    ki1148112-LCNI-5        <=42.4               NA                0.6388889   0.4817974   0.7959803
6 months    ki1148112-LCNI-5        >59.3                NA                0.2558140   0.1252452   0.3863827
9 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                0.2577640   0.2099742   0.3055538
9 months    ki0047075b-MAL-ED       (49.2-59.3]          NA                0.2108731   0.1784115   0.2433348
9 months    ki0047075b-MAL-ED       <=42.4               NA                0.3257576   0.2457835   0.4057317
9 months    ki0047075b-MAL-ED       >59.3                NA                0.1468531   0.1178372   0.1758691
9 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                0.3414634   0.2688165   0.4141103
9 months    ki1017093-NIH-Birth     (49.2-59.3]          NA                0.3082192   0.2332445   0.3831938
9 months    ki1017093-NIH-Birth     <=42.4               NA                0.4859155   0.4036287   0.5682023
9 months    ki1017093-NIH-Birth     >59.3                NA                0.2000000   0.0941830   0.3058170
9 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.2616822   0.2027493   0.3206151
9 months    ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.2073171   0.1566232   0.2580110
9 months    ki1017093c-NIH-Crypto   <=42.4               NA                0.3960396   0.3005912   0.4914880
9 months    ki1017093c-NIH-Crypto   >59.3                NA                0.1172414   0.0648411   0.1696416
9 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.3333333   0.2686276   0.3980391
9 months    ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.2178841   0.1891630   0.2466053
9 months    ki1126311-ZVITAMBO      <=42.4               NA                0.4666667   0.2141318   0.7192015
9 months    ki1126311-ZVITAMBO      >59.3                NA                0.1375291   0.1144781   0.1605802
9 months    ki1148112-LCNI-5        (42.4-49.2]          NA                0.3534483   0.2663196   0.4405770
9 months    ki1148112-LCNI-5        (49.2-59.3]          NA                0.2380952   0.1691360   0.3070545
9 months    ki1148112-LCNI-5        <=42.4               NA                0.6071429   0.4259632   0.7883225
9 months    ki1148112-LCNI-5        >59.3                NA                0.2666667   0.1081773   0.4251560
Birth       ki0047075b-MAL-ED       (42.4-49.2]          NA                0.1858736   0.1393708   0.2323764
Birth       ki0047075b-MAL-ED       (49.2-59.3]          NA                0.1115312   0.0846968   0.1383656
Birth       ki0047075b-MAL-ED       <=42.4               NA                0.2352941   0.1590547   0.3115336
Birth       ki0047075b-MAL-ED       >59.3                NA                0.0944882   0.0690431   0.1199333


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
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
Birth       ki0047075b-MAL-ED       NA                   NA                0.1298246   0.1274493   0.1321998


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED       (49.2-59.3]          (42.4-49.2]       0.7701722   0.6306586   0.9405488
12 months   ki0047075b-MAL-ED       <=42.4               (42.4-49.2]       1.1336222   0.8749551   1.4687602
12 months   ki0047075b-MAL-ED       >59.3                (42.4-49.2]       0.5569932   0.4447609   0.6975465
12 months   ki1017093-NIH-Birth     (49.2-59.3]          (42.4-49.2]       0.6760563   0.4781815   0.9558132
12 months   ki1017093-NIH-Birth     <=42.4               (42.4-49.2]       1.5072464   1.1760776   1.9316681
12 months   ki1017093-NIH-Birth     >59.3                (42.4-49.2]       0.5228758   0.2894887   0.9444207
12 months   ki1017093c-NIH-Crypto   (49.2-59.3]          (42.4-49.2]       0.8335651   0.6046209   1.1492006
12 months   ki1017093c-NIH-Crypto   <=42.4               (42.4-49.2]       1.5111980   1.0884860   2.0980697
12 months   ki1017093c-NIH-Crypto   >59.3                (42.4-49.2]       0.4993972   0.3110191   0.8018720
12 months   ki1126311-ZVITAMBO      (49.2-59.3]          (42.4-49.2]       0.6230666   0.5062157   0.7668903
12 months   ki1126311-ZVITAMBO      <=42.4               (42.4-49.2]       1.3899177   0.8377365   2.3060607
12 months   ki1126311-ZVITAMBO      >59.3                (42.4-49.2]       0.3922960   0.3110472   0.4947680
12 months   ki1148112-LCNI-5        (49.2-59.3]          (42.4-49.2]       0.7471820   0.5530584   1.0094429
12 months   ki1148112-LCNI-5        <=42.4               (42.4-49.2]       1.4320988   1.0286146   1.9938536
12 months   ki1148112-LCNI-5        >59.3                (42.4-49.2]       0.5185185   0.2639712   1.0185257
18 months   ki0047075b-MAL-ED       (49.2-59.3]          (42.4-49.2]       0.7763853   0.6678717   0.9025298
18 months   ki0047075b-MAL-ED       <=42.4               (42.4-49.2]       1.1883871   0.9915808   1.4242550
18 months   ki0047075b-MAL-ED       >59.3                (42.4-49.2]       0.5192703   0.4335660   0.6219159
18 months   ki1017093-NIH-Birth     (49.2-59.3]          (42.4-49.2]       0.8456535   0.6784386   1.0540817
18 months   ki1017093-NIH-Birth     <=42.4               (42.4-49.2]       1.3653441   1.1609530   1.6057192
18 months   ki1017093-NIH-Birth     >59.3                (42.4-49.2]       0.6128277   0.4084969   0.9193652
18 months   ki1017093b-PROVIDE      (49.2-59.3]          (42.4-49.2]       0.4722222   0.2413659   0.9238830
18 months   ki1017093b-PROVIDE      <=42.4               (42.4-49.2]       1.4247619   0.9015343   2.2516576
18 months   ki1017093b-PROVIDE      >59.3                (42.4-49.2]       0.4722222   0.1978597   1.1270298
18 months   ki1017093c-NIH-Crypto   (49.2-59.3]          (42.4-49.2]       0.9138798   0.6832464   1.2223647
18 months   ki1017093c-NIH-Crypto   <=42.4               (42.4-49.2]       1.5051400   1.1201313   2.0224830
18 months   ki1017093c-NIH-Crypto   >59.3                (42.4-49.2]       0.4952346   0.3180152   0.7712126
18 months   ki1148112-LCNI-5        (49.2-59.3]          (42.4-49.2]       0.6966618   0.5489119   0.8841814
18 months   ki1148112-LCNI-5        <=42.4               (42.4-49.2]       1.2980769   1.0025981   1.6806372
18 months   ki1148112-LCNI-5        >59.3                (42.4-49.2]       0.6108597   0.3787110   0.9853149
24 months   ki0047075b-MAL-ED       (49.2-59.3]          (42.4-49.2]       0.8168930   0.6984207   0.9554615
24 months   ki0047075b-MAL-ED       <=42.4               (42.4-49.2]       1.1989720   0.9878234   1.4552538
24 months   ki0047075b-MAL-ED       >59.3                (42.4-49.2]       0.5048871   0.4170475   0.6112276
24 months   ki1017093-NIH-Birth     (49.2-59.3]          (42.4-49.2]       0.8678380   0.6802821   1.1071038
24 months   ki1017093-NIH-Birth     <=42.4               (42.4-49.2]       1.3643755   1.1349432   1.6401881
24 months   ki1017093-NIH-Birth     >59.3                (42.4-49.2]       0.5737374   0.3618939   0.9095886
24 months   ki1017093c-NIH-Crypto   (49.2-59.3]          (42.4-49.2]       0.6324786   0.4394381   0.9103198
24 months   ki1017093c-NIH-Crypto   <=42.4               (42.4-49.2]       1.3519814   0.9501968   1.9236580
24 months   ki1017093c-NIH-Crypto   >59.3                (42.4-49.2]       0.3988604   0.2329428   0.6829557
24 months   ki1148112-LCNI-5        (49.2-59.3]          (42.4-49.2]       0.6949025   0.5308859   0.9095920
24 months   ki1148112-LCNI-5        <=42.4               (42.4-49.2]       0.9944828   0.6749917   1.4651971
24 months   ki1148112-LCNI-5        >59.3                (42.4-49.2]       0.2864294   0.1259081   0.6516005
3 months    ki0047075b-MAL-ED       (49.2-59.3]          (42.4-49.2]       0.6932773   0.5205973   0.9232345
3 months    ki0047075b-MAL-ED       <=42.4               (42.4-49.2]       1.2273756   0.8579913   1.7557878
3 months    ki0047075b-MAL-ED       >59.3                (42.4-49.2]       0.6268382   0.4656420   0.8438375
3 months    ki1017093-NIH-Birth     (49.2-59.3]          (42.4-49.2]       0.9582457   0.6233108   1.4731571
3 months    ki1017093-NIH-Birth     <=42.4               (42.4-49.2]       1.7207207   1.1929900   2.4818983
3 months    ki1017093-NIH-Birth     >59.3                (42.4-49.2]       0.9624370   0.5245025   1.7660259
3 months    ki1017093c-NIH-Crypto   (49.2-59.3]          (42.4-49.2]       0.8269930   0.5946201   1.1501755
3 months    ki1017093c-NIH-Crypto   <=42.4               (42.4-49.2]       1.2101604   0.8338180   1.7563644
3 months    ki1017093c-NIH-Crypto   >59.3                (42.4-49.2]       0.4333952   0.2586016   0.7263348
3 months    ki1126311-ZVITAMBO      (49.2-59.3]          (42.4-49.2]       0.6036086   0.4791367   0.7604164
3 months    ki1126311-ZVITAMBO      <=42.4               (42.4-49.2]       1.5277778   0.9476639   2.4630092
3 months    ki1126311-ZVITAMBO      >59.3                (42.4-49.2]       0.3216374   0.2473480   0.4182393
6 months    ki0047075b-MAL-ED       (49.2-59.3]          (42.4-49.2]       0.7068098   0.5372369   0.9299065
6 months    ki0047075b-MAL-ED       <=42.4               (42.4-49.2]       1.2132353   0.8577236   1.7161004
6 months    ki0047075b-MAL-ED       >59.3                (42.4-49.2]       0.5487634   0.4069462   0.7400025
6 months    ki1017093-NIH-Birth     (49.2-59.3]          (42.4-49.2]       0.8537829   0.5572076   1.3082113
6 months    ki1017093-NIH-Birth     <=42.4               (42.4-49.2]       1.9521812   1.4051857   2.7121052
6 months    ki1017093-NIH-Birth     >59.3                (42.4-49.2]       0.7850877   0.4197462   1.4684176
6 months    ki1017093c-NIH-Crypto   (49.2-59.3]          (42.4-49.2]       0.8159200   0.5723880   1.1630667
6 months    ki1017093c-NIH-Crypto   <=42.4               (42.4-49.2]       1.5039604   1.0471991   2.1599493
6 months    ki1017093c-NIH-Crypto   >59.3                (42.4-49.2]       0.5314286   0.3233792   0.8733286
6 months    ki1126311-ZVITAMBO      (49.2-59.3]          (42.4-49.2]       0.5951704   0.4623070   0.7662178
6 months    ki1126311-ZVITAMBO      <=42.4               (42.4-49.2]       1.7478992   1.0671230   2.8629798
6 months    ki1126311-ZVITAMBO      >59.3                (42.4-49.2]       0.3616706   0.2743223   0.4768319
6 months    ki1148112-LCNI-5        (49.2-59.3]          (42.4-49.2]       0.7778752   0.5837688   1.0365231
6 months    ki1148112-LCNI-5        <=42.4               (42.4-49.2]       1.5766129   1.1539511   2.1540846
6 months    ki1148112-LCNI-5        >59.3                (42.4-49.2]       0.6312828   0.3659003   1.0891438
9 months    ki0047075b-MAL-ED       (49.2-59.3]          (42.4-49.2]       0.8180862   0.6428995   1.0410103
9 months    ki0047075b-MAL-ED       <=42.4               (42.4-49.2]       1.2637824   0.9291037   1.7190180
9 months    ki0047075b-MAL-ED       >59.3                (42.4-49.2]       0.5697194   0.4344996   0.7470209
9 months    ki1017093-NIH-Birth     (49.2-59.3]          (42.4-49.2]       0.9026419   0.6533826   1.2469912
9 months    ki1017093-NIH-Birth     <=42.4               (42.4-49.2]       1.4230382   1.0842343   1.8677124
9 months    ki1017093-NIH-Birth     >59.3                (42.4-49.2]       0.5857143   0.3311509   1.0359665
9 months    ki1017093c-NIH-Crypto   (49.2-59.3]          (42.4-49.2]       0.7922474   0.5681826   1.1046730
9 months    ki1017093c-NIH-Crypto   <=42.4               (42.4-49.2]       1.5134371   1.0882057   2.1048335
9 months    ki1017093c-NIH-Crypto   >59.3                (42.4-49.2]       0.4480296   0.2716142   0.7390280
9 months    ki1126311-ZVITAMBO      (49.2-59.3]          (42.4-49.2]       0.6536524   0.5169427   0.8265161
9 months    ki1126311-ZVITAMBO      <=42.4               (42.4-49.2]       1.4000000   0.7878583   2.4877568
9 months    ki1126311-ZVITAMBO      >59.3                (42.4-49.2]       0.4125874   0.3192529   0.5332085
9 months    ki1148112-LCNI-5        (49.2-59.3]          (42.4-49.2]       0.6736353   0.4605203   0.9853735
9 months    ki1148112-LCNI-5        <=42.4               (42.4-49.2]       1.7177700   1.1664485   2.5296736
9 months    ki1148112-LCNI-5        >59.3                (42.4-49.2]       0.7544715   0.3964651   1.4357564
Birth       ki0047075b-MAL-ED       (49.2-59.3]          (42.4-49.2]       0.6000378   0.4240660   0.8490315
Birth       ki0047075b-MAL-ED       <=42.4               (42.4-49.2]       1.2658824   0.8406364   1.9062440
Birth       ki0047075b-MAL-ED       >59.3                (42.4-49.2]       0.5083465   0.3519846   0.7341688


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.0804250   -0.1330561   -0.0277939
12 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                -0.0002546   -0.0762669    0.0757577
12 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.0238454   -0.0828359    0.0351451
12 months   ki1126311-ZVITAMBO      (42.4-49.2]          NA                -0.1809559   -0.2507263   -0.1111854
12 months   ki1148112-LCNI-5        (42.4-49.2]          NA                -0.0558398   -0.1475264    0.0358467
18 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.1185224   -0.1747324   -0.0623123
18 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                 0.0095509   -0.0695801    0.0886820
18 months   ki1017093b-PROVIDE      (42.4-49.2]          NA                -0.0723821   -0.2424089    0.0976446
18 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.0199817   -0.0863305    0.0463671
18 months   ki1148112-LCNI-5        (42.4-49.2]          NA                -0.0862047   -0.1705063   -0.0019032
24 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.1098301   -0.1671491   -0.0525110
24 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                 0.0125250   -0.0704970    0.0955471
24 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.0681907   -0.1413514    0.0049701
24 months   ki1148112-LCNI-5        (42.4-49.2]          NA                -0.1220294   -0.2190337   -0.0250250
3 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.0453487   -0.0878068   -0.0028906
3 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                 0.0343529   -0.0219890    0.0906948
3 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.0368558   -0.0945056    0.0207940
3 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                -0.1563688   -0.2184715   -0.0942660
6 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.0546747   -0.0993027   -0.0100467
6 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                 0.0446927   -0.0170373    0.1064228
6 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.0206245   -0.0769071    0.0356580
6 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                -0.1397749   -0.2023104   -0.0772393
6 months    ki1148112-LCNI-5        (42.4-49.2]          NA                -0.0350365   -0.1134767    0.0434038
9 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.0507830   -0.0986446   -0.0029213
9 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                 0.0155386   -0.0575299    0.0886070
9 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.0293876   -0.0886448    0.0298695
9 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                -0.1377160   -0.2024918   -0.0729402
9 months    ki1148112-LCNI-5        (42.4-49.2]          NA                -0.0388065   -0.1266833    0.0490702
Birth       ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.0560490   -0.1026125   -0.0094856


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.2981654   -0.5090205   -0.1167730
12 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                -0.0006793   -0.2255405    0.1829245
12 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.0984495   -0.3714202    0.1201885
12 months   ki1126311-ZVITAMBO      (42.4-49.2]          NA                -0.7579835   -1.0772168   -0.4878110
12 months   ki1148112-LCNI-5        (42.4-49.2]          NA                -0.1363019   -0.3843251    0.0672841
18 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.3067637   -0.4611949   -0.1686542
18 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                 0.0162576   -0.1280318    0.1420907
18 months   ki1017093b-PROVIDE      (42.4-49.2]          NA                -0.1962670   -0.7630564    0.1883104
18 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.0663267   -0.3111898    0.1328086
18 months   ki1148112-LCNI-5        (42.4-49.2]          NA                -0.1753651   -0.3607747   -0.0152181
24 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.2929460   -0.4557789   -0.1483264
24 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                 0.0225766   -0.1390446    0.1612651
24 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.2655303   -0.5865328   -0.0094761
24 months   ki1148112-LCNI-5        (42.4-49.2]          NA                -0.2766620   -0.5184411   -0.0733810
3 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.2943481   -0.6016736   -0.0459915
3 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                 0.1506242   -0.1356907    0.3647573
3 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.1719939   -0.4747907    0.0686341
3 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                -0.9149512   -1.3167017   -0.5828701
6 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.3343874   -0.6375649   -0.0873398
6 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                 0.1666667   -0.0975025    0.3672503
6 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.0983103   -0.4024654    0.1398822
6 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                -0.8569375   -1.2841328   -0.5096393
6 months    ki1148112-LCNI-5        (42.4-49.2]          NA                -0.0946439   -0.3287920    0.0982446
9 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.2453508   -0.4996788   -0.0341538
9 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                 0.0435251   -0.1845709    0.2276999
9 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                -0.1265101   -0.4132665    0.1020624
9 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                -0.7040073   -1.0703329   -0.4024995
9 months    ki1148112-LCNI-5        (42.4-49.2]          NA                -0.1233356   -0.4412066    0.1244261
Birth       ki0047075b-MAL-ED       (42.4-49.2]          NA                -0.4317291   -0.8399457   -0.1140808


