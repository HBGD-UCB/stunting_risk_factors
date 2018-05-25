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

**Intervention Variable:** mbmi

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

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1017093b-PROVIDE
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
![](/tmp/448c098d-b413-40c0-917f-9f3648f28918/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/448c098d-b413-40c0-917f-9f3648f28918/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/448c098d-b413-40c0-917f-9f3648f28918/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/448c098d-b413-40c0-917f-9f3648f28918/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                   n    nA   nAY0   nAY1
----------  -------------------------  --------------  -----  ----  -----  -----
Birth       ki0047075b-MAL-ED          <=18.7           1425   105    101      4
Birth       ki0047075b-MAL-ED          (18.7-20.67]     1425   176    169      7
Birth       ki0047075b-MAL-ED          (20.67-23.47]    1425   381    370     11
Birth       ki0047075b-MAL-ED          >23.47           1425   763    743     20
Birth       ki1017093-NIH-Birth        <=18.7             28    10     10      0
Birth       ki1017093-NIH-Birth        (18.7-20.67]       28     9      9      0
Birth       ki1017093-NIH-Birth        (20.67-23.47]      28     6      6      0
Birth       ki1017093-NIH-Birth        >23.47             28     3      3      0
Birth       ki1017093b-PROVIDE         <=18.7              0     0      0      0
Birth       ki1017093b-PROVIDE         (18.7-20.67]        0     0      0      0
Birth       ki1017093b-PROVIDE         (20.67-23.47]       0     0      0      0
Birth       ki1017093b-PROVIDE         >23.47              0     0      0      0
Birth       ki1017093c-NIH-Crypto      <=18.7             27     7      7      0
Birth       ki1017093c-NIH-Crypto      (18.7-20.67]       27     5      5      0
Birth       ki1017093c-NIH-Crypto      (20.67-23.47]      27     8      7      1
Birth       ki1017093c-NIH-Crypto      >23.47             27     7      7      0
Birth       ki1066203-TanzaniaChild2   <=18.7              0     0      0      0
Birth       ki1066203-TanzaniaChild2   (18.7-20.67]        0     0      0      0
Birth       ki1066203-TanzaniaChild2   (20.67-23.47]       0     0      0      0
Birth       ki1066203-TanzaniaChild2   >23.47              0     0      0      0
Birth       ki1126311-ZVITAMBO         <=18.7           2383   132    126      6
Birth       ki1126311-ZVITAMBO         (18.7-20.67]     2383   436    421     15
Birth       ki1126311-ZVITAMBO         (20.67-23.47]    2383   846    816     30
Birth       ki1126311-ZVITAMBO         >23.47           2383   969    951     18
Birth       ki1148112-LCNI-5           <=18.7              0     0      0      0
Birth       ki1148112-LCNI-5           (18.7-20.67]        0     0      0      0
Birth       ki1148112-LCNI-5           (20.67-23.47]       0     0      0      0
Birth       ki1148112-LCNI-5           >23.47              0     0      0      0
3 months    ki0047075b-MAL-ED          <=18.7           1759   132    123      9
3 months    ki0047075b-MAL-ED          (18.7-20.67]     1759   229    219     10
3 months    ki0047075b-MAL-ED          (20.67-23.47]    1759   483    465     18
3 months    ki0047075b-MAL-ED          >23.47           1759   915    887     28
3 months    ki1017093-NIH-Birth        <=18.7            570   111    100     11
3 months    ki1017093-NIH-Birth        (18.7-20.67]      570   164    156      8
3 months    ki1017093-NIH-Birth        (20.67-23.47]     570   171    162      9
3 months    ki1017093-NIH-Birth        >23.47            570   124    119      5
3 months    ki1017093b-PROVIDE         <=18.7            168    26     25      1
3 months    ki1017093b-PROVIDE         (18.7-20.67]      168    40     39      1
3 months    ki1017093b-PROVIDE         (20.67-23.47]     168    51     50      1
3 months    ki1017093b-PROVIDE         >23.47            168    51     49      2
3 months    ki1017093c-NIH-Crypto      <=18.7            728    75     69      6
3 months    ki1017093c-NIH-Crypto      (18.7-20.67]      728   129    120      9
3 months    ki1017093c-NIH-Crypto      (20.67-23.47]     728   225    216      9
3 months    ki1017093c-NIH-Crypto      >23.47            728   299    290      9
3 months    ki1066203-TanzaniaChild2   <=18.7            566     5      5      0
3 months    ki1066203-TanzaniaChild2   (18.7-20.67]      566    59     58      1
3 months    ki1066203-TanzaniaChild2   (20.67-23.47]     566   148    144      4
3 months    ki1066203-TanzaniaChild2   >23.47            566   354    349      5
3 months    ki1126311-ZVITAMBO         <=18.7           1922    96     84     12
3 months    ki1126311-ZVITAMBO         (18.7-20.67]     1922   335    315     20
3 months    ki1126311-ZVITAMBO         (20.67-23.47]    1922   694    651     43
3 months    ki1126311-ZVITAMBO         >23.47           1922   797    772     25
3 months    ki1148112-LCNI-5           <=18.7              0     0      0      0
3 months    ki1148112-LCNI-5           (18.7-20.67]        0     0      0      0
3 months    ki1148112-LCNI-5           (20.67-23.47]       0     0      0      0
3 months    ki1148112-LCNI-5           >23.47              0     0      0      0
6 months    ki0047075b-MAL-ED          <=18.7           1688   131    120     11
6 months    ki0047075b-MAL-ED          (18.7-20.67]     1688   214    208      6
6 months    ki0047075b-MAL-ED          (20.67-23.47]    1688   463    451     12
6 months    ki0047075b-MAL-ED          >23.47           1688   880    859     21
6 months    ki1017093-NIH-Birth        <=18.7            537   108     94     14
6 months    ki1017093-NIH-Birth        (18.7-20.67]      537   151    140     11
6 months    ki1017093-NIH-Birth        (20.67-23.47]     537   161    155      6
6 months    ki1017093-NIH-Birth        >23.47            537   117    113      4
6 months    ki1017093b-PROVIDE         <=18.7            153    22     21      1
6 months    ki1017093b-PROVIDE         (18.7-20.67]      153    39     36      3
6 months    ki1017093b-PROVIDE         (20.67-23.47]     153    48     47      1
6 months    ki1017093b-PROVIDE         >23.47            153    44     43      1
6 months    ki1017093c-NIH-Crypto      <=18.7            715    76     70      6
6 months    ki1017093c-NIH-Crypto      (18.7-20.67]      715   126    122      4
6 months    ki1017093c-NIH-Crypto      (20.67-23.47]     715   218    214      4
6 months    ki1017093c-NIH-Crypto      >23.47            715   295    286      9
6 months    ki1066203-TanzaniaChild2   <=18.7            496     5      5      0
6 months    ki1066203-TanzaniaChild2   (18.7-20.67]      496    51     50      1
6 months    ki1066203-TanzaniaChild2   (20.67-23.47]     496   126    124      2
6 months    ki1066203-TanzaniaChild2   >23.47            496   314    310      4
6 months    ki1126311-ZVITAMBO         <=18.7           1764    90     86      4
6 months    ki1126311-ZVITAMBO         (18.7-20.67]     1764   304    291     13
6 months    ki1126311-ZVITAMBO         (20.67-23.47]    1764   641    616     25
6 months    ki1126311-ZVITAMBO         >23.47           1764   729    710     19
6 months    ki1148112-LCNI-5           <=18.7            415    88     83      5
6 months    ki1148112-LCNI-5           (18.7-20.67]      415   137    128      9
6 months    ki1148112-LCNI-5           (20.67-23.47]     415   141    127     14
6 months    ki1148112-LCNI-5           >23.47            415    49     47      2
9 months    ki0047075b-MAL-ED          <=18.7           1633   126    114     12
9 months    ki0047075b-MAL-ED          (18.7-20.67]     1633   211    198     13
9 months    ki0047075b-MAL-ED          (20.67-23.47]    1633   449    428     21
9 months    ki0047075b-MAL-ED          >23.47           1633   847    821     26
9 months    ki1017093-NIH-Birth        <=18.7            507   103     85     18
9 months    ki1017093-NIH-Birth        (18.7-20.67]      507   135    121     14
9 months    ki1017093-NIH-Birth        (20.67-23.47]     507   156    149      7
9 months    ki1017093-NIH-Birth        >23.47            507   113    107      6
9 months    ki1017093b-PROVIDE         <=18.7            158    23     19      4
9 months    ki1017093b-PROVIDE         (18.7-20.67]      158    40     37      3
9 months    ki1017093b-PROVIDE         (20.67-23.47]     158    49     48      1
9 months    ki1017093b-PROVIDE         >23.47            158    46     45      1
9 months    ki1017093c-NIH-Crypto      <=18.7            706    75     68      7
9 months    ki1017093c-NIH-Crypto      (18.7-20.67]      706   127    121      6
9 months    ki1017093c-NIH-Crypto      (20.67-23.47]     706   213    207      6
9 months    ki1017093c-NIH-Crypto      >23.47            706   291    282      9
9 months    ki1066203-TanzaniaChild2   <=18.7            426     5      5      0
9 months    ki1066203-TanzaniaChild2   (18.7-20.67]      426    38     37      1
9 months    ki1066203-TanzaniaChild2   (20.67-23.47]     426   110    106      4
9 months    ki1066203-TanzaniaChild2   >23.47            426   273    271      2
9 months    ki1126311-ZVITAMBO         <=18.7           1670    93     85      8
9 months    ki1126311-ZVITAMBO         (18.7-20.67]     1670   291    278     13
9 months    ki1126311-ZVITAMBO         (20.67-23.47]    1670   607    576     31
9 months    ki1126311-ZVITAMBO         >23.47           1670   679    660     19
9 months    ki1148112-LCNI-5           <=18.7            320    71     69      2
9 months    ki1148112-LCNI-5           (18.7-20.67]      320   105    100      5
9 months    ki1148112-LCNI-5           (20.67-23.47]     320   109     99     10
9 months    ki1148112-LCNI-5           >23.47            320    35     34      1
12 months   ki0047075b-MAL-ED          <=18.7           1609   123    108     15
12 months   ki0047075b-MAL-ED          (18.7-20.67]     1609   208    188     20
12 months   ki0047075b-MAL-ED          (20.67-23.47]    1609   440    404     36
12 months   ki0047075b-MAL-ED          >23.47           1609   838    807     31
12 months   ki1017093-NIH-Birth        <=18.7            491   102     85     17
12 months   ki1017093-NIH-Birth        (18.7-20.67]      491   132    121     11
12 months   ki1017093-NIH-Birth        (20.67-23.47]     491   149    137     12
12 months   ki1017093-NIH-Birth        >23.47            491   108    100      8
12 months   ki1017093b-PROVIDE         <=18.7            153    22     16      6
12 months   ki1017093b-PROVIDE         (18.7-20.67]      153    38     33      5
12 months   ki1017093b-PROVIDE         (20.67-23.47]     153    48     46      2
12 months   ki1017093b-PROVIDE         >23.47            153    45     45      0
12 months   ki1017093c-NIH-Crypto      <=18.7            706    73     67      6
12 months   ki1017093c-NIH-Crypto      (18.7-20.67]      706   127    117     10
12 months   ki1017093c-NIH-Crypto      (20.67-23.47]     706   214    204     10
12 months   ki1017093c-NIH-Crypto      >23.47            706   292    277     15
12 months   ki1066203-TanzaniaChild2   <=18.7            349     4      4      0
12 months   ki1066203-TanzaniaChild2   (18.7-20.67]      349    32     32      0
12 months   ki1066203-TanzaniaChild2   (20.67-23.47]     349    91     90      1
12 months   ki1066203-TanzaniaChild2   >23.47            349   222    216      6
12 months   ki1126311-ZVITAMBO         <=18.7           1451    78     70      8
12 months   ki1126311-ZVITAMBO         (18.7-20.67]     1451   278    259     19
12 months   ki1126311-ZVITAMBO         (20.67-23.47]    1451   506    475     31
12 months   ki1126311-ZVITAMBO         >23.47           1451   589    568     21
12 months   ki1148112-LCNI-5           <=18.7            309    67     61      6
12 months   ki1148112-LCNI-5           (18.7-20.67]      309   107     93     14
12 months   ki1148112-LCNI-5           (20.67-23.47]     309   102     90     12
12 months   ki1148112-LCNI-5           >23.47            309    33     31      2
18 months   ki0047075b-MAL-ED          <=18.7           1540   120     95     25
18 months   ki0047075b-MAL-ED          (18.7-20.67]     1540   199    169     30
18 months   ki0047075b-MAL-ED          (20.67-23.47]    1540   421    355     66
18 months   ki0047075b-MAL-ED          >23.47           1540   800    736     64
18 months   ki1017093-NIH-Birth        <=18.7            463    95     64     31
18 months   ki1017093-NIH-Birth        (18.7-20.67]      463   122     97     25
18 months   ki1017093-NIH-Birth        (20.67-23.47]     463   141    118     23
18 months   ki1017093-NIH-Birth        >23.47            463   105     83     22
18 months   ki1017093b-PROVIDE         <=18.7            141    20     11      9
18 months   ki1017093b-PROVIDE         (18.7-20.67]      141    35     29      6
18 months   ki1017093b-PROVIDE         (20.67-23.47]     141    44     40      4
18 months   ki1017093b-PROVIDE         >23.47            141    42     41      1
18 months   ki1017093c-NIH-Crypto      <=18.7            634    66     58      8
18 months   ki1017093c-NIH-Crypto      (18.7-20.67]      634   118    106     12
18 months   ki1017093c-NIH-Crypto      (20.67-23.47]     634   187    176     11
18 months   ki1017093c-NIH-Crypto      >23.47            634   263    252     11
18 months   ki1066203-TanzaniaChild2   <=18.7            254     1      1      0
18 months   ki1066203-TanzaniaChild2   (18.7-20.67]      254    23     21      2
18 months   ki1066203-TanzaniaChild2   (20.67-23.47]     254    58     55      3
18 months   ki1066203-TanzaniaChild2   >23.47            254   172    162     10
18 months   ki1126311-ZVITAMBO         <=18.7            359    25     21      4
18 months   ki1126311-ZVITAMBO         (18.7-20.67]      359    81     67     14
18 months   ki1126311-ZVITAMBO         (20.67-23.47]     359   119     94     25
18 months   ki1126311-ZVITAMBO         >23.47            359   134    121     13
18 months   ki1148112-LCNI-5           <=18.7            355    74     63     11
18 months   ki1148112-LCNI-5           (18.7-20.67]      355   122    103     19
18 months   ki1148112-LCNI-5           (20.67-23.47]     355   116     98     18
18 months   ki1148112-LCNI-5           >23.47            355    43     39      4
24 months   ki0047075b-MAL-ED          <=18.7           1483   116     92     24
24 months   ki0047075b-MAL-ED          (18.7-20.67]     1483   188    156     32
24 months   ki0047075b-MAL-ED          (20.67-23.47]    1483   403    342     61
24 months   ki0047075b-MAL-ED          >23.47           1483   776    721     55
24 months   ki1017093-NIH-Birth        <=18.7            429    91     61     30
24 months   ki1017093-NIH-Birth        (18.7-20.67]      429   117     96     21
24 months   ki1017093-NIH-Birth        (20.67-23.47]     429   123    102     21
24 months   ki1017093-NIH-Birth        >23.47            429    98     77     21
24 months   ki1017093b-PROVIDE         <=18.7            149    22     15      7
24 months   ki1017093b-PROVIDE         (18.7-20.67]      149    36     30      6
24 months   ki1017093b-PROVIDE         (20.67-23.47]     149    47     43      4
24 months   ki1017093b-PROVIDE         >23.47            149    44     43      1
24 months   ki1017093c-NIH-Crypto      <=18.7            514    49     41      8
24 months   ki1017093c-NIH-Crypto      (18.7-20.67]      514    92     84      8
24 months   ki1017093c-NIH-Crypto      (20.67-23.47]     514   152    142     10
24 months   ki1017093c-NIH-Crypto      >23.47            514   221    212      9
24 months   ki1066203-TanzaniaChild2   <=18.7              2     0      0      0
24 months   ki1066203-TanzaniaChild2   (18.7-20.67]        2     1      1      0
24 months   ki1066203-TanzaniaChild2   (20.67-23.47]       2     0      0      0
24 months   ki1066203-TanzaniaChild2   >23.47              2     1      1      0
24 months   ki1126311-ZVITAMBO         <=18.7             96     6      4      2
24 months   ki1126311-ZVITAMBO         (18.7-20.67]       96    25     23      2
24 months   ki1126311-ZVITAMBO         (20.67-23.47]      96    31     23      8
24 months   ki1126311-ZVITAMBO         >23.47             96    34     27      7
24 months   ki1148112-LCNI-5           <=18.7            296    64     56      8
24 months   ki1148112-LCNI-5           (18.7-20.67]      296    97     85     12
24 months   ki1148112-LCNI-5           (20.67-23.47]     296    96     81     15
24 months   ki1148112-LCNI-5           >23.47            296    39     37      2

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO      <=18.7               NA                0.0454545   0.0099128   0.0809963
Birth       ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.0344037   0.0172919   0.0515155
Birth       ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.0354610   0.0229961   0.0479259
Birth       ki1126311-ZVITAMBO      >23.47               NA                0.0185759   0.0100727   0.0270790
3 months    ki0047075b-MAL-ED       <=18.7               NA                0.0681818   0.0251703   0.1111933
3 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.0436681   0.0171929   0.0701434
3 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.0372671   0.0203699   0.0541642
3 months    ki0047075b-MAL-ED       >23.47               NA                0.0306011   0.0194381   0.0417641
3 months    ki1017093-NIH-Birth     <=18.7               NA                0.0990991   0.0434650   0.1547332
3 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                0.0487805   0.0157838   0.0817772
3 months    ki1017093-NIH-Birth     (20.67-23.47]        NA                0.0526316   0.0191340   0.0861292
3 months    ki1017093-NIH-Birth     >23.47               NA                0.0403226   0.0056684   0.0749767
3 months    ki1017093c-NIH-Crypto   <=18.7               NA                0.0800000   0.0185595   0.1414405
3 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.0697674   0.0257754   0.1137595
3 months    ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.0400000   0.0143775   0.0656225
3 months    ki1017093c-NIH-Crypto   >23.47               NA                0.0301003   0.0107201   0.0494806
3 months    ki1126311-ZVITAMBO      <=18.7               NA                0.1250000   0.0588264   0.1911736
3 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.0597015   0.0343231   0.0850799
3 months    ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.0619597   0.0440187   0.0799007
3 months    ki1126311-ZVITAMBO      >23.47               NA                0.0313676   0.0192630   0.0434723
6 months    ki0047075b-MAL-ED       <=18.7               NA                0.0839695   0.0364626   0.1314764
6 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.0280374   0.0059134   0.0501614
6 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.0259179   0.0114407   0.0403951
6 months    ki0047075b-MAL-ED       >23.47               NA                0.0238636   0.0137767   0.0339506
9 months    ki0047075b-MAL-ED       <=18.7               NA                0.0952381   0.0439675   0.1465087
9 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.0616114   0.0291579   0.0940649
9 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.0467706   0.0272343   0.0663069
9 months    ki0047075b-MAL-ED       >23.47               NA                0.0306966   0.0190764   0.0423168
9 months    ki1017093-NIH-Birth     <=18.7               NA                0.1747573   0.1013453   0.2481692
9 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                0.1037037   0.0522244   0.1551830
9 months    ki1017093-NIH-Birth     (20.67-23.47]        NA                0.0448718   0.0123532   0.0773904
9 months    ki1017093-NIH-Birth     >23.47               NA                0.0530973   0.0117139   0.0944808
9 months    ki1017093c-NIH-Crypto   <=18.7               NA                0.0933333   0.0274512   0.1592154
9 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.0472441   0.0103193   0.0841689
9 months    ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.0281690   0.0059335   0.0504045
9 months    ki1017093c-NIH-Crypto   >23.47               NA                0.0309278   0.0110228   0.0508328
9 months    ki1126311-ZVITAMBO      <=18.7               NA                0.0860215   0.0290171   0.1430259
9 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.0446735   0.0209307   0.0684164
9 months    ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.0510708   0.0335527   0.0685889
9 months    ki1126311-ZVITAMBO      >23.47               NA                0.0279823   0.0155737   0.0403909
12 months   ki0047075b-MAL-ED       <=18.7               NA                0.1219512   0.0641039   0.1797985
12 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.0961538   0.0560781   0.1362296
12 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.0818182   0.0562001   0.1074362
12 months   ki0047075b-MAL-ED       >23.47               NA                0.0369928   0.0242098   0.0497759
12 months   ki1017093-NIH-Birth     <=18.7               NA                0.1666667   0.0942690   0.2390643
12 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.0833333   0.0361358   0.1305308
12 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.0805369   0.0367986   0.1242753
12 months   ki1017093-NIH-Birth     >23.47               NA                0.0740741   0.0246316   0.1235165
12 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.0821918   0.0191418   0.1452417
12 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.0787402   0.0318649   0.1256154
12 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.0467290   0.0184313   0.0750266
12 months   ki1017093c-NIH-Crypto   >23.47               NA                0.0513699   0.0260322   0.0767076
12 months   ki1126311-ZVITAMBO      <=18.7               NA                0.1025641   0.0352122   0.1699160
12 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.0683453   0.0386726   0.0980180
12 months   ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.0612648   0.0403623   0.0821674
12 months   ki1126311-ZVITAMBO      >23.47               NA                0.0356537   0.0206738   0.0506335
18 months   ki0047075b-MAL-ED       <=18.7               NA                0.2083333   0.1356476   0.2810191
18 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.1507538   0.1010243   0.2004832
18 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.1567696   0.1220278   0.1915114
18 months   ki0047075b-MAL-ED       >23.47               NA                0.0800000   0.0611946   0.0988054
18 months   ki1017093-NIH-Birth     <=18.7               NA                0.3263158   0.2319308   0.4207008
18 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.2049180   0.1332156   0.2766204
18 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.1631206   0.1020694   0.2241717
18 months   ki1017093-NIH-Birth     >23.47               NA                0.2095238   0.1315975   0.2874501
18 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.1212121   0.0424107   0.2000135
18 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.1016949   0.0471177   0.1562721
18 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.0588235   0.0250730   0.0925741
18 months   ki1017093c-NIH-Crypto   >23.47               NA                0.0418251   0.0176118   0.0660384
24 months   ki0047075b-MAL-ED       <=18.7               NA                0.2068966   0.1331559   0.2806372
24 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.1702128   0.1164731   0.2239524
24 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.1513648   0.1163610   0.1863685
24 months   ki0047075b-MAL-ED       >23.47               NA                0.0708763   0.0528149   0.0889377
24 months   ki1017093-NIH-Birth     <=18.7               NA                0.3296703   0.2329721   0.4263685
24 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.1794872   0.1098692   0.2491051
24 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.1707317   0.1041574   0.2373061
24 months   ki1017093-NIH-Birth     >23.47               NA                0.2142857   0.1329520   0.2956195
24 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.1632653   0.0596763   0.2668543
24 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.0869565   0.0293232   0.1445899
24 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.0657895   0.0263392   0.1052397
24 months   ki1017093c-NIH-Crypto   >23.47               NA                0.0407240   0.0146401   0.0668078


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO      NA                   NA                0.0289551   0.0285974   0.0293128
3 months    ki0047075b-MAL-ED       NA                   NA                0.0369528   0.0364852   0.0374204
3 months    ki1017093-NIH-Birth     NA                   NA                0.0578947   0.0561909   0.0595986
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.0453297   0.0440018   0.0466575
3 months    ki1126311-ZVITAMBO      NA                   NA                0.0520291   0.0510404   0.0530179
6 months    ki0047075b-MAL-ED       NA                   NA                0.0296209   0.0288655   0.0303762
9 months    ki0047075b-MAL-ED       NA                   NA                0.0440906   0.0432006   0.0449807
9 months    ki1017093-NIH-Birth     NA                   NA                0.0887574   0.0844552   0.0930596
9 months    ki1017093c-NIH-Crypto   NA                   NA                0.0396601   0.0382067   0.0411134
9 months    ki1126311-ZVITAMBO      NA                   NA                0.0425150   0.0418055   0.0432245
12 months   ki0047075b-MAL-ED       NA                   NA                0.0633934   0.0619628   0.0648240
12 months   ki1017093-NIH-Birth     NA                   NA                0.0977597   0.0946220   0.1008973
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.0580737   0.0570440   0.0591033
12 months   ki1126311-ZVITAMBO      NA                   NA                0.0544452   0.0535230   0.0553675
18 months   ki0047075b-MAL-ED       NA                   NA                0.1201299   0.1179344   0.1223253
18 months   ki1017093-NIH-Birth     NA                   NA                0.2181425   0.2128366   0.2234485
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.0662461   0.0640261   0.0684660
24 months   ki0047075b-MAL-ED       NA                   NA                0.1159811   0.1134744   0.1184878
24 months   ki1017093-NIH-Birth     NA                   NA                0.2167832   0.2110267   0.2225397
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.0680934   0.0650329   0.0711538


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.7568807   0.2996147   1.9120169
Birth       ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.7801418   0.3310201   1.8386233
Birth       ki1126311-ZVITAMBO      >23.47               <=18.7            0.4086687   0.1651493   1.0112676
3 months    ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.6404658   0.2669999   1.5363168
3 months    ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.5465839   0.2513422   1.1886343
3 months    ki0047075b-MAL-ED       >23.47               <=18.7            0.4488160   0.2165666   0.9301333
3 months    ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.4922395   0.2043664   1.1856141
3 months    ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.5311005   0.2273020   1.2409380
3 months    ki1017093-NIH-Birth     >23.47               <=18.7            0.4068915   0.1457671   1.1357891
3 months    ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.8720930   0.3228542   2.3556954
3 months    ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.5000000   0.1839256   1.3592450
3 months    ki1017093c-NIH-Crypto   >23.47               <=18.7            0.3762542   0.1381134   1.0250070
3 months    ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.4776119   0.2422243   0.9417436
3 months    ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.4956772   0.2711089   0.9062628
3 months    ki1126311-ZVITAMBO      >23.47               <=18.7            0.2509410   0.1303351   0.4831500
6 months    ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.3338997   0.1264551   0.8816491
6 months    ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.3086589   0.1393781   0.6835386
6 months    ki0047075b-MAL-ED       >23.47               <=18.7            0.2841942   0.1402506   0.5758715
9 months    ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.6469194   0.3046145   1.3738831
9 months    ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.4910913   0.2484502   0.9707003
9 months    ki0047075b-MAL-ED       >23.47               <=18.7            0.3223140   0.1669032   0.6224348
9 months    ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.5934156   0.3096978   1.1370506
9 months    ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.2567664   0.1111095   0.5933692
9 months    ki1017093-NIH-Birth     >23.47               <=18.7            0.3038348   0.1253482   0.7364731
9 months    ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.5061867   0.1765766   1.4510700
9 months    ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.3018109   0.1046749   0.8702164
9 months    ki1017093c-NIH-Crypto   >23.47               <=18.7            0.3313697   0.1274847   0.8613260
9 months    ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.5193299   0.2220864   1.2144084
9 months    ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.5936985   0.2815139   1.2520800
9 months    ki1126311-ZVITAMBO      >23.47               <=18.7            0.3252946   0.1465508   0.7220470
12 months   ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.7884615   0.4193234   1.4825590
12 months   ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.6709091   0.3800355   1.1844130
12 months   ki0047075b-MAL-ED       >23.47               <=18.7            0.3033413   0.1686778   0.5455129
12 months   ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.5000000   0.2448974   1.0208358
12 months   ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.4832215   0.2410583   0.9686579
12 months   ki1017093-NIH-Birth     >23.47               <=18.7            0.4444444   0.2004272   0.9855493
12 months   ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.9580052   0.3627981   2.5297101
12 months   ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.5685358   0.2139489   1.5107954
12 months   ki1017093c-NIH-Crypto   >23.47               <=18.7            0.6250000   0.2510755   1.5558068
12 months   ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.6663669   0.3032674   1.4642022
12 months   ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.5973320   0.2849884   1.2520003
12 months   ki1126311-ZVITAMBO      >23.47               <=18.7            0.3476231   0.1594183   0.7580172
18 months   ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.7236181   0.4476972   1.1695921
18 months   ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.7524941   0.4977358   1.1376463
18 months   ki0047075b-MAL-ED       >23.47               <=18.7            0.3840000   0.2521313   0.5848380
18 months   ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.6279746   0.3988239   0.9887877
18 months   ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.4998856   0.3114900   0.8022268
18 months   ki1017093-NIH-Birth     >23.47               <=18.7            0.6420891   0.4008437   1.0285266
18 months   ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.8389831   0.3611092   1.9492514
18 months   ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.4852941   0.2039072   1.1549880
18 months   ki1017093c-NIH-Crypto   >23.47               <=18.7            0.3450571   0.1444882   0.8240421
24 months   ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.8226950   0.5110385   1.3244151
24 months   ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.7315964   0.4783609   1.1188901
24 months   ki0047075b-MAL-ED       >23.47               <=18.7            0.3425687   0.2210370   0.5309217
24 months   ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.5444444   0.3347802   0.8854161
24 months   ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.5178862   0.3179251   0.8436140
24 months   ki1017093-NIH-Birth     >23.47               <=18.7            0.6500000   0.4023353   1.0501192
24 months   ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.5326087   0.2127809   1.3331650
24 months   ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.4029605   0.1683141   0.9647274
24 months   ki1017093c-NIH-Crypto   >23.47               <=18.7            0.2494344   0.1012542   0.6144684


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO      <=18.7               NA                -0.0164994   -0.0520430    0.0190441
3 months    ki0047075b-MAL-ED       <=18.7               NA                -0.0312290   -0.0742430    0.0117850
3 months    ki1017093-NIH-Birth     <=18.7               NA                -0.0412044   -0.0968646    0.0144558
3 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.0346703   -0.0961252    0.0267845
3 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.0729709   -0.1391518   -0.0067899
6 months    ki0047075b-MAL-ED       <=18.7               NA                -0.0543486   -0.1018615   -0.0068357
9 months    ki0047075b-MAL-ED       <=18.7               NA                -0.0511475   -0.1024258    0.0001309
9 months    ki1017093-NIH-Birth     <=18.7               NA                -0.0859999   -0.1595378   -0.0124620
9 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.0536733   -0.1195714    0.0122249
9 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.0435065   -0.1005153    0.0135023
12 months   ki0047075b-MAL-ED       <=18.7               NA                -0.0585578   -0.1164228   -0.0006928
12 months   ki1017093-NIH-Birth     <=18.7               NA                -0.0689070   -0.1413726    0.0035586
12 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.0241181   -0.0871765    0.0389402
12 months   ki1126311-ZVITAMBO      <=18.7               NA                -0.0481189   -0.1154771    0.0192393
18 months   ki0047075b-MAL-ED       <=18.7               NA                -0.0882035   -0.1609223   -0.0154846
18 months   ki1017093-NIH-Birth     <=18.7               NA                -0.1081732   -0.2027073   -0.0136392
18 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.0549661   -0.1337987    0.0238666
24 months   ki0047075b-MAL-ED       <=18.7               NA                -0.0909154   -0.1646987   -0.0171322
24 months   ki1017093-NIH-Birth     <=18.7               NA                -0.1128871   -0.2097565   -0.0160177
24 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.0951719   -0.1988061    0.0084623


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO      <=18.7               NA                -0.5698287   -2.4314516    0.2818310
3 months    ki0047075b-MAL-ED       <=18.7               NA                -0.8451049   -2.4677232    0.0182572
3 months    ki1017093-NIH-Birth     <=18.7               NA                -0.7117117   -2.0031556    0.0243740
3 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.7648485   -2.8061940    0.1816786
3 months    ki1126311-ZVITAMBO      <=18.7               NA                -1.4025000   -3.0805808   -0.4145061
6 months    ki0047075b-MAL-ED       <=18.7               NA                -1.8348092   -3.9943796   -0.6090373
9 months    ki0047075b-MAL-ED       <=18.7               NA                -1.1600529   -2.7019225   -0.2603799
9 months    ki1017093-NIH-Birth     <=18.7               NA                -0.9689320   -2.0052416   -0.2899773
9 months    ki1017093c-NIH-Crypto   <=18.7               NA                -1.3533333   -3.7715110   -0.1606759
9 months    ki1126311-ZVITAMBO      <=18.7               NA                -1.0233227   -2.9260233   -0.0427434
12 months   ki0047075b-MAL-ED       <=18.7               NA                -0.9237207   -2.0930120   -0.1964717
12 months   ki1017093-NIH-Birth     <=18.7               NA                -0.7048611   -1.6354492   -0.1028676
12 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.4153024   -2.0485180    0.3429329
12 months   ki1126311-ZVITAMBO      <=18.7               NA                -0.8838040   -2.6334865    0.0233300
18 months   ki0047075b-MAL-ED       <=18.7               NA                -0.7342342   -1.4594450   -0.2228647
18 months   ki1017093-NIH-Birth     <=18.7               NA                -0.4958833   -0.9996699   -0.1190181
18 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.8297258   -2.5083322    0.0457299
24 months   ki0047075b-MAL-ED       <=18.7               NA                -0.7838813   -1.5494037   -0.2482262
24 months   ki1017093-NIH-Birth     <=18.7               NA                -0.5207373   -1.0415568   -0.1327836
24 months   ki1017093c-NIH-Crypto   <=18.7               NA                -1.3976676   -3.5293078   -0.2692469


