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

* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/d2f460c8-5c8c-41c5-af37-51cadab3116e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d2f460c8-5c8c-41c5-af37-51cadab3116e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/d2f460c8-5c8c-41c5-af37-51cadab3116e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d2f460c8-5c8c-41c5-af37-51cadab3116e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                   n    nA   nAY0   nAY1
----------  -------------------------  --------------  -----  ----  -----  -----
12 months   ki0047075b-MAL-ED          (18.7-20.67]     1609   208    148     60
12 months   ki0047075b-MAL-ED          (20.67-23.47]    1609   440    303    137
12 months   ki0047075b-MAL-ED          <=18.7           1609   123     74     49
12 months   ki0047075b-MAL-ED          >23.47           1609   838    650    188
12 months   ki1017093-NIH-Birth        (18.7-20.67]      491   132     86     46
12 months   ki1017093-NIH-Birth        (20.67-23.47]     491   149     98     51
12 months   ki1017093-NIH-Birth        <=18.7            491   102     48     54
12 months   ki1017093-NIH-Birth        >23.47            491   108     75     33
12 months   ki1017093b-PROVIDE         (18.7-20.67]      153    38     24     14
12 months   ki1017093b-PROVIDE         (20.67-23.47]     153    48     37     11
12 months   ki1017093b-PROVIDE         <=18.7            153    22      9     13
12 months   ki1017093b-PROVIDE         >23.47            153    45     39      6
12 months   ki1017093c-NIH-Crypto      (18.7-20.67]      706   127     98     29
12 months   ki1017093c-NIH-Crypto      (20.67-23.47]     706   214    159     55
12 months   ki1017093c-NIH-Crypto      <=18.7            706    73     43     30
12 months   ki1017093c-NIH-Crypto      >23.47            706   292    235     57
12 months   ki1066203-TanzaniaChild2   (18.7-20.67]      349    32     30      2
12 months   ki1066203-TanzaniaChild2   (20.67-23.47]     349    91     75     16
12 months   ki1066203-TanzaniaChild2   <=18.7            349     4      4      0
12 months   ki1066203-TanzaniaChild2   >23.47            349   222    188     34
12 months   ki1126311-ZVITAMBO         (18.7-20.67]     1451   278    197     81
12 months   ki1126311-ZVITAMBO         (20.67-23.47]    1451   506    393    113
12 months   ki1126311-ZVITAMBO         <=18.7           1451    78     52     26
12 months   ki1126311-ZVITAMBO         >23.47           1451   589    465    124
12 months   ki1148112-LCNI-5           (18.7-20.67]      309   107     69     38
12 months   ki1148112-LCNI-5           (20.67-23.47]     309   102     55     47
12 months   ki1148112-LCNI-5           <=18.7            309    67     33     34
12 months   ki1148112-LCNI-5           >23.47            309    33     25      8
18 months   ki0047075b-MAL-ED          (18.7-20.67]     1540   199    110     89
18 months   ki0047075b-MAL-ED          (20.67-23.47]    1540   421    230    191
18 months   ki0047075b-MAL-ED          <=18.7           1540   120     54     66
18 months   ki0047075b-MAL-ED          >23.47           1540   800    551    249
18 months   ki1017093-NIH-Birth        (18.7-20.67]      463   122     52     70
18 months   ki1017093-NIH-Birth        (20.67-23.47]     463   141     64     77
18 months   ki1017093-NIH-Birth        <=18.7            463    95     22     73
18 months   ki1017093-NIH-Birth        >23.47            463   105     53     52
18 months   ki1017093b-PROVIDE         (18.7-20.67]      141    35     20     15
18 months   ki1017093b-PROVIDE         (20.67-23.47]     141    44     29     15
18 months   ki1017093b-PROVIDE         <=18.7            141    20      7     13
18 months   ki1017093b-PROVIDE         >23.47            141    42     33      9
18 months   ki1017093c-NIH-Crypto      (18.7-20.67]      634   118     79     39
18 months   ki1017093c-NIH-Crypto      (20.67-23.47]     634   187    134     53
18 months   ki1017093c-NIH-Crypto      <=18.7            634    66     34     32
18 months   ki1017093c-NIH-Crypto      >23.47            634   263    196     67
18 months   ki1066203-TanzaniaChild2   (18.7-20.67]      254    23     17      6
18 months   ki1066203-TanzaniaChild2   (20.67-23.47]     254    58     41     17
18 months   ki1066203-TanzaniaChild2   <=18.7            254     1      1      0
18 months   ki1066203-TanzaniaChild2   >23.47            254   172    128     44
18 months   ki1126311-ZVITAMBO         (18.7-20.67]      359    81     37     44
18 months   ki1126311-ZVITAMBO         (20.67-23.47]     359   119     58     61
18 months   ki1126311-ZVITAMBO         <=18.7            359    25     14     11
18 months   ki1126311-ZVITAMBO         >23.47            359   134     77     57
18 months   ki1148112-LCNI-5           (18.7-20.67]      355   122     63     59
18 months   ki1148112-LCNI-5           (20.67-23.47]     355   116     65     51
18 months   ki1148112-LCNI-5           <=18.7            355    74     27     47
18 months   ki1148112-LCNI-5           >23.47            355    43     26     17
24 months   ki0047075b-MAL-ED          (18.7-20.67]     1483   188    105     83
24 months   ki0047075b-MAL-ED          (20.67-23.47]    1483   403    221    182
24 months   ki0047075b-MAL-ED          <=18.7           1483   116     55     61
24 months   ki0047075b-MAL-ED          >23.47           1483   776    546    230
24 months   ki1017093-NIH-Birth        (18.7-20.67]      429   117     57     60
24 months   ki1017093-NIH-Birth        (20.67-23.47]     429   123     59     64
24 months   ki1017093-NIH-Birth        <=18.7            429    91     24     67
24 months   ki1017093-NIH-Birth        >23.47            429    98     51     47
24 months   ki1017093b-PROVIDE         (18.7-20.67]      149    36     21     15
24 months   ki1017093b-PROVIDE         (20.67-23.47]     149    47     32     15
24 months   ki1017093b-PROVIDE         <=18.7            149    22      8     14
24 months   ki1017093b-PROVIDE         >23.47            149    44     39      5
24 months   ki1017093c-NIH-Crypto      (18.7-20.67]      514    92     62     30
24 months   ki1017093c-NIH-Crypto      (20.67-23.47]     514   152    112     40
24 months   ki1017093c-NIH-Crypto      <=18.7            514    49     29     20
24 months   ki1017093c-NIH-Crypto      >23.47            514   221    179     42
24 months   ki1066203-TanzaniaChild2   (18.7-20.67]        2     1      1      0
24 months   ki1066203-TanzaniaChild2   (20.67-23.47]       2     0      0      0
24 months   ki1066203-TanzaniaChild2   <=18.7              2     0      0      0
24 months   ki1066203-TanzaniaChild2   >23.47              2     1      1      0
24 months   ki1126311-ZVITAMBO         (18.7-20.67]       96    25      8     17
24 months   ki1126311-ZVITAMBO         (20.67-23.47]      96    31     13     18
24 months   ki1126311-ZVITAMBO         <=18.7             96     6      2      4
24 months   ki1126311-ZVITAMBO         >23.47             96    34     15     19
24 months   ki1148112-LCNI-5           (18.7-20.67]      296    97     55     42
24 months   ki1148112-LCNI-5           (20.67-23.47]     296    96     51     45
24 months   ki1148112-LCNI-5           <=18.7            296    64     29     35
24 months   ki1148112-LCNI-5           >23.47            296    39     31      8
3 months    ki0047075b-MAL-ED          (18.7-20.67]     1759   229    190     39
3 months    ki0047075b-MAL-ED          (20.67-23.47]    1759   483    407     76
3 months    ki0047075b-MAL-ED          <=18.7           1759   132    105     27
3 months    ki0047075b-MAL-ED          >23.47           1759   915    786    129
3 months    ki1017093-NIH-Birth        (18.7-20.67]      570   164    130     34
3 months    ki1017093-NIH-Birth        (20.67-23.47]     570   171    140     31
3 months    ki1017093-NIH-Birth        <=18.7            570   111     75     36
3 months    ki1017093-NIH-Birth        >23.47            570   124     95     29
3 months    ki1017093b-PROVIDE         (18.7-20.67]      168    40     35      5
3 months    ki1017093b-PROVIDE         (20.67-23.47]     168    51     47      4
3 months    ki1017093b-PROVIDE         <=18.7            168    26     20      6
3 months    ki1017093b-PROVIDE         >23.47            168    51     46      5
3 months    ki1017093c-NIH-Crypto      (18.7-20.67]      728   129     99     30
3 months    ki1017093c-NIH-Crypto      (20.67-23.47]     728   225    183     42
3 months    ki1017093c-NIH-Crypto      <=18.7            728    75     51     24
3 months    ki1017093c-NIH-Crypto      >23.47            728   299    239     60
3 months    ki1066203-TanzaniaChild2   (18.7-20.67]      566    59     53      6
3 months    ki1066203-TanzaniaChild2   (20.67-23.47]     566   148    136     12
3 months    ki1066203-TanzaniaChild2   <=18.7            566     5      5      0
3 months    ki1066203-TanzaniaChild2   >23.47            566   354    333     21
3 months    ki1126311-ZVITAMBO         (18.7-20.67]     1922   335    255     80
3 months    ki1126311-ZVITAMBO         (20.67-23.47]    1922   694    565    129
3 months    ki1126311-ZVITAMBO         <=18.7           1922    96     67     29
3 months    ki1126311-ZVITAMBO         >23.47           1922   797    701     96
3 months    ki1148112-LCNI-5           (18.7-20.67]        0     0      0      0
3 months    ki1148112-LCNI-5           (20.67-23.47]       0     0      0      0
3 months    ki1148112-LCNI-5           <=18.7              0     0      0      0
3 months    ki1148112-LCNI-5           >23.47              0     0      0      0
6 months    ki0047075b-MAL-ED          (18.7-20.67]     1688   214    171     43
6 months    ki0047075b-MAL-ED          (20.67-23.47]    1688   463    379     84
6 months    ki0047075b-MAL-ED          <=18.7           1688   131    101     30
6 months    ki0047075b-MAL-ED          >23.47           1688   880    761    119
6 months    ki1017093-NIH-Birth        (18.7-20.67]      537   151    113     38
6 months    ki1017093-NIH-Birth        (20.67-23.47]     537   161    123     38
6 months    ki1017093-NIH-Birth        <=18.7            537   108     65     43
6 months    ki1017093-NIH-Birth        >23.47            537   117     92     25
6 months    ki1017093b-PROVIDE         (18.7-20.67]      153    39     31      8
6 months    ki1017093b-PROVIDE         (20.67-23.47]     153    48     41      7
6 months    ki1017093b-PROVIDE         <=18.7            153    22     16      6
6 months    ki1017093b-PROVIDE         >23.47            153    44     37      7
6 months    ki1017093c-NIH-Crypto      (18.7-20.67]      715   126     98     28
6 months    ki1017093c-NIH-Crypto      (20.67-23.47]     715   218    181     37
6 months    ki1017093c-NIH-Crypto      <=18.7            715    76     46     30
6 months    ki1017093c-NIH-Crypto      >23.47            715   295    240     55
6 months    ki1066203-TanzaniaChild2   (18.7-20.67]      496    51     46      5
6 months    ki1066203-TanzaniaChild2   (20.67-23.47]     496   126    114     12
6 months    ki1066203-TanzaniaChild2   <=18.7            496     5      5      0
6 months    ki1066203-TanzaniaChild2   >23.47            496   314    286     28
6 months    ki1126311-ZVITAMBO         (18.7-20.67]     1764   304    248     56
6 months    ki1126311-ZVITAMBO         (20.67-23.47]    1764   641    536    105
6 months    ki1126311-ZVITAMBO         <=18.7           1764    90     69     21
6 months    ki1126311-ZVITAMBO         >23.47           1764   729    626    103
6 months    ki1148112-LCNI-5           (18.7-20.67]      415   137     88     49
6 months    ki1148112-LCNI-5           (20.67-23.47]     415   141     88     53
6 months    ki1148112-LCNI-5           <=18.7            415    88     47     41
6 months    ki1148112-LCNI-5           >23.47            415    49     39     10
9 months    ki0047075b-MAL-ED          (18.7-20.67]     1633   211    167     44
9 months    ki0047075b-MAL-ED          (20.67-23.47]    1633   449    344    105
9 months    ki0047075b-MAL-ED          <=18.7           1633   126     87     39
9 months    ki0047075b-MAL-ED          >23.47           1633   847    697    150
9 months    ki1017093-NIH-Birth        (18.7-20.67]      507   135     90     45
9 months    ki1017093-NIH-Birth        (20.67-23.47]     507   156    100     56
9 months    ki1017093-NIH-Birth        <=18.7            507   103     56     47
9 months    ki1017093-NIH-Birth        >23.47            507   113     80     33
9 months    ki1017093b-PROVIDE         (18.7-20.67]      158    40     28     12
9 months    ki1017093b-PROVIDE         (20.67-23.47]     158    49     42      7
9 months    ki1017093b-PROVIDE         <=18.7            158    23     12     11
9 months    ki1017093b-PROVIDE         >23.47            158    46     39      7
9 months    ki1017093c-NIH-Crypto      (18.7-20.67]      706   127     93     34
9 months    ki1017093c-NIH-Crypto      (20.67-23.47]     706   213    163     50
9 months    ki1017093c-NIH-Crypto      <=18.7            706    75     48     27
9 months    ki1017093c-NIH-Crypto      >23.47            706   291    238     53
9 months    ki1066203-TanzaniaChild2   (18.7-20.67]      426    38     34      4
9 months    ki1066203-TanzaniaChild2   (20.67-23.47]     426   110     93     17
9 months    ki1066203-TanzaniaChild2   <=18.7            426     5      5      0
9 months    ki1066203-TanzaniaChild2   >23.47            426   273    231     42
9 months    ki1126311-ZVITAMBO         (18.7-20.67]     1670   291    226     65
9 months    ki1126311-ZVITAMBO         (20.67-23.47]    1670   607    483    124
9 months    ki1126311-ZVITAMBO         <=18.7           1670    93     61     32
9 months    ki1126311-ZVITAMBO         >23.47           1670   679    576    103
9 months    ki1148112-LCNI-5           (18.7-20.67]      320   105     80     25
9 months    ki1148112-LCNI-5           (20.67-23.47]     320   109     75     34
9 months    ki1148112-LCNI-5           <=18.7            320    71     38     33
9 months    ki1148112-LCNI-5           >23.47            320    35     26      9
Birth       ki0047075b-MAL-ED          (18.7-20.67]     1425   176    146     30
Birth       ki0047075b-MAL-ED          (20.67-23.47]    1425   381    332     49
Birth       ki0047075b-MAL-ED          <=18.7           1425   105     84     21
Birth       ki0047075b-MAL-ED          >23.47           1425   763    678     85
Birth       ki1017093-NIH-Birth        (18.7-20.67]       28     9      9      0
Birth       ki1017093-NIH-Birth        (20.67-23.47]      28     6      5      1
Birth       ki1017093-NIH-Birth        <=18.7             28    10     10      0
Birth       ki1017093-NIH-Birth        >23.47             28     3      3      0
Birth       ki1017093b-PROVIDE         (18.7-20.67]        0     0      0      0
Birth       ki1017093b-PROVIDE         (20.67-23.47]       0     0      0      0
Birth       ki1017093b-PROVIDE         <=18.7              0     0      0      0
Birth       ki1017093b-PROVIDE         >23.47              0     0      0      0
Birth       ki1017093c-NIH-Crypto      (18.7-20.67]       27     5      3      2
Birth       ki1017093c-NIH-Crypto      (20.67-23.47]      27     8      6      2
Birth       ki1017093c-NIH-Crypto      <=18.7             27     7      6      1
Birth       ki1017093c-NIH-Crypto      >23.47             27     7      7      0
Birth       ki1066203-TanzaniaChild2   (18.7-20.67]        0     0      0      0
Birth       ki1066203-TanzaniaChild2   (20.67-23.47]       0     0      0      0
Birth       ki1066203-TanzaniaChild2   <=18.7              0     0      0      0
Birth       ki1066203-TanzaniaChild2   >23.47              0     0      0      0
Birth       ki1126311-ZVITAMBO         (18.7-20.67]     2383   436    384     52
Birth       ki1126311-ZVITAMBO         (20.67-23.47]    2383   846    756     90
Birth       ki1126311-ZVITAMBO         <=18.7           2383   132    115     17
Birth       ki1126311-ZVITAMBO         >23.47           2383   969    893     76
Birth       ki1148112-LCNI-5           (18.7-20.67]        0     0      0      0
Birth       ki1148112-LCNI-5           (20.67-23.47]       0     0      0      0
Birth       ki1148112-LCNI-5           <=18.7              0     0      0      0
Birth       ki1148112-LCNI-5           >23.47              0     0      0      0

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.2884615   0.2268738   0.3500493
12 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.3113636   0.2680838   0.3546435
12 months   ki0047075b-MAL-ED       <=18.7               NA                0.3983740   0.3118295   0.4849185
12 months   ki0047075b-MAL-ED       >23.47               NA                0.2243437   0.1960914   0.2525959
12 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.3484848   0.2671160   0.4298537
12 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.3422819   0.2660196   0.4185441
12 months   ki1017093-NIH-Birth     <=18.7               NA                0.5294118   0.4324483   0.6263752
12 months   ki1017093-NIH-Birth     >23.47               NA                0.3055556   0.2185909   0.3925202
12 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                0.3684211   0.2145467   0.5222954
12 months   ki1017093b-PROVIDE      (20.67-23.47]        NA                0.2291667   0.1098758   0.3484576
12 months   ki1017093b-PROVIDE      <=18.7               NA                0.5909091   0.3847840   0.7970342
12 months   ki1017093b-PROVIDE      >23.47               NA                0.1333333   0.0336870   0.2329796
12 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.2283465   0.1552894   0.3014035
12 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.2570093   0.1984205   0.3155982
12 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.4109589   0.2980141   0.5239038
12 months   ki1017093c-NIH-Crypto   >23.47               NA                0.1952055   0.1497116   0.2406994
12 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.2913669   0.2379343   0.3447995
12 months   ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.2233202   0.1870201   0.2596202
12 months   ki1126311-ZVITAMBO      <=18.7               NA                0.3333333   0.2286821   0.4379845
12 months   ki1126311-ZVITAMBO      >23.47               NA                0.2105263   0.1775910   0.2434617
12 months   ki1148112-LCNI-5        (18.7-20.67]         NA                0.3551402   0.2643179   0.4459625
12 months   ki1148112-LCNI-5        (20.67-23.47]        NA                0.4607843   0.3638936   0.5576750
12 months   ki1148112-LCNI-5        <=18.7               NA                0.5074627   0.3875580   0.6273674
12 months   ki1148112-LCNI-5        >23.47               NA                0.2424242   0.0959720   0.3888765
18 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.4472362   0.3781325   0.5163398
18 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.4536817   0.4061102   0.5012532
18 months   ki0047075b-MAL-ED       <=18.7               NA                0.5500000   0.4609598   0.6390402
18 months   ki0047075b-MAL-ED       >23.47               NA                0.3112500   0.2791556   0.3433444
18 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.5737705   0.4859232   0.6616178
18 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.5460993   0.4638326   0.6283660
18 months   ki1017093-NIH-Birth     <=18.7               NA                0.7684211   0.6835020   0.8533401
18 months   ki1017093-NIH-Birth     >23.47               NA                0.4952381   0.3995025   0.5909736
18 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                0.4285714   0.2640387   0.5931041
18 months   ki1017093b-PROVIDE      (20.67-23.47]        NA                0.3409091   0.2003499   0.4814683
18 months   ki1017093b-PROVIDE      <=18.7               NA                0.6500000   0.4402175   0.8597825
18 months   ki1017093b-PROVIDE      >23.47               NA                0.2142857   0.0897489   0.3388226
18 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.3305085   0.2455682   0.4154488
18 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.2834225   0.2187799   0.3480651
18 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.4848485   0.3641812   0.6055157
18 months   ki1017093c-NIH-Crypto   >23.47               NA                0.2547529   0.2020514   0.3074543
18 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.5432099   0.4345790   0.6518408
18 months   ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.5126050   0.4226735   0.6025366
18 months   ki1126311-ZVITAMBO      <=18.7               NA                0.4400000   0.2451483   0.6348517
18 months   ki1126311-ZVITAMBO      >23.47               NA                0.4253731   0.3415470   0.5091993
18 months   ki1148112-LCNI-5        (18.7-20.67]         NA                0.4836066   0.3948057   0.5724074
18 months   ki1148112-LCNI-5        (20.67-23.47]        NA                0.4396552   0.3492037   0.5301066
18 months   ki1148112-LCNI-5        <=18.7               NA                0.6351351   0.5252993   0.7449709
18 months   ki1148112-LCNI-5        >23.47               NA                0.3953488   0.2490068   0.5416909
24 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.4414894   0.3704839   0.5124948
24 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.4516129   0.4030093   0.5002165
24 months   ki0047075b-MAL-ED       <=18.7               NA                0.5258621   0.4349642   0.6167600
24 months   ki0047075b-MAL-ED       >23.47               NA                0.2963918   0.2642505   0.3285330
24 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.5128205   0.4221452   0.6034958
24 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.5203252   0.4319332   0.6087172
24 months   ki1017093-NIH-Birth     <=18.7               NA                0.7362637   0.6456204   0.8269071
24 months   ki1017093-NIH-Birth     >23.47               NA                0.4795918   0.3805657   0.5786180
24 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                0.4166667   0.2550776   0.5782557
24 months   ki1017093b-PROVIDE      (20.67-23.47]        NA                0.3191489   0.1854327   0.4528652
24 months   ki1017093b-PROVIDE      <=18.7               NA                0.6363636   0.4346732   0.8380541
24 months   ki1017093b-PROVIDE      >23.47               NA                0.1136364   0.0195452   0.2077275
24 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.3260870   0.2302031   0.4219709
24 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.2631579   0.1930859   0.3332299
24 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.4081633   0.2704135   0.5459130
24 months   ki1017093c-NIH-Crypto   >23.47               NA                0.1900452   0.1382686   0.2418219
24 months   ki1148112-LCNI-5        (18.7-20.67]         NA                0.4329897   0.3342183   0.5317611
24 months   ki1148112-LCNI-5        (20.67-23.47]        NA                0.4687500   0.3687575   0.5687425
24 months   ki1148112-LCNI-5        <=18.7               NA                0.5468750   0.4247102   0.6690398
24 months   ki1148112-LCNI-5        >23.47               NA                0.2051282   0.0781843   0.3320721
3 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.1703057   0.1216058   0.2190055
3 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.1573499   0.1248670   0.1898328
3 months    ki0047075b-MAL-ED       <=18.7               NA                0.2045455   0.1357140   0.2733770
3 months    ki0047075b-MAL-ED       >23.47               NA                0.1409836   0.1184284   0.1635388
3 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                0.2073171   0.1452195   0.2694147
3 months    ki1017093-NIH-Birth     (20.67-23.47]        NA                0.1812865   0.1234929   0.2390802
3 months    ki1017093-NIH-Birth     <=18.7               NA                0.3243243   0.2371624   0.4114862
3 months    ki1017093-NIH-Birth     >23.47               NA                0.2338710   0.1593021   0.3084399
3 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.2325581   0.1596056   0.3055106
3 months    ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.1866667   0.1357192   0.2376142
3 months    ki1017093c-NIH-Crypto   <=18.7               NA                0.3200000   0.2143559   0.4256441
3 months    ki1017093c-NIH-Crypto   >23.47               NA                0.2006689   0.1552419   0.2460959
3 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.2388060   0.1931383   0.2844737
3 months    ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.1858790   0.1569295   0.2148285
3 months    ki1126311-ZVITAMBO      <=18.7               NA                0.3020833   0.2102098   0.3939569
3 months    ki1126311-ZVITAMBO      >23.47               NA                0.1204517   0.0978486   0.1430548
6 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.2009346   0.1472328   0.2546363
6 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.1814255   0.1463128   0.2165382
6 months    ki0047075b-MAL-ED       <=18.7               NA                0.2290076   0.1570311   0.3009842
6 months    ki0047075b-MAL-ED       >23.47               NA                0.1352273   0.1126267   0.1578278
6 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                0.2516556   0.1823739   0.3209373
6 months    ki1017093-NIH-Birth     (20.67-23.47]        NA                0.2360248   0.1703713   0.3016784
6 months    ki1017093-NIH-Birth     <=18.7               NA                0.3981481   0.3057405   0.4905558
6 months    ki1017093-NIH-Birth     >23.47               NA                0.2136752   0.1393326   0.2880179
6 months    ki1017093b-PROVIDE      (18.7-20.67]         NA                0.2051282   0.0779827   0.3322737
6 months    ki1017093b-PROVIDE      (20.67-23.47]        NA                0.1458333   0.0456602   0.2460064
6 months    ki1017093b-PROVIDE      <=18.7               NA                0.2727273   0.0860147   0.4594399
6 months    ki1017093b-PROVIDE      >23.47               NA                0.1590909   0.0506626   0.2675193
6 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.2222222   0.1495801   0.2948643
6 months    ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.1697248   0.1198584   0.2195911
6 months    ki1017093c-NIH-Crypto   <=18.7               NA                0.3947368   0.2847676   0.5047061
6 months    ki1017093c-NIH-Crypto   >23.47               NA                0.1864407   0.1419667   0.2309147
6 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.1842105   0.1406211   0.2277999
6 months    ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.1638066   0.1351475   0.1924656
6 months    ki1126311-ZVITAMBO      <=18.7               NA                0.2333333   0.1459273   0.3207394
6 months    ki1126311-ZVITAMBO      >23.47               NA                0.1412894   0.1159973   0.1665816
6 months    ki1148112-LCNI-5        (18.7-20.67]         NA                0.3576642   0.2773060   0.4380225
6 months    ki1148112-LCNI-5        (20.67-23.47]        NA                0.3758865   0.2958437   0.4559294
6 months    ki1148112-LCNI-5        <=18.7               NA                0.4659091   0.3615600   0.5702582
6 months    ki1148112-LCNI-5        >23.47               NA                0.2040816   0.0910994   0.3170639
9 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.2085308   0.1536978   0.2633638
9 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.2338530   0.1946891   0.2730169
9 months    ki0047075b-MAL-ED       <=18.7               NA                0.3095238   0.2287785   0.3902691
9 months    ki0047075b-MAL-ED       >23.47               NA                0.1770956   0.1513788   0.2028125
9 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                0.3333333   0.2537351   0.4129316
9 months    ki1017093-NIH-Birth     (20.67-23.47]        NA                0.3589744   0.2836242   0.4343245
9 months    ki1017093-NIH-Birth     <=18.7               NA                0.4563107   0.3600245   0.5525969
9 months    ki1017093-NIH-Birth     >23.47               NA                0.2920354   0.2081162   0.3759546
9 months    ki1017093b-PROVIDE      (18.7-20.67]         NA                0.3000000   0.1575356   0.4424644
9 months    ki1017093b-PROVIDE      (20.67-23.47]        NA                0.1428571   0.0445678   0.2411465
9 months    ki1017093b-PROVIDE      <=18.7               NA                0.4782609   0.2734646   0.6830571
9 months    ki1017093b-PROVIDE      >23.47               NA                0.1521739   0.0480450   0.2563028
9 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.2677165   0.1906561   0.3447769
9 months    ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.2347418   0.1777824   0.2917012
9 months    ki1017093c-NIH-Crypto   <=18.7               NA                0.3600000   0.2512908   0.4687092
9 months    ki1017093c-NIH-Crypto   >23.47               NA                0.1821306   0.1377551   0.2265060
9 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.2233677   0.1754992   0.2712362
9 months    ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.2042834   0.1722000   0.2363667
9 months    ki1126311-ZVITAMBO      <=18.7               NA                0.3440860   0.2475046   0.4406675
9 months    ki1126311-ZVITAMBO      >23.47               NA                0.1516937   0.1247036   0.1786837
9 months    ki1148112-LCNI-5        (18.7-20.67]         NA                0.2380952   0.1565011   0.3196893
9 months    ki1148112-LCNI-5        (20.67-23.47]        NA                0.3119266   0.2248186   0.3990346
9 months    ki1148112-LCNI-5        <=18.7               NA                0.4647887   0.3485933   0.5809841
9 months    ki1148112-LCNI-5        >23.47               NA                0.2571429   0.1121210   0.4021648
Birth       ki0047075b-MAL-ED       (18.7-20.67]         NA                0.1704545   0.1148809   0.2260282
Birth       ki0047075b-MAL-ED       (20.67-23.47]        NA                0.1286089   0.0949825   0.1622353
Birth       ki0047075b-MAL-ED       <=18.7               NA                0.2000000   0.1234640   0.2765360
Birth       ki0047075b-MAL-ED       >23.47               NA                0.1114024   0.0890698   0.1337349
Birth       ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.1192661   0.0888378   0.1496943
Birth       ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.1063830   0.0856020   0.1271639
Birth       ki1126311-ZVITAMBO      <=18.7               NA                0.1287879   0.0716332   0.1859425
Birth       ki1126311-ZVITAMBO      >23.47               NA                0.0784314   0.0615002   0.0953625


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED       NA                   NA                0.2697328   0.2671201   0.2723454
12 months   ki1017093-NIH-Birth     NA                   NA                0.3747454   0.3675917   0.3818991
12 months   ki1017093b-PROVIDE      NA                   NA                0.2875817   0.2635134   0.3116500
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.2422096   0.2375649   0.2468543
12 months   ki1126311-ZVITAMBO      NA                   NA                0.2370779   0.2351418   0.2390140
12 months   ki1148112-LCNI-5        NA                   NA                0.4110032   0.4016921   0.4203143
18 months   ki0047075b-MAL-ED       NA                   NA                0.3863636   0.3822635   0.3904638
18 months   ki1017093-NIH-Birth     NA                   NA                0.5874730   0.5787181   0.5962279
18 months   ki1017093b-PROVIDE      NA                   NA                0.3687943   0.3456883   0.3919003
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.3012618   0.2959445   0.3065791
18 months   ki1126311-ZVITAMBO      NA                   NA                0.4818942   0.4767402   0.4870481
18 months   ki1148112-LCNI-5        NA                   NA                0.4901408   0.4818606   0.4984211
24 months   ki0047075b-MAL-ED       NA                   NA                0.3749157   0.3706049   0.3792265
24 months   ki1017093-NIH-Birth     NA                   NA                0.5547786   0.5457419   0.5638153
24 months   ki1017093b-PROVIDE      NA                   NA                0.3288591   0.3011724   0.3565457
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.2568093   0.2507080   0.2629107
24 months   ki1148112-LCNI-5        NA                   NA                0.4391892   0.4277656   0.4506128
3 months    ki0047075b-MAL-ED       NA                   NA                0.1540648   0.1532318   0.1548978
3 months    ki1017093-NIH-Birth     NA                   NA                0.2280702   0.2238869   0.2322534
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.2142857   0.2114495   0.2171220
3 months    ki1126311-ZVITAMBO      NA                   NA                0.1737773   0.1714147   0.1761399
6 months    ki0047075b-MAL-ED       NA                   NA                0.1635071   0.1619864   0.1650278
6 months    ki1017093-NIH-Birth     NA                   NA                0.2681564   0.2625210   0.2737919
6 months    ki1017093b-PROVIDE      NA                   NA                0.1830065   0.1761132   0.1898999
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.2097902   0.2049372   0.2146432
6 months    ki1126311-ZVITAMBO      NA                   NA                0.1615646   0.1604972   0.1626320
6 months    ki1148112-LCNI-5        NA                   NA                0.3686747   0.3616877   0.3756617
9 months    ki0047075b-MAL-ED       NA                   NA                0.2069810   0.2051187   0.2088433
9 months    ki1017093-NIH-Birth     NA                   NA                0.3570020   0.3521549   0.3618490
9 months    ki1017093b-PROVIDE      NA                   NA                0.2341772   0.2154630   0.2528914
9 months    ki1017093c-NIH-Crypto   NA                   NA                0.2322946   0.2282534   0.2363359
9 months    ki1126311-ZVITAMBO      NA                   NA                0.1940120   0.1917767   0.1962473
9 months    ki1148112-LCNI-5        NA                   NA                0.3156250   0.3062570   0.3249930
Birth       ki0047075b-MAL-ED       NA                   NA                0.1298246   0.1284032   0.1312459
Birth       ki1126311-ZVITAMBO      NA                   NA                0.0986152   0.0979018   0.0993285


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED       (20.67-23.47]        (18.7-20.67]      1.0793939   0.8366365   1.3925896
12 months   ki0047075b-MAL-ED       <=18.7               (18.7-20.67]      1.3810298   1.0184000   1.8727842
12 months   ki0047075b-MAL-ED       >23.47               (18.7-20.67]      0.7777247   0.6069797   0.9965008
12 months   ki1017093-NIH-Birth     (20.67-23.47]        (18.7-20.67]      0.9822002   0.7112720   1.3563267
12 months   ki1017093-NIH-Birth     <=18.7               (18.7-20.67]      1.5191816   1.1290942   2.0440391
12 months   ki1017093-NIH-Birth     >23.47               (18.7-20.67]      0.8768116   0.6067749   1.2670243
12 months   ki1017093b-PROVIDE      (20.67-23.47]        (18.7-20.67]      0.6220238   0.3191282   1.2124079
12 months   ki1017093b-PROVIDE      <=18.7               (18.7-20.67]      1.6038961   0.9307796   2.7637937
12 months   ki1017093b-PROVIDE      >23.47               (18.7-20.67]      0.3619048   0.1537374   0.8519399
12 months   ki1017093c-NIH-Crypto   (20.67-23.47]        (18.7-20.67]      1.1255237   0.7598769   1.6671168
12 months   ki1017093c-NIH-Crypto   <=18.7               (18.7-20.67]      1.7997166   1.1804008   2.7439660
12 months   ki1017093c-NIH-Crypto   >23.47               (18.7-20.67]      0.8548654   0.5754314   1.2699947
12 months   ki1126311-ZVITAMBO      (20.67-23.47]        (18.7-20.67]      0.7664568   0.5998762   0.9792956
12 months   ki1126311-ZVITAMBO      <=18.7               (18.7-20.67]      1.1440329   0.7953049   1.6456725
12 months   ki1126311-ZVITAMBO      >23.47               (18.7-20.67]      0.7225471   0.5677796   0.9195017
12 months   ki1148112-LCNI-5        (20.67-23.47]        (18.7-20.67]      1.2974716   0.9317733   1.8066976
12 months   ki1148112-LCNI-5        <=18.7               (18.7-20.67]      1.4289081   1.0087667   2.0240342
12 months   ki1148112-LCNI-5        >23.47               (18.7-20.67]      0.6826156   0.3542193   1.3154680
18 months   ki0047075b-MAL-ED       (20.67-23.47]        (18.7-20.67]      1.0144119   0.8416227   1.2226756
18 months   ki0047075b-MAL-ED       <=18.7               (18.7-20.67]      1.2297753   0.9831823   1.5382165
18 months   ki0047075b-MAL-ED       >23.47               (18.7-20.67]      0.6959410   0.5779601   0.8380057
18 months   ki1017093-NIH-Birth     (20.67-23.47]        (18.7-20.67]      0.9517730   0.7678053   1.1798199
18 months   ki1017093-NIH-Birth     <=18.7               (18.7-20.67]      1.3392481   1.1088083   1.6175794
18 months   ki1017093-NIH-Birth     >23.47               (18.7-20.67]      0.8631293   0.6744961   1.1045165
18 months   ki1017093b-PROVIDE      (20.67-23.47]        (18.7-20.67]      0.7954545   0.4528431   1.3972786
18 months   ki1017093b-PROVIDE      <=18.7               (18.7-20.67]      1.5166667   0.9184830   2.5044315
18 months   ki1017093b-PROVIDE      >23.47               (18.7-20.67]      0.5000000   0.2491569   1.0033838
18 months   ki1017093c-NIH-Crypto   (20.67-23.47]        (18.7-20.67]      0.8575346   0.6081679   1.2091491
18 months   ki1017093c-NIH-Crypto   <=18.7               (18.7-20.67]      1.4669775   1.0257770   2.0979442
18 months   ki1017093c-NIH-Crypto   >23.47               (18.7-20.67]      0.7707907   0.5541861   1.0720556
18 months   ki1126311-ZVITAMBO      (20.67-23.47]        (18.7-20.67]      0.9436593   0.7232368   1.2312604
18 months   ki1126311-ZVITAMBO      <=18.7               (18.7-20.67]      0.8100000   0.4982638   1.3167724
18 months   ki1126311-ZVITAMBO      >23.47               (18.7-20.67]      0.7830733   0.5913841   1.0368958
18 months   ki1148112-LCNI-5        (20.67-23.47]        (18.7-20.67]      0.9091175   0.6900164   1.1977898
18 months   ki1148112-LCNI-5        <=18.7               (18.7-20.67]      1.3133303   1.0205384   1.6901240
18 months   ki1148112-LCNI-5        >23.47               (18.7-20.67]      0.8175010   0.5408009   1.2357743
24 months   ki0047075b-MAL-ED       (20.67-23.47]        (18.7-20.67]      1.0229304   0.8429506   1.2413380
24 months   ki0047075b-MAL-ED       <=18.7               (18.7-20.67]      1.1911093   0.9406162   1.5083106
24 months   ki0047075b-MAL-ED       >23.47               (18.7-20.67]      0.6713452   0.5529725   0.8150575
24 months   ki1017093-NIH-Birth     (20.67-23.47]        (18.7-20.67]      1.0146341   0.7940002   1.2965771
24 months   ki1017093-NIH-Birth     <=18.7               (18.7-20.67]      1.4357143   1.1574362   1.7808978
24 months   ki1017093-NIH-Birth     >23.47               (18.7-20.67]      0.9352041   0.7126016   1.2273431
24 months   ki1017093b-PROVIDE      (20.67-23.47]        (18.7-20.67]      0.7659574   0.4327731   1.3556545
24 months   ki1017093b-PROVIDE      <=18.7               (18.7-20.67]      1.5272727   0.9255497   2.5201910
24 months   ki1017093b-PROVIDE      >23.47               (18.7-20.67]      0.2727273   0.1093058   0.6804779
24 months   ki1017093c-NIH-Crypto   (20.67-23.47]        (18.7-20.67]      0.8070175   0.5427532   1.1999511
24 months   ki1017093c-NIH-Crypto   <=18.7               (18.7-20.67]      1.2517007   0.8000253   1.9583813
24 months   ki1017093c-NIH-Crypto   >23.47               (18.7-20.67]      0.5828054   0.3903310   0.8701901
24 months   ki1148112-LCNI-5        (20.67-23.47]        (18.7-20.67]      1.0825893   0.7921857   1.4794505
24 months   ki1148112-LCNI-5        <=18.7               (18.7-20.67]      1.2630208   0.9178041   1.7380850
24 months   ki1148112-LCNI-5        >23.47               (18.7-20.67]      0.4737485   0.2449664   0.9161977
3 months    ki0047075b-MAL-ED       (20.67-23.47]        (18.7-20.67]      0.9239263   0.6493339   1.3146393
3 months    ki0047075b-MAL-ED       <=18.7               (18.7-20.67]      1.2010490   0.7722838   1.8678606
3 months    ki0047075b-MAL-ED       >23.47               (18.7-20.67]      0.8278268   0.5965346   1.1487971
3 months    ki1017093-NIH-Birth     (20.67-23.47]        (18.7-20.67]      0.8744410   0.5646181   1.3542730
3 months    ki1017093-NIH-Birth     <=18.7               (18.7-20.67]      1.5643879   1.0461030   2.3394537
3 months    ki1017093-NIH-Birth     >23.47               (18.7-20.67]      1.1280835   0.7283665   1.7471593
3 months    ki1017093c-NIH-Crypto   (20.67-23.47]        (18.7-20.67]      0.8026667   0.5296043   1.2165193
3 months    ki1017093c-NIH-Crypto   <=18.7               (18.7-20.67]      1.3760000   0.8726446   2.1696988
3 months    ki1017093c-NIH-Crypto   >23.47               (18.7-20.67]      0.8628763   0.5860601   1.2704420
3 months    ki1126311-ZVITAMBO      (20.67-23.47]        (18.7-20.67]      0.7783682   0.6082401   0.9960820
3 months    ki1126311-ZVITAMBO      <=18.7               (18.7-20.67]      1.2649740   0.8831963   1.8117819
3 months    ki1126311-ZVITAMBO      >23.47               (18.7-20.67]      0.5043915   0.3858419   0.6593653
6 months    ki0047075b-MAL-ED       (20.67-23.47]        (18.7-20.67]      0.9029082   0.6491371   1.2558876
6 months    ki0047075b-MAL-ED       <=18.7               (18.7-20.67]      1.1397124   0.7544319   1.7217516
6 months    ki0047075b-MAL-ED       >23.47               (18.7-20.67]      0.6729915   0.4910364   0.9223708
6 months    ki1017093-NIH-Birth     (20.67-23.47]        (18.7-20.67]      0.9378882   0.6341370   1.3871360
6 months    ki1017093-NIH-Birth     <=18.7               (18.7-20.67]      1.5821150   1.1037129   2.2678795
6 months    ki1017093-NIH-Birth     >23.47               (18.7-20.67]      0.8490778   0.5448340   1.3232162
6 months    ki1017093b-PROVIDE      (20.67-23.47]        (18.7-20.67]      0.7109375   0.2818477   1.7932811
6 months    ki1017093b-PROVIDE      <=18.7               (18.7-20.67]      1.3295455   0.5279874   3.3479799
6 months    ki1017093b-PROVIDE      >23.47               (18.7-20.67]      0.7755682   0.3086921   1.9485630
6 months    ki1017093c-NIH-Crypto   (20.67-23.47]        (18.7-20.67]      0.7637615   0.4921256   1.1853307
6 months    ki1017093c-NIH-Crypto   <=18.7               (18.7-20.67]      1.7763158   1.1560901   2.7292836
6 months    ki1017093c-NIH-Crypto   >23.47               (18.7-20.67]      0.8389831   0.5597661   1.2574763
6 months    ki1126311-ZVITAMBO      (20.67-23.47]        (18.7-20.67]      0.8892356   0.6625387   1.1934999
6 months    ki1126311-ZVITAMBO      <=18.7               (18.7-20.67]      1.2666667   0.8132742   1.9728211
6 months    ki1126311-ZVITAMBO      >23.47               (18.7-20.67]      0.7669998   0.5700795   1.0319415
6 months    ki1148112-LCNI-5        (20.67-23.47]        (18.7-20.67]      1.0509480   0.7711579   1.4322511
6 months    ki1148112-LCNI-5        <=18.7               (18.7-20.67]      1.3026438   0.9485282   1.7889618
6 months    ki1148112-LCNI-5        >23.47               (18.7-20.67]      0.5705956   0.3139439   1.0370622
9 months    ki0047075b-MAL-ED       (20.67-23.47]        (18.7-20.67]      1.1214315   0.8210709   1.5316686
9 months    ki0047075b-MAL-ED       <=18.7               (18.7-20.67]      1.4843074   1.0248535   2.1497398
9 months    ki0047075b-MAL-ED       >23.47               (18.7-20.67]      0.8492541   0.6289024   1.1468114
9 months    ki1017093-NIH-Birth     (20.67-23.47]        (18.7-20.67]      1.0769231   0.7836232   1.4800012
9 months    ki1017093-NIH-Birth     <=18.7               (18.7-20.67]      1.3689320   0.9953753   1.8826818
9 months    ki1017093-NIH-Birth     >23.47               (18.7-20.67]      0.8761062   0.6029646   1.2729803
9 months    ki1017093b-PROVIDE      (20.67-23.47]        (18.7-20.67]      0.4761905   0.2064010   1.0986254
9 months    ki1017093b-PROVIDE      <=18.7               (18.7-20.67]      1.5942029   0.8410866   3.0216661
9 months    ki1017093b-PROVIDE      >23.47               (18.7-20.67]      0.5072464   0.2205408   1.1666724
9 months    ki1017093c-NIH-Crypto   (20.67-23.47]        (18.7-20.67]      0.8768296   0.6017491   1.2776591
9 months    ki1017093c-NIH-Crypto   <=18.7               (18.7-20.67]      1.3447059   0.8860292   2.0408287
9 months    ki1017093c-NIH-Crypto   >23.47               (18.7-20.67]      0.6803113   0.4665818   0.9919449
9 months    ki1126311-ZVITAMBO      (20.67-23.47]        (18.7-20.67]      0.9145609   0.7011719   1.1928909
9 months    ki1126311-ZVITAMBO      <=18.7               (18.7-20.67]      1.5404467   1.0821237   2.1928878
9 months    ki1126311-ZVITAMBO      >23.47               (18.7-20.67]      0.6791209   0.5140197   0.8972519
9 months    ki1148112-LCNI-5        (20.67-23.47]        (18.7-20.67]      1.3100917   0.8420028   2.0384022
9 months    ki1148112-LCNI-5        <=18.7               (18.7-20.67]      1.9521127   1.2772650   2.9835186
9 months    ki1148112-LCNI-5        >23.47               (18.7-20.67]      1.0800000   0.5582389   2.0894282
Birth       ki0047075b-MAL-ED       (20.67-23.47]        (18.7-20.67]      0.7545057   0.4967765   1.1459456
Birth       ki0047075b-MAL-ED       <=18.7               (18.7-20.67]      1.1733333   0.7097201   1.9397945
Birth       ki0047075b-MAL-ED       >23.47               (18.7-20.67]      0.6535605   0.4457254   0.9583061
Birth       ki1126311-ZVITAMBO      (20.67-23.47]        (18.7-20.67]      0.8919804   0.6468538   1.2299981
Birth       ki1126311-ZVITAMBO      <=18.7               (18.7-20.67]      1.0798368   0.6472076   1.8016593
Birth       ki1126311-ZVITAMBO      >23.47               (18.7-20.67]      0.6576169   0.4707935   0.9185767


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.0187288   -0.0803720    0.0429144
12 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0262606   -0.0554221    0.1079433
12 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                -0.0808394   -0.2365847    0.0749060
12 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                 0.0138632   -0.0593414    0.0870678
12 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.0542890   -0.1077567   -0.0008214
12 months   ki1148112-LCNI-5        (18.7-20.67]         NA                 0.0558630   -0.0354353    0.1471614
18 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.0608725   -0.1300977    0.0083526
18 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0137025   -0.0745800    0.1019850
18 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                -0.0597771   -0.2259243    0.1063701
18 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                -0.0292466   -0.1143532    0.0558599
18 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.0613157   -0.1700688    0.0474374
18 months   ki1148112-LCNI-5        (18.7-20.67]         NA                 0.0065343   -0.0826518    0.0957204
24 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.0665737   -0.1377098    0.0045625
24 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0419580   -0.0491665    0.1330826
24 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                -0.0878076   -0.2517514    0.0761362
24 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                -0.0692776   -0.1653554    0.0268002
24 months   ki1148112-LCNI-5        (18.7-20.67]         NA                 0.0061995   -0.0932303    0.1056293
3 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.0162409   -0.0649478    0.0324661
3 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0207531   -0.0414852    0.0829914
3 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                -0.0182724   -0.0912800    0.0547352
3 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.0650287   -0.1107574   -0.0192999
6 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.0374275   -0.0911507    0.0162958
6 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0165008   -0.0530097    0.0860113
6 months    ki1017093b-PROVIDE      (18.7-20.67]         NA                -0.0221217   -0.1494539    0.1052105
6 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                -0.0124320   -0.0852360    0.0603720
6 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.0226459   -0.0662483    0.0209565
6 months    ki1148112-LCNI-5        (18.7-20.67]         NA                 0.0110105   -0.0696510    0.0916719
9 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.0015498   -0.0564144    0.0533148
9 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0236686   -0.0560771    0.1034144
9 months    ki1017093b-PROVIDE      (18.7-20.67]         NA                -0.0658228   -0.2095111    0.0778655
9 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                -0.0354219   -0.1125882    0.0417444
9 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.0293557   -0.0772764    0.0185649
9 months    ki1148112-LCNI-5        (18.7-20.67]         NA                 0.0775298   -0.0046004    0.1596599
Birth       ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.0406300   -0.0962218    0.0149618
Birth       ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.0206509   -0.0510875    0.0097857


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.0694346   -0.3242603    0.1363553
12 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0700758   -0.1754135    0.2642937
12 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                -0.2811005   -0.9614445    0.1632603
12 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                 0.0572363   -0.2989734    0.3157647
12 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.2289924   -0.4766298   -0.0228849
12 months   ki1148112-LCNI-5        (18.7-20.67]         NA                 0.1359188   -0.1170034    0.3315720
18 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.1575525   -0.3514586    0.0085322
18 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0233245   -0.1390882    0.1625802
18 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                -0.1620879   -0.7146461    0.2124040
18 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                -0.0970805   -0.4194319    0.1520653
18 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.1272390   -0.3771783    0.0773397
18 months   ki1148112-LCNI-5        (18.7-20.67]         NA                 0.0133314   -0.1864629    0.1794814
24 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.1775696   -0.3836082   -0.0022131
24 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0756303   -0.1039807    0.2260196
24 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                -0.2670068   -0.8842015    0.1480178
24 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                -0.2697628   -0.7054557    0.0546235
24 months   ki1148112-LCNI-5        (18.7-20.67]         NA                 0.0141158   -0.2403291    0.2163631
3 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.1054158   -0.4714203    0.1695478
3 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0909944   -0.2271405    0.3266531
3 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                -0.0852713   -0.4855795    0.2071687
3 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.3742068   -0.6646132   -0.1344643
6 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.2289042   -0.6056755    0.0594578
6 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0615342   -0.2368844    0.2879544
6 months    ki1017093b-PROVIDE      (18.7-20.67]         NA                -0.1208791   -1.0856718    0.3976186
6 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                -0.0592593   -0.4700210    0.2367250
6 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.1401662   -0.4446894    0.1001671
6 months    ki1148112-LCNI-5        (18.7-20.67]         NA                 0.0298650   -0.2154969    0.2256978
9 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.0074876   -0.3107018    0.2255819
9 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                 0.0662983   -0.1859951    0.2649221
9 months    ki1017093b-PROVIDE      (18.7-20.67]         NA                -0.2810811   -1.0735518    0.2085229
9 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                -0.1524870   -0.5377045    0.1362278
9 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.1513088   -0.4269115    0.0710623
9 months    ki1148112-LCNI-5        (18.7-20.67]         NA                 0.2456388   -0.0640625    0.4651999
Birth       ki0047075b-MAL-ED       (18.7-20.67]         NA                -0.3129607   -0.8193881    0.0525025
Birth       ki1126311-ZVITAMBO      (18.7-20.67]         NA                -0.2094085   -0.5610568    0.0630264


