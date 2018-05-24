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

* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/3497560c-573b-49b1-81e1-7c35a911513c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3497560c-573b-49b1-81e1-7c35a911513c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/3497560c-573b-49b1-81e1-7c35a911513c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3497560c-573b-49b1-81e1-7c35a911513c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                   n    nA   nAY0   nAY1
----------  -------------------------  --------------  -----  ----  -----  -----
Birth       ki0047075b-MAL-ED          <=18.7           1425   105     84     21
Birth       ki0047075b-MAL-ED          (18.7-20.67]     1425   176    146     30
Birth       ki0047075b-MAL-ED          (20.67-23.47]    1425   381    332     49
Birth       ki0047075b-MAL-ED          >23.47           1425   763    678     85
Birth       ki1017093-NIH-Birth        <=18.7             28    10     10      0
Birth       ki1017093-NIH-Birth        (18.7-20.67]       28     9      9      0
Birth       ki1017093-NIH-Birth        (20.67-23.47]      28     6      5      1
Birth       ki1017093-NIH-Birth        >23.47             28     3      3      0
Birth       ki1017093b-PROVIDE         <=18.7              0     0      0      0
Birth       ki1017093b-PROVIDE         (18.7-20.67]        0     0      0      0
Birth       ki1017093b-PROVIDE         (20.67-23.47]       0     0      0      0
Birth       ki1017093b-PROVIDE         >23.47              0     0      0      0
Birth       ki1017093c-NIH-Crypto      <=18.7             27     7      6      1
Birth       ki1017093c-NIH-Crypto      (18.7-20.67]       27     5      3      2
Birth       ki1017093c-NIH-Crypto      (20.67-23.47]      27     8      6      2
Birth       ki1017093c-NIH-Crypto      >23.47             27     7      7      0
Birth       ki1066203-TanzaniaChild2   <=18.7              0     0      0      0
Birth       ki1066203-TanzaniaChild2   (18.7-20.67]        0     0      0      0
Birth       ki1066203-TanzaniaChild2   (20.67-23.47]       0     0      0      0
Birth       ki1066203-TanzaniaChild2   >23.47              0     0      0      0
Birth       ki1126311-ZVITAMBO         <=18.7           2383   132    115     17
Birth       ki1126311-ZVITAMBO         (18.7-20.67]     2383   436    384     52
Birth       ki1126311-ZVITAMBO         (20.67-23.47]    2383   846    756     90
Birth       ki1126311-ZVITAMBO         >23.47           2383   969    893     76
Birth       ki1148112-LCNI-5           <=18.7              0     0      0      0
Birth       ki1148112-LCNI-5           (18.7-20.67]        0     0      0      0
Birth       ki1148112-LCNI-5           (20.67-23.47]       0     0      0      0
Birth       ki1148112-LCNI-5           >23.47              0     0      0      0
3 months    ki0047075b-MAL-ED          <=18.7           1759   132    105     27
3 months    ki0047075b-MAL-ED          (18.7-20.67]     1759   229    190     39
3 months    ki0047075b-MAL-ED          (20.67-23.47]    1759   483    407     76
3 months    ki0047075b-MAL-ED          >23.47           1759   915    786    129
3 months    ki1017093-NIH-Birth        <=18.7            570   111     75     36
3 months    ki1017093-NIH-Birth        (18.7-20.67]      570   164    130     34
3 months    ki1017093-NIH-Birth        (20.67-23.47]     570   171    140     31
3 months    ki1017093-NIH-Birth        >23.47            570   124     95     29
3 months    ki1017093b-PROVIDE         <=18.7            168    26     20      6
3 months    ki1017093b-PROVIDE         (18.7-20.67]      168    40     35      5
3 months    ki1017093b-PROVIDE         (20.67-23.47]     168    51     47      4
3 months    ki1017093b-PROVIDE         >23.47            168    51     46      5
3 months    ki1017093c-NIH-Crypto      <=18.7            728    75     51     24
3 months    ki1017093c-NIH-Crypto      (18.7-20.67]      728   129     99     30
3 months    ki1017093c-NIH-Crypto      (20.67-23.47]     728   225    183     42
3 months    ki1017093c-NIH-Crypto      >23.47            728   299    239     60
3 months    ki1066203-TanzaniaChild2   <=18.7            566     5      5      0
3 months    ki1066203-TanzaniaChild2   (18.7-20.67]      566    59     53      6
3 months    ki1066203-TanzaniaChild2   (20.67-23.47]     566   148    136     12
3 months    ki1066203-TanzaniaChild2   >23.47            566   354    333     21
3 months    ki1126311-ZVITAMBO         <=18.7           1922    96     67     29
3 months    ki1126311-ZVITAMBO         (18.7-20.67]     1922   335    255     80
3 months    ki1126311-ZVITAMBO         (20.67-23.47]    1922   694    565    129
3 months    ki1126311-ZVITAMBO         >23.47           1922   797    701     96
3 months    ki1148112-LCNI-5           <=18.7              0     0      0      0
3 months    ki1148112-LCNI-5           (18.7-20.67]        0     0      0      0
3 months    ki1148112-LCNI-5           (20.67-23.47]       0     0      0      0
3 months    ki1148112-LCNI-5           >23.47              0     0      0      0
6 months    ki0047075b-MAL-ED          <=18.7           1688   131    101     30
6 months    ki0047075b-MAL-ED          (18.7-20.67]     1688   214    171     43
6 months    ki0047075b-MAL-ED          (20.67-23.47]    1688   463    379     84
6 months    ki0047075b-MAL-ED          >23.47           1688   880    761    119
6 months    ki1017093-NIH-Birth        <=18.7            537   108     65     43
6 months    ki1017093-NIH-Birth        (18.7-20.67]      537   151    113     38
6 months    ki1017093-NIH-Birth        (20.67-23.47]     537   161    123     38
6 months    ki1017093-NIH-Birth        >23.47            537   117     92     25
6 months    ki1017093b-PROVIDE         <=18.7            153    22     16      6
6 months    ki1017093b-PROVIDE         (18.7-20.67]      153    39     31      8
6 months    ki1017093b-PROVIDE         (20.67-23.47]     153    48     41      7
6 months    ki1017093b-PROVIDE         >23.47            153    44     37      7
6 months    ki1017093c-NIH-Crypto      <=18.7            715    76     46     30
6 months    ki1017093c-NIH-Crypto      (18.7-20.67]      715   126     98     28
6 months    ki1017093c-NIH-Crypto      (20.67-23.47]     715   218    181     37
6 months    ki1017093c-NIH-Crypto      >23.47            715   295    240     55
6 months    ki1066203-TanzaniaChild2   <=18.7            496     5      5      0
6 months    ki1066203-TanzaniaChild2   (18.7-20.67]      496    51     46      5
6 months    ki1066203-TanzaniaChild2   (20.67-23.47]     496   126    114     12
6 months    ki1066203-TanzaniaChild2   >23.47            496   314    286     28
6 months    ki1126311-ZVITAMBO         <=18.7           1764    90     69     21
6 months    ki1126311-ZVITAMBO         (18.7-20.67]     1764   304    248     56
6 months    ki1126311-ZVITAMBO         (20.67-23.47]    1764   641    536    105
6 months    ki1126311-ZVITAMBO         >23.47           1764   729    626    103
6 months    ki1148112-LCNI-5           <=18.7            415    88     47     41
6 months    ki1148112-LCNI-5           (18.7-20.67]      415   137     88     49
6 months    ki1148112-LCNI-5           (20.67-23.47]     415   141     88     53
6 months    ki1148112-LCNI-5           >23.47            415    49     39     10
9 months    ki0047075b-MAL-ED          <=18.7           1633   126     87     39
9 months    ki0047075b-MAL-ED          (18.7-20.67]     1633   211    167     44
9 months    ki0047075b-MAL-ED          (20.67-23.47]    1633   449    344    105
9 months    ki0047075b-MAL-ED          >23.47           1633   847    697    150
9 months    ki1017093-NIH-Birth        <=18.7            507   103     56     47
9 months    ki1017093-NIH-Birth        (18.7-20.67]      507   135     90     45
9 months    ki1017093-NIH-Birth        (20.67-23.47]     507   156    100     56
9 months    ki1017093-NIH-Birth        >23.47            507   113     80     33
9 months    ki1017093b-PROVIDE         <=18.7            158    23     12     11
9 months    ki1017093b-PROVIDE         (18.7-20.67]      158    40     28     12
9 months    ki1017093b-PROVIDE         (20.67-23.47]     158    49     42      7
9 months    ki1017093b-PROVIDE         >23.47            158    46     39      7
9 months    ki1017093c-NIH-Crypto      <=18.7            706    75     48     27
9 months    ki1017093c-NIH-Crypto      (18.7-20.67]      706   127     93     34
9 months    ki1017093c-NIH-Crypto      (20.67-23.47]     706   213    163     50
9 months    ki1017093c-NIH-Crypto      >23.47            706   291    238     53
9 months    ki1066203-TanzaniaChild2   <=18.7            426     5      5      0
9 months    ki1066203-TanzaniaChild2   (18.7-20.67]      426    38     34      4
9 months    ki1066203-TanzaniaChild2   (20.67-23.47]     426   110     93     17
9 months    ki1066203-TanzaniaChild2   >23.47            426   273    231     42
9 months    ki1126311-ZVITAMBO         <=18.7           1670    93     61     32
9 months    ki1126311-ZVITAMBO         (18.7-20.67]     1670   291    226     65
9 months    ki1126311-ZVITAMBO         (20.67-23.47]    1670   607    483    124
9 months    ki1126311-ZVITAMBO         >23.47           1670   679    576    103
9 months    ki1148112-LCNI-5           <=18.7            320    71     38     33
9 months    ki1148112-LCNI-5           (18.7-20.67]      320   105     80     25
9 months    ki1148112-LCNI-5           (20.67-23.47]     320   109     75     34
9 months    ki1148112-LCNI-5           >23.47            320    35     26      9
12 months   ki0047075b-MAL-ED          <=18.7           1609   123     74     49
12 months   ki0047075b-MAL-ED          (18.7-20.67]     1609   208    148     60
12 months   ki0047075b-MAL-ED          (20.67-23.47]    1609   440    303    137
12 months   ki0047075b-MAL-ED          >23.47           1609   838    650    188
12 months   ki1017093-NIH-Birth        <=18.7            491   102     48     54
12 months   ki1017093-NIH-Birth        (18.7-20.67]      491   132     86     46
12 months   ki1017093-NIH-Birth        (20.67-23.47]     491   149     98     51
12 months   ki1017093-NIH-Birth        >23.47            491   108     75     33
12 months   ki1017093b-PROVIDE         <=18.7            153    22      9     13
12 months   ki1017093b-PROVIDE         (18.7-20.67]      153    38     24     14
12 months   ki1017093b-PROVIDE         (20.67-23.47]     153    48     37     11
12 months   ki1017093b-PROVIDE         >23.47            153    45     39      6
12 months   ki1017093c-NIH-Crypto      <=18.7            706    73     43     30
12 months   ki1017093c-NIH-Crypto      (18.7-20.67]      706   127     98     29
12 months   ki1017093c-NIH-Crypto      (20.67-23.47]     706   214    159     55
12 months   ki1017093c-NIH-Crypto      >23.47            706   292    235     57
12 months   ki1066203-TanzaniaChild2   <=18.7            349     4      4      0
12 months   ki1066203-TanzaniaChild2   (18.7-20.67]      349    32     30      2
12 months   ki1066203-TanzaniaChild2   (20.67-23.47]     349    91     75     16
12 months   ki1066203-TanzaniaChild2   >23.47            349   222    188     34
12 months   ki1126311-ZVITAMBO         <=18.7           1451    78     52     26
12 months   ki1126311-ZVITAMBO         (18.7-20.67]     1451   278    197     81
12 months   ki1126311-ZVITAMBO         (20.67-23.47]    1451   506    393    113
12 months   ki1126311-ZVITAMBO         >23.47           1451   589    465    124
12 months   ki1148112-LCNI-5           <=18.7            309    67     33     34
12 months   ki1148112-LCNI-5           (18.7-20.67]      309   107     69     38
12 months   ki1148112-LCNI-5           (20.67-23.47]     309   102     55     47
12 months   ki1148112-LCNI-5           >23.47            309    33     25      8
18 months   ki0047075b-MAL-ED          <=18.7           1540   120     54     66
18 months   ki0047075b-MAL-ED          (18.7-20.67]     1540   199    110     89
18 months   ki0047075b-MAL-ED          (20.67-23.47]    1540   421    230    191
18 months   ki0047075b-MAL-ED          >23.47           1540   800    551    249
18 months   ki1017093-NIH-Birth        <=18.7            463    95     22     73
18 months   ki1017093-NIH-Birth        (18.7-20.67]      463   122     52     70
18 months   ki1017093-NIH-Birth        (20.67-23.47]     463   141     64     77
18 months   ki1017093-NIH-Birth        >23.47            463   105     53     52
18 months   ki1017093b-PROVIDE         <=18.7            141    20      7     13
18 months   ki1017093b-PROVIDE         (18.7-20.67]      141    35     20     15
18 months   ki1017093b-PROVIDE         (20.67-23.47]     141    44     29     15
18 months   ki1017093b-PROVIDE         >23.47            141    42     33      9
18 months   ki1017093c-NIH-Crypto      <=18.7            634    66     34     32
18 months   ki1017093c-NIH-Crypto      (18.7-20.67]      634   118     79     39
18 months   ki1017093c-NIH-Crypto      (20.67-23.47]     634   187    134     53
18 months   ki1017093c-NIH-Crypto      >23.47            634   263    196     67
18 months   ki1066203-TanzaniaChild2   <=18.7            254     1      1      0
18 months   ki1066203-TanzaniaChild2   (18.7-20.67]      254    23     17      6
18 months   ki1066203-TanzaniaChild2   (20.67-23.47]     254    58     41     17
18 months   ki1066203-TanzaniaChild2   >23.47            254   172    128     44
18 months   ki1126311-ZVITAMBO         <=18.7            359    25     14     11
18 months   ki1126311-ZVITAMBO         (18.7-20.67]      359    81     37     44
18 months   ki1126311-ZVITAMBO         (20.67-23.47]     359   119     58     61
18 months   ki1126311-ZVITAMBO         >23.47            359   134     77     57
18 months   ki1148112-LCNI-5           <=18.7            355    74     27     47
18 months   ki1148112-LCNI-5           (18.7-20.67]      355   122     63     59
18 months   ki1148112-LCNI-5           (20.67-23.47]     355   116     65     51
18 months   ki1148112-LCNI-5           >23.47            355    43     26     17
24 months   ki0047075b-MAL-ED          <=18.7           1483   116     55     61
24 months   ki0047075b-MAL-ED          (18.7-20.67]     1483   188    105     83
24 months   ki0047075b-MAL-ED          (20.67-23.47]    1483   403    221    182
24 months   ki0047075b-MAL-ED          >23.47           1483   776    546    230
24 months   ki1017093-NIH-Birth        <=18.7            429    91     24     67
24 months   ki1017093-NIH-Birth        (18.7-20.67]      429   117     57     60
24 months   ki1017093-NIH-Birth        (20.67-23.47]     429   123     59     64
24 months   ki1017093-NIH-Birth        >23.47            429    98     51     47
24 months   ki1017093b-PROVIDE         <=18.7            149    22      8     14
24 months   ki1017093b-PROVIDE         (18.7-20.67]      149    36     21     15
24 months   ki1017093b-PROVIDE         (20.67-23.47]     149    47     32     15
24 months   ki1017093b-PROVIDE         >23.47            149    44     39      5
24 months   ki1017093c-NIH-Crypto      <=18.7            514    49     29     20
24 months   ki1017093c-NIH-Crypto      (18.7-20.67]      514    92     62     30
24 months   ki1017093c-NIH-Crypto      (20.67-23.47]     514   152    112     40
24 months   ki1017093c-NIH-Crypto      >23.47            514   221    179     42
24 months   ki1066203-TanzaniaChild2   <=18.7              2     0      0      0
24 months   ki1066203-TanzaniaChild2   (18.7-20.67]        2     1      1      0
24 months   ki1066203-TanzaniaChild2   (20.67-23.47]       2     0      0      0
24 months   ki1066203-TanzaniaChild2   >23.47              2     1      1      0
24 months   ki1126311-ZVITAMBO         <=18.7             96     6      2      4
24 months   ki1126311-ZVITAMBO         (18.7-20.67]       96    25      8     17
24 months   ki1126311-ZVITAMBO         (20.67-23.47]      96    31     13     18
24 months   ki1126311-ZVITAMBO         >23.47             96    34     15     19
24 months   ki1148112-LCNI-5           <=18.7            296    64     29     35
24 months   ki1148112-LCNI-5           (18.7-20.67]      296    97     55     42
24 months   ki1148112-LCNI-5           (20.67-23.47]     296    96     51     45
24 months   ki1148112-LCNI-5           >23.47            296    39     31      8

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       <=18.7               NA                0.2000000   0.1234640   0.2765360
Birth       ki0047075b-MAL-ED       (18.7-20.67]         NA                0.1704545   0.1148809   0.2260282
Birth       ki0047075b-MAL-ED       (20.67-23.47]        NA                0.1286089   0.0949825   0.1622353
Birth       ki0047075b-MAL-ED       >23.47               NA                0.1114024   0.0890698   0.1337349
Birth       ki1126311-ZVITAMBO      <=18.7               NA                0.1287879   0.0716332   0.1859425
Birth       ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.1192661   0.0888378   0.1496943
Birth       ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.1063830   0.0856020   0.1271639
Birth       ki1126311-ZVITAMBO      >23.47               NA                0.0784314   0.0615002   0.0953625
3 months    ki0047075b-MAL-ED       <=18.7               NA                0.2045455   0.1357140   0.2733770
3 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.1703057   0.1216058   0.2190055
3 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.1573499   0.1248670   0.1898328
3 months    ki0047075b-MAL-ED       >23.47               NA                0.1409836   0.1184284   0.1635388
3 months    ki1017093-NIH-Birth     <=18.7               NA                0.3243243   0.2371624   0.4114862
3 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                0.2073171   0.1452195   0.2694147
3 months    ki1017093-NIH-Birth     (20.67-23.47]        NA                0.1812865   0.1234929   0.2390802
3 months    ki1017093-NIH-Birth     >23.47               NA                0.2338710   0.1593021   0.3084399
3 months    ki1017093c-NIH-Crypto   <=18.7               NA                0.3200000   0.2143559   0.4256441
3 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.2325581   0.1596056   0.3055106
3 months    ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.1866667   0.1357192   0.2376142
3 months    ki1017093c-NIH-Crypto   >23.47               NA                0.2006689   0.1552419   0.2460959
3 months    ki1126311-ZVITAMBO      <=18.7               NA                0.3020833   0.2102098   0.3939569
3 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.2388060   0.1931383   0.2844737
3 months    ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.1858790   0.1569295   0.2148285
3 months    ki1126311-ZVITAMBO      >23.47               NA                0.1204517   0.0978486   0.1430548
6 months    ki0047075b-MAL-ED       <=18.7               NA                0.2290076   0.1570311   0.3009842
6 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.2009346   0.1472328   0.2546363
6 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.1814255   0.1463128   0.2165382
6 months    ki0047075b-MAL-ED       >23.47               NA                0.1352273   0.1126267   0.1578278
6 months    ki1017093-NIH-Birth     <=18.7               NA                0.3981481   0.3057405   0.4905558
6 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                0.2516556   0.1823739   0.3209373
6 months    ki1017093-NIH-Birth     (20.67-23.47]        NA                0.2360248   0.1703713   0.3016784
6 months    ki1017093-NIH-Birth     >23.47               NA                0.2136752   0.1393326   0.2880179
6 months    ki1017093b-PROVIDE      <=18.7               NA                0.2727273   0.0860147   0.4594399
6 months    ki1017093b-PROVIDE      (18.7-20.67]         NA                0.2051282   0.0779827   0.3322737
6 months    ki1017093b-PROVIDE      (20.67-23.47]        NA                0.1458333   0.0456602   0.2460064
6 months    ki1017093b-PROVIDE      >23.47               NA                0.1590909   0.0506626   0.2675193
6 months    ki1017093c-NIH-Crypto   <=18.7               NA                0.3947368   0.2847676   0.5047061
6 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.2222222   0.1495801   0.2948643
6 months    ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.1697248   0.1198584   0.2195911
6 months    ki1017093c-NIH-Crypto   >23.47               NA                0.1864407   0.1419667   0.2309147
6 months    ki1126311-ZVITAMBO      <=18.7               NA                0.2333333   0.1459273   0.3207394
6 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.1842105   0.1406211   0.2277999
6 months    ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.1638066   0.1351475   0.1924656
6 months    ki1126311-ZVITAMBO      >23.47               NA                0.1412894   0.1159973   0.1665816
6 months    ki1148112-LCNI-5        <=18.7               NA                0.4659091   0.3615600   0.5702582
6 months    ki1148112-LCNI-5        (18.7-20.67]         NA                0.3576642   0.2773060   0.4380225
6 months    ki1148112-LCNI-5        (20.67-23.47]        NA                0.3758865   0.2958437   0.4559294
6 months    ki1148112-LCNI-5        >23.47               NA                0.2040816   0.0910994   0.3170639
9 months    ki0047075b-MAL-ED       <=18.7               NA                0.3095238   0.2287785   0.3902691
9 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.2085308   0.1536978   0.2633638
9 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.2338530   0.1946891   0.2730169
9 months    ki0047075b-MAL-ED       >23.47               NA                0.1770956   0.1513788   0.2028125
9 months    ki1017093-NIH-Birth     <=18.7               NA                0.4563107   0.3600245   0.5525969
9 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                0.3333333   0.2537351   0.4129316
9 months    ki1017093-NIH-Birth     (20.67-23.47]        NA                0.3589744   0.2836242   0.4343245
9 months    ki1017093-NIH-Birth     >23.47               NA                0.2920354   0.2081162   0.3759546
9 months    ki1017093b-PROVIDE      <=18.7               NA                0.4782609   0.2734646   0.6830571
9 months    ki1017093b-PROVIDE      (18.7-20.67]         NA                0.3000000   0.1575356   0.4424644
9 months    ki1017093b-PROVIDE      (20.67-23.47]        NA                0.1428571   0.0445678   0.2411465
9 months    ki1017093b-PROVIDE      >23.47               NA                0.1521739   0.0480450   0.2563028
9 months    ki1017093c-NIH-Crypto   <=18.7               NA                0.3600000   0.2512908   0.4687092
9 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.2677165   0.1906561   0.3447769
9 months    ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.2347418   0.1777824   0.2917012
9 months    ki1017093c-NIH-Crypto   >23.47               NA                0.1821306   0.1377551   0.2265060
9 months    ki1126311-ZVITAMBO      <=18.7               NA                0.3440860   0.2475046   0.4406675
9 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.2233677   0.1754992   0.2712362
9 months    ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.2042834   0.1722000   0.2363667
9 months    ki1126311-ZVITAMBO      >23.47               NA                0.1516937   0.1247036   0.1786837
9 months    ki1148112-LCNI-5        <=18.7               NA                0.4647887   0.3485933   0.5809841
9 months    ki1148112-LCNI-5        (18.7-20.67]         NA                0.2380952   0.1565011   0.3196893
9 months    ki1148112-LCNI-5        (20.67-23.47]        NA                0.3119266   0.2248186   0.3990346
9 months    ki1148112-LCNI-5        >23.47               NA                0.2571429   0.1121210   0.4021648
12 months   ki0047075b-MAL-ED       <=18.7               NA                0.3983740   0.3118295   0.4849185
12 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.2884615   0.2268738   0.3500493
12 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.3113636   0.2680838   0.3546435
12 months   ki0047075b-MAL-ED       >23.47               NA                0.2243437   0.1960914   0.2525959
12 months   ki1017093-NIH-Birth     <=18.7               NA                0.5294118   0.4324483   0.6263752
12 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.3484848   0.2671160   0.4298537
12 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.3422819   0.2660196   0.4185441
12 months   ki1017093-NIH-Birth     >23.47               NA                0.3055556   0.2185909   0.3925202
12 months   ki1017093b-PROVIDE      <=18.7               NA                0.5909091   0.3847840   0.7970342
12 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                0.3684211   0.2145467   0.5222954
12 months   ki1017093b-PROVIDE      (20.67-23.47]        NA                0.2291667   0.1098758   0.3484576
12 months   ki1017093b-PROVIDE      >23.47               NA                0.1333333   0.0336870   0.2329796
12 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.4109589   0.2980141   0.5239038
12 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.2283465   0.1552894   0.3014035
12 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.2570093   0.1984205   0.3155982
12 months   ki1017093c-NIH-Crypto   >23.47               NA                0.1952055   0.1497116   0.2406994
12 months   ki1126311-ZVITAMBO      <=18.7               NA                0.3333333   0.2286821   0.4379845
12 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.2913669   0.2379343   0.3447995
12 months   ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.2233202   0.1870201   0.2596202
12 months   ki1126311-ZVITAMBO      >23.47               NA                0.2105263   0.1775910   0.2434617
12 months   ki1148112-LCNI-5        <=18.7               NA                0.5074627   0.3875580   0.6273674
12 months   ki1148112-LCNI-5        (18.7-20.67]         NA                0.3551402   0.2643179   0.4459625
12 months   ki1148112-LCNI-5        (20.67-23.47]        NA                0.4607843   0.3638936   0.5576750
12 months   ki1148112-LCNI-5        >23.47               NA                0.2424242   0.0959720   0.3888765
18 months   ki0047075b-MAL-ED       <=18.7               NA                0.5500000   0.4609598   0.6390402
18 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.4472362   0.3781325   0.5163398
18 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.4536817   0.4061102   0.5012532
18 months   ki0047075b-MAL-ED       >23.47               NA                0.3112500   0.2791556   0.3433444
18 months   ki1017093-NIH-Birth     <=18.7               NA                0.7684211   0.6835020   0.8533401
18 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.5737705   0.4859232   0.6616178
18 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.5460993   0.4638326   0.6283660
18 months   ki1017093-NIH-Birth     >23.47               NA                0.4952381   0.3995025   0.5909736
18 months   ki1017093b-PROVIDE      <=18.7               NA                0.6500000   0.4402175   0.8597825
18 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                0.4285714   0.2640387   0.5931041
18 months   ki1017093b-PROVIDE      (20.67-23.47]        NA                0.3409091   0.2003499   0.4814683
18 months   ki1017093b-PROVIDE      >23.47               NA                0.2142857   0.0897489   0.3388226
18 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.4848485   0.3641812   0.6055157
18 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.3305085   0.2455682   0.4154488
18 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.2834225   0.2187799   0.3480651
18 months   ki1017093c-NIH-Crypto   >23.47               NA                0.2547529   0.2020514   0.3074543
18 months   ki1126311-ZVITAMBO      <=18.7               NA                0.4400000   0.2451483   0.6348517
18 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.5432099   0.4345790   0.6518408
18 months   ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.5126050   0.4226735   0.6025366
18 months   ki1126311-ZVITAMBO      >23.47               NA                0.4253731   0.3415470   0.5091993
18 months   ki1148112-LCNI-5        <=18.7               NA                0.6351351   0.5252993   0.7449709
18 months   ki1148112-LCNI-5        (18.7-20.67]         NA                0.4836066   0.3948057   0.5724074
18 months   ki1148112-LCNI-5        (20.67-23.47]        NA                0.4396552   0.3492037   0.5301066
18 months   ki1148112-LCNI-5        >23.47               NA                0.3953488   0.2490068   0.5416909
24 months   ki0047075b-MAL-ED       <=18.7               NA                0.5258621   0.4349642   0.6167600
24 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.4414894   0.3704839   0.5124948
24 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.4516129   0.4030093   0.5002165
24 months   ki0047075b-MAL-ED       >23.47               NA                0.2963918   0.2642505   0.3285330
24 months   ki1017093-NIH-Birth     <=18.7               NA                0.7362637   0.6456204   0.8269071
24 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.5128205   0.4221452   0.6034958
24 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.5203252   0.4319332   0.6087172
24 months   ki1017093-NIH-Birth     >23.47               NA                0.4795918   0.3805657   0.5786180
24 months   ki1017093b-PROVIDE      <=18.7               NA                0.6363636   0.4346732   0.8380541
24 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                0.4166667   0.2550776   0.5782557
24 months   ki1017093b-PROVIDE      (20.67-23.47]        NA                0.3191489   0.1854327   0.4528652
24 months   ki1017093b-PROVIDE      >23.47               NA                0.1136364   0.0195452   0.2077275
24 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.4081633   0.2704135   0.5459130
24 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.3260870   0.2302031   0.4219709
24 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.2631579   0.1930859   0.3332299
24 months   ki1017093c-NIH-Crypto   >23.47               NA                0.1900452   0.1382686   0.2418219
24 months   ki1148112-LCNI-5        <=18.7               NA                0.5468750   0.4247102   0.6690398
24 months   ki1148112-LCNI-5        (18.7-20.67]         NA                0.4329897   0.3342183   0.5317611
24 months   ki1148112-LCNI-5        (20.67-23.47]        NA                0.4687500   0.3687575   0.5687425
24 months   ki1148112-LCNI-5        >23.47               NA                0.2051282   0.0781843   0.3320721


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NA                   NA                0.1298246   0.1284032   0.1312459
Birth       ki1126311-ZVITAMBO      NA                   NA                0.0986152   0.0979018   0.0993285
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


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.8522727   0.5155185   1.4090062
Birth       ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.6430446   0.4045364   1.0221734
Birth       ki0047075b-MAL-ED       >23.47               <=18.7            0.5570118   0.3616143   0.8579920
Birth       ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.9260658   0.5550439   1.5450993
Birth       ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.8260325   0.5086478   1.3414582
Birth       ki1126311-ZVITAMBO      >23.47               <=18.7            0.6089965   0.3717811   0.9975677
3 months    ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.8326055   0.5353718   1.2948607
3 months    ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.7692662   0.5183508   1.1416409
3 months    ki0047075b-MAL-ED       >23.47               <=18.7            0.6892532   0.4748528   1.0004574
3 months    ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.6392276   0.4274502   0.9559288
3 months    ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.5589669   0.3683846   0.8481460
3 months    ki1017093-NIH-Birth     >23.47               <=18.7            0.7211022   0.4752213   1.0942024
3 months    ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.7267442   0.4608935   1.1459418
3 months    ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.5833333   0.3800904   0.8952550
3 months    ki1017093c-NIH-Crypto   >23.47               <=18.7            0.6270903   0.4202262   0.9357871
3 months    ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.7905301   0.5519428   1.1322511
3 months    ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.6153235   0.4372287   0.8659608
3 months    ki1126311-ZVITAMBO      >23.47               <=18.7            0.3987366   0.2789228   0.5700177
6 months    ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.8774143   0.5808039   1.3255006
6 months    ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.7922246   0.5477056   1.1459073
6 months    ki0047075b-MAL-ED       >23.47               <=18.7            0.5904924   0.4136357   0.8429671
6 months    ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.6320653   0.4409405   0.9060327
6 months    ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.5928066   0.4126476   0.8516217
6 months    ki1017093-NIH-Birth     >23.47               <=18.7            0.5366726   0.3532429   0.8153526
6 months    ki1017093b-PROVIDE      (18.7-20.67]         <=18.7            0.7521368   0.2986876   1.8939847
6 months    ki1017093b-PROVIDE      (20.67-23.47]        <=18.7            0.5347222   0.2027430   1.4102971
6 months    ki1017093b-PROVIDE      >23.47               <=18.7            0.5833333   0.2220125   1.5326967
6 months    ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.5629630   0.3663965   0.8649845
6 months    ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.4299694   0.2868118   0.6445820
6 months    ki1017093c-NIH-Crypto   >23.47               <=18.7            0.4723164   0.3273034   0.6815780
6 months    ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.7894737   0.5068883   1.2295976
6 months    ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.7020281   0.4643009   1.0614741
6 months    ki1126311-ZVITAMBO      >23.47               <=18.7            0.6055262   0.3997846   0.9171487
6 months    ki1148112-LCNI-5        (18.7-20.67]         <=18.7            0.7676696   0.5589834   1.0542649
6 months    ki1148112-LCNI-5        (20.67-23.47]        <=18.7            0.8067808   0.5922978   1.0989325
6 months    ki1148112-LCNI-5        >23.47               <=18.7            0.4380289   0.2410691   0.7959100
9 months    ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.6737149   0.4651726   0.9757492
9 months    ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.7555251   0.5541378   1.0301015
9 months    ki0047075b-MAL-ED       >23.47               <=18.7            0.5721551   0.4244723   0.7712199
9 months    ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.7304965   0.5311572   1.0046462
9 months    ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.7866885   0.5841747   1.0594069
9 months    ki1017093-NIH-Birth     >23.47               <=18.7            0.6399925   0.4480678   0.9141260
9 months    ki1017093b-PROVIDE      (18.7-20.67]         <=18.7            0.6272727   0.3309432   1.1889382
9 months    ki1017093b-PROVIDE      (20.67-23.47]        <=18.7            0.2987013   0.1328270   0.6717195
9 months    ki1017093b-PROVIDE      >23.47               <=18.7            0.3181818   0.1419404   0.7132549
9 months    ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.7436570   0.4899970   1.1286309
9 months    ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.6520605   0.4426401   0.9605612
9 months    ki1017093c-NIH-Crypto   >23.47               <=18.7            0.5059183   0.3432188   0.7457439
9 months    ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.6491624   0.4560197   0.9241088
9 months    ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.5936985   0.4304071   0.8189409
9 months    ki1126311-ZVITAMBO      >23.47               <=18.7            0.4408597   0.3162066   0.6146529
9 months    ki1148112-LCNI-5        (18.7-20.67]         <=18.7            0.5122655   0.3351747   0.7829229
9 months    ki1148112-LCNI-5        (20.67-23.47]        <=18.7            0.6711148   0.4613373   0.9762816
9 months    ki1148112-LCNI-5        >23.47               <=18.7            0.5532468   0.2985402   1.0252620
12 months   ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.7240973   0.5339644   0.9819325
12 months   ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.7815863   0.6039056   1.0115440
12 months   ki0047075b-MAL-ED       >23.47               <=18.7            0.5631484   0.4380957   0.7238969
12 months   ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.6582492   0.4892274   0.8856657
12 months   ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.6465324   0.4845406   0.8626814
12 months   ki1017093-NIH-Birth     >23.47               <=18.7            0.5771605   0.4114427   0.8096249
12 months   ki1017093b-PROVIDE      (18.7-20.67]         <=18.7            0.6234818   0.3618215   1.0743682
12 months   ki1017093b-PROVIDE      (20.67-23.47]        <=18.7            0.3878205   0.2072507   0.7257141
12 months   ki1017093b-PROVIDE      >23.47               <=18.7            0.2256410   0.0989088   0.5147559
12 months   ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.5556430   0.3644360   0.8471699
12 months   ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.6253894   0.4375988   0.8937683
12 months   ki1017093c-NIH-Crypto   >23.47               <=18.7            0.4750000   0.3312821   0.6810661
12 months   ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.8741007   0.6076543   1.2573795
12 months   ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.6699605   0.4704462   0.9540879
12 months   ki1126311-ZVITAMBO      >23.47               <=18.7            0.6315789   0.4447225   0.8969457
12 months   ki1148112-LCNI-5        (18.7-20.67]         <=18.7            0.6998351   0.4940628   0.9913095
12 months   ki1148112-LCNI-5        (20.67-23.47]        <=18.7            0.9080161   0.6618005   1.2458337
12 months   ki1148112-LCNI-5        >23.47               <=18.7            0.4777184   0.2497204   0.9138815
18 months   ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.8131567   0.6501036   1.0171054
18 months   ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.8248758   0.6801752   1.0003602
18 months   ki0047075b-MAL-ED       >23.47               <=18.7            0.5659091   0.4670761   0.6856550
18 months   ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.7466876   0.6182077   0.9018691
18 months   ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.7106772   0.5895654   0.8566683
18 months   ki1017093-NIH-Birth     >23.47               <=18.7            0.6444879   0.5158341   0.8052292
18 months   ki1017093b-PROVIDE      (18.7-20.67]         <=18.7            0.6593407   0.3992922   1.0887518
18 months   ki1017093b-PROVIDE      (20.67-23.47]        <=18.7            0.5244755   0.3106902   0.8853662
18 months   ki1017093b-PROVIDE      >23.47               <=18.7            0.3296703   0.1695792   0.6408955
18 months   ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.6816737   0.4766571   0.9748707
18 months   ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.5845588   0.4170804   0.8192882
18 months   ki1017093c-NIH-Crypto   >23.47               <=18.7            0.5254278   0.3801567   0.7262118
18 months   ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            1.2345679   0.7594327   2.0069691
18 months   ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            1.1650115   0.7235399   1.8758491
18 months   ki1126311-ZVITAMBO      >23.47               <=18.7            0.9667571   0.5954009   1.5697311
18 months   ki1148112-LCNI-5        (18.7-20.67]         <=18.7            0.7614231   0.5916726   0.9798749
18 months   ki1148112-LCNI-5        (20.67-23.47]        <=18.7            0.6922230   0.5290847   0.9056635
18 months   ki1148112-LCNI-5        >23.47               <=18.7            0.6224641   0.4136925   0.9365931
24 months   ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.8395535   0.6629934   1.0631329
24 months   ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.8588049   0.7005887   1.0527515
24 months   ki0047075b-MAL-ED       >23.47               <=18.7            0.5636302   0.4595939   0.6912167
24 months   ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.6965174   0.5615145   0.8639785
24 months   ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.7067104   0.5729637   0.8716774
24 months   ki1017093-NIH-Birth     >23.47               <=18.7            0.6513859   0.5121950   0.8284026
24 months   ki1017093b-PROVIDE      (18.7-20.67]         <=18.7            0.6547619   0.3967953   1.0804390
24 months   ki1017093b-PROVIDE      (20.67-23.47]        <=18.7            0.5015198   0.2965723   0.8480968
24 months   ki1017093b-PROVIDE      >23.47               <=18.7            0.1785714   0.0735820   0.4333637
24 months   ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.7989130   0.5106258   1.2499605
24 months   ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.6447368   0.4194564   0.9910102
24 months   ki1017093c-NIH-Crypto   >23.47               <=18.7            0.4656109   0.3017560   0.7184396
24 months   ki1148112-LCNI-5        (18.7-20.67]         <=18.7            0.7917526   0.5753458   1.0895571
24 months   ki1148112-LCNI-5        (20.67-23.47]        <=18.7            0.8571429   0.6293741   1.1673404
24 months   ki1148112-LCNI-5        >23.47               <=18.7            0.3750916   0.1942672   0.7242275


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       <=18.7               NA                -0.0701754   -0.1467247    0.0063738
Birth       ki1126311-ZVITAMBO      <=18.7               NA                -0.0301727   -0.0873318    0.0269864
3 months    ki0047075b-MAL-ED       <=18.7               NA                -0.0504806   -0.1193172    0.0183559
3 months    ki1017093-NIH-Birth     <=18.7               NA                -0.0962541   -0.1835164   -0.0089919
3 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.1057143   -0.2113965   -0.0000321
3 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.1283060   -0.2202100   -0.0364021
6 months    ki0047075b-MAL-ED       <=18.7               NA                -0.0655005   -0.1374932    0.0064921
6 months    ki1017093-NIH-Birth     <=18.7               NA                -0.1299917   -0.2225711   -0.0374124
6 months    ki1017093b-PROVIDE      <=18.7               NA                -0.0897207   -0.2765605    0.0971191
6 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.1849466   -0.2950229   -0.0748704
6 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.0717687   -0.1591813    0.0156439
6 months    ki1148112-LCNI-5        <=18.7               NA                -0.0972344   -0.2018172    0.0073484
9 months    ki0047075b-MAL-ED       <=18.7               NA                -0.1025428   -0.1833096   -0.0217760
9 months    ki1017093-NIH-Birth     <=18.7               NA                -0.0993087   -0.1957168   -0.0029006
9 months    ki1017093b-PROVIDE      <=18.7               NA                -0.2440837   -0.4497332   -0.0384341
9 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.1277054   -0.2364897   -0.0189210
9 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.1500740   -0.2466813   -0.0534667
9 months    ki1148112-LCNI-5        <=18.7               NA                -0.1491637   -0.2657362   -0.0325913
12 months   ki0047075b-MAL-ED       <=18.7               NA                -0.1286412   -0.2152251   -0.0420573
12 months   ki1017093-NIH-Birth     <=18.7               NA                -0.1546663   -0.2518933   -0.0574394
12 months   ki1017093b-PROVIDE      <=18.7               NA                -0.3033274   -0.5108529   -0.0958019
12 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.1687493   -0.2817896   -0.0557090
12 months   ki1126311-ZVITAMBO      <=18.7               NA                -0.0962555   -0.2009246    0.0084137
12 months   ki1148112-LCNI-5        <=18.7               NA                -0.0964595   -0.2167251    0.0238062
18 months   ki0047075b-MAL-ED       <=18.7               NA                -0.1636364   -0.2527709   -0.0745018
18 months   ki1017093-NIH-Birth     <=18.7               NA                -0.1809481   -0.2663172   -0.0955789
18 months   ki1017093b-PROVIDE      <=18.7               NA                -0.2812057   -0.4922569   -0.0701545
18 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.1835867   -0.3043710   -0.0628023
18 months   ki1126311-ZVITAMBO      <=18.7               NA                 0.0418942   -0.1530257    0.2368140
18 months   ki1148112-LCNI-5        <=18.7               NA                -0.1449943   -0.2551418   -0.0348468
24 months   ki0047075b-MAL-ED       <=18.7               NA                -0.1509464   -0.2419464   -0.0599463
24 months   ki1017093-NIH-Birth     <=18.7               NA                -0.1814852   -0.2725778   -0.0903925
24 months   ki1017093b-PROVIDE      <=18.7               NA                -0.3075046   -0.5110865   -0.1039227
24 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.1513539   -0.2892387   -0.0134691
24 months   ki1148112-LCNI-5        <=18.7               NA                -0.1076858   -0.2303835    0.0150119


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       <=18.7               NA                -0.5405405   -1.2591080   -0.0505320
Birth       ki1126311-ZVITAMBO      <=18.7               NA                -0.3059639   -1.0355978    0.1621421
3 months    ki0047075b-MAL-ED       <=18.7               NA                -0.3276585   -0.8588720    0.0517491
3 months    ki1017093-NIH-Birth     <=18.7               NA                -0.4220374   -0.8616535   -0.0862335
3 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.4933333   -1.0780166   -0.0731601
3 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.7383358   -1.3569424   -0.2820896
6 months    ki0047075b-MAL-ED       <=18.7               NA                -0.4005974   -0.9180981   -0.0227178
6 months    ki1017093-NIH-Birth     <=18.7               NA                -0.4847608   -0.8744156   -0.1761077
6 months    ki1017093b-PROVIDE      <=18.7               NA                -0.4902597   -1.9582525    0.2492615
6 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.8815789   -1.4884468   -0.4227105
6 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.4442105   -1.1005907    0.0070678
6 months    ki1148112-LCNI-5        <=18.7               NA                -0.2637403   -0.5822456   -0.0093500
9 months    ki0047075b-MAL-ED       <=18.7               NA                -0.4954212   -0.9414449   -0.1518662
9 months    ki1017093-NIH-Birth     <=18.7               NA                -0.2781741   -0.5791379   -0.0345702
9 months    ki1017093b-PROVIDE      <=18.7               NA                -1.0423032   -2.1571879   -0.3211131
9 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.5497561   -1.0971272   -0.1452543
9 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.7735298   -1.3487845   -0.3391641
9 months    ki1148112-LCNI-5        <=18.7               NA                -0.4725980   -0.8941688   -0.1448529
12 months   ki0047075b-MAL-ED       <=18.7               NA                -0.4769211   -0.8356886   -0.1882712
12 months   ki1017093-NIH-Birth     <=18.7               NA                -0.4127238   -0.6983631   -0.1751247
12 months   ki1017093b-PROVIDE      <=18.7               NA                -1.0547521   -1.9413884   -0.4353786
12 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.6967075   -1.2348862   -0.2881266
12 months   ki1126311-ZVITAMBO      <=18.7               NA                -0.4060078   -0.9247847   -0.0270540
12 months   ki1148112-LCNI-5        <=18.7               NA                -0.2346927   -0.5654737    0.0261951
18 months   ki0047075b-MAL-ED       <=18.7               NA                -0.4235294   -0.6742713   -0.2103391
18 months   ki1017093-NIH-Birth     <=18.7               NA                -0.3080108   -0.4623122   -0.1699912
18 months   ki1017093b-PROVIDE      <=18.7               NA                -0.7625000   -1.4485614   -0.2686659
18 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.6093924   -1.0654703   -0.2540213
18 months   ki1126311-ZVITAMBO      <=18.7               NA                 0.0869364   -0.4219428    0.4137000
18 months   ki1148112-LCNI-5        <=18.7               NA                -0.2958217   -0.5417238   -0.0891405
24 months   ki0047075b-MAL-ED       <=18.7               NA                -0.4026141   -0.6679156   -0.1795119
24 months   ki1017093-NIH-Birth     <=18.7               NA                -0.3271309   -0.5026118   -0.1721432
24 months   ki1017093b-PROVIDE      <=18.7               NA                -0.9350649   -1.6860568   -0.3940421
24 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.5893630   -1.2292283   -0.1331611
24 months   ki1148112-LCNI-5        <=18.7               NA                -0.2451923   -0.5592208    0.0055906


