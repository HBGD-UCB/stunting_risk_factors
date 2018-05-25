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

**Outcome Variable:** ever_stunted

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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/5f23673c-2a40-469e-a8c3-4dcc8ff1d3d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5f23673c-2a40-469e-a8c3-4dcc8ff1d3d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/5f23673c-2a40-469e-a8c3-4dcc8ff1d3d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5f23673c-2a40-469e-a8c3-4dcc8ff1d3d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                   n    nA   nAY0   nAY1
----------  -------------------------  --------------  -----  ----  -----  -----
3 months    ki0047075b-MAL-ED          <=18.7           1771   133     88     45
3 months    ki0047075b-MAL-ED          (18.7-20.67]     1771   232    168     64
3 months    ki0047075b-MAL-ED          (20.67-23.47]    1771   488    351    137
3 months    ki0047075b-MAL-ED          >23.47           1771   918    703    215
3 months    ki1017093-NIH-Birth        <=18.7            629   127     87     40
3 months    ki1017093-NIH-Birth        (18.7-20.67]      629   178    138     40
3 months    ki1017093-NIH-Birth        (20.67-23.47]     629   187    153     34
3 months    ki1017093-NIH-Birth        >23.47            629   137    111     26
3 months    ki1017093b-PROVIDE         <=18.7            171    26     16     10
3 months    ki1017093b-PROVIDE         (18.7-20.67]      171    41     32      9
3 months    ki1017093b-PROVIDE         (20.67-23.47]     171    51     35     16
3 months    ki1017093b-PROVIDE         >23.47            171    53     45      8
3 months    ki1017093c-NIH-Crypto      <=18.7            755    77     60     17
3 months    ki1017093c-NIH-Crypto      (18.7-20.67]      755   133    107     26
3 months    ki1017093c-NIH-Crypto      (20.67-23.47]     755   234    193     41
3 months    ki1017093c-NIH-Crypto      >23.47            755   311    274     37
3 months    ki1066203-TanzaniaChild2   <=18.7            592     7      6      1
3 months    ki1066203-TanzaniaChild2   (18.7-20.67]      592    66     57      9
3 months    ki1066203-TanzaniaChild2   (20.67-23.47]     592   156    136     20
3 months    ki1066203-TanzaniaChild2   >23.47            592   363    334     29
3 months    ki1126311-ZVITAMBO         <=18.7           2423   134     88     46
3 months    ki1126311-ZVITAMBO         (18.7-20.67]     2423   440    323    117
3 months    ki1126311-ZVITAMBO         (20.67-23.47]    2423   861    652    209
3 months    ki1126311-ZVITAMBO         >23.47           2423   988    807    181
3 months    ki1148112-LCNI-5           <=18.7              0     0      0      0
3 months    ki1148112-LCNI-5           (18.7-20.67]        0     0      0      0
3 months    ki1148112-LCNI-5           (20.67-23.47]       0     0      0      0
3 months    ki1148112-LCNI-5           >23.47              0     0      0      0
6 months    ki0047075b-MAL-ED          <=18.7           1736   132     75     57
6 months    ki0047075b-MAL-ED          (18.7-20.67]     1736   224    144     80
6 months    ki0047075b-MAL-ED          (20.67-23.47]    1736   478    314    164
6 months    ki0047075b-MAL-ED          >23.47           1736   902    626    276
6 months    ki1017093-NIH-Birth        <=18.7            551   105     54     51
6 months    ki1017093-NIH-Birth        (18.7-20.67]      551   165    104     61
6 months    ki1017093-NIH-Birth        (20.67-23.47]     551   164    114     50
6 months    ki1017093-NIH-Birth        >23.47            551   117     78     39
6 months    ki1017093b-PROVIDE         <=18.7            166    26     15     11
6 months    ki1017093b-PROVIDE         (18.7-20.67]      166    40     30     10
6 months    ki1017093b-PROVIDE         (20.67-23.47]     166    51     32     19
6 months    ki1017093b-PROVIDE         >23.47            166    49     41      8
6 months    ki1017093c-NIH-Crypto      <=18.7            736    77     46     31
6 months    ki1017093c-NIH-Crypto      (18.7-20.67]      736   129     89     40
6 months    ki1017093c-NIH-Crypto      (20.67-23.47]     736   229    156     73
6 months    ki1017093c-NIH-Crypto      >23.47            736   301    219     82
6 months    ki1066203-TanzaniaChild2   <=18.7            549     5      5      0
6 months    ki1066203-TanzaniaChild2   (18.7-20.67]      549    57     42     15
6 months    ki1066203-TanzaniaChild2   (20.67-23.47]     549   142    111     31
6 months    ki1066203-TanzaniaChild2   >23.47            549   345    283     62
6 months    ki1126311-ZVITAMBO         <=18.7           1898    93     49     44
6 months    ki1126311-ZVITAMBO         (18.7-20.67]     1898   334    216    118
6 months    ki1126311-ZVITAMBO         (20.67-23.47]    1898   696    476    220
6 months    ki1126311-ZVITAMBO         >23.47           1898   775    579    196
6 months    ki1148112-LCNI-5           <=18.7            133    29     15     14
6 months    ki1148112-LCNI-5           (18.7-20.67]      133    46     32     14
6 months    ki1148112-LCNI-5           (20.67-23.47]     133    46     25     21
6 months    ki1148112-LCNI-5           >23.47            133    12      9      3
12 months   ki0047075b-MAL-ED          <=18.7           1682   128     56     72
12 months   ki0047075b-MAL-ED          (18.7-20.67]     1682   215    113    102
12 months   ki0047075b-MAL-ED          (20.67-23.47]    1682   465    262    203
12 months   ki0047075b-MAL-ED          >23.47           1682   874    528    346
12 months   ki1017093-NIH-Birth        <=18.7            541   108     41     67
12 months   ki1017093-NIH-Birth        (18.7-20.67]      541   150     74     76
12 months   ki1017093-NIH-Birth        (20.67-23.47]     541   165     84     81
12 months   ki1017093-NIH-Birth        >23.47            541   118     66     52
12 months   ki1017093b-PROVIDE         <=18.7            159    23     11     12
12 months   ki1017093b-PROVIDE         (18.7-20.67]      159    40     25     15
12 months   ki1017093b-PROVIDE         (20.67-23.47]     159    50     30     20
12 months   ki1017093b-PROVIDE         >23.47            159    46     37      9
12 months   ki1017093c-NIH-Crypto      <=18.7            729    76     36     40
12 months   ki1017093c-NIH-Crypto      (18.7-20.67]      729   129     82     47
12 months   ki1017093c-NIH-Crypto      (20.67-23.47]     729   223    131     92
12 months   ki1017093c-NIH-Crypto      >23.47            729   301    203     98
12 months   ki1066203-TanzaniaChild2   <=18.7            488     5      5      0
12 months   ki1066203-TanzaniaChild2   (18.7-20.67]      488    43     30     13
12 months   ki1066203-TanzaniaChild2   (20.67-23.47]     488   129     79     50
12 months   ki1066203-TanzaniaChild2   >23.47            488   311    216     95
12 months   ki1126311-ZVITAMBO         <=18.7           2069   115     51     64
12 months   ki1126311-ZVITAMBO         (18.7-20.67]     2069   364    210    154
12 months   ki1126311-ZVITAMBO         (20.67-23.47]    2069   740    447    293
12 months   ki1126311-ZVITAMBO         >23.47           2069   850    561    289
12 months   ki1148112-LCNI-5           <=18.7            401    85     31     54
12 months   ki1148112-LCNI-5           (18.7-20.67]      401   132     70     62
12 months   ki1148112-LCNI-5           (20.67-23.47]     401   136     73     63
12 months   ki1148112-LCNI-5           >23.47            401    48     34     14
18 months   ki0047075b-MAL-ED          <=18.7           1608   125     43     82
18 months   ki0047075b-MAL-ED          (18.7-20.67]     1608   206     79    127
18 months   ki0047075b-MAL-ED          (20.67-23.47]    1608   439    192    247
18 months   ki0047075b-MAL-ED          >23.47           1608   838    428    410
18 months   ki1017093-NIH-Birth        <=18.7            497   103     23     80
18 months   ki1017093-NIH-Birth        (18.7-20.67]      497   134     49     85
18 months   ki1017093-NIH-Birth        (20.67-23.47]     497   151     54     97
18 months   ki1017093-NIH-Birth        >23.47            497   109     48     61
18 months   ki1017093b-PROVIDE         <=18.7            155    23      7     16
18 months   ki1017093b-PROVIDE         (18.7-20.67]      155    38     19     19
18 months   ki1017093b-PROVIDE         (20.67-23.47]     155    49     25     24
18 months   ki1017093b-PROVIDE         >23.47            155    45     34     11
18 months   ki1017093c-NIH-Crypto      <=18.7            715    74     31     43
18 months   ki1017093c-NIH-Crypto      (18.7-20.67]      715   128     72     56
18 months   ki1017093c-NIH-Crypto      (20.67-23.47]     715   218    115    103
18 months   ki1017093c-NIH-Crypto      >23.47            715   295    180    115
18 months   ki1066203-TanzaniaChild2   <=18.7            351     4      4      0
18 months   ki1066203-TanzaniaChild2   (18.7-20.67]      351    32     16     16
18 months   ki1066203-TanzaniaChild2   (20.67-23.47]     351    90     44     46
18 months   ki1066203-TanzaniaChild2   >23.47            351   225    135     90
18 months   ki1126311-ZVITAMBO         <=18.7           1509    88     31     57
18 months   ki1126311-ZVITAMBO         (18.7-20.67]     1509   286    133    153
18 months   ki1126311-ZVITAMBO         (20.67-23.47]    1509   526    264    262
18 months   ki1126311-ZVITAMBO         >23.47           1509   609    335    274
18 months   ki1148112-LCNI-5           <=18.7            326    66     18     48
18 months   ki1148112-LCNI-5           (18.7-20.67]      326   107     48     59
18 months   ki1148112-LCNI-5           (20.67-23.47]     326   109     54     55
18 months   ki1148112-LCNI-5           >23.47            326    44     21     23
24 months   ki0047075b-MAL-ED          <=18.7           1534   121     37     84
24 months   ki0047075b-MAL-ED          (18.7-20.67]     1534   199     65    134
24 months   ki0047075b-MAL-ED          (20.67-23.47]    1534   416    159    257
24 months   ki0047075b-MAL-ED          >23.47           1534   798    373    425
24 months   ki1017093-NIH-Birth        <=18.7            470    96     10     86
24 months   ki1017093-NIH-Birth        (18.7-20.67]      470   126     32     94
24 months   ki1017093-NIH-Birth        (20.67-23.47]     470   142     36    106
24 months   ki1017093-NIH-Birth        >23.47            470   106     37     69
24 months   ki1017093b-PROVIDE         <=18.7            148    21      5     16
24 months   ki1017093b-PROVIDE         (18.7-20.67]      148    37     18     19
24 months   ki1017093b-PROVIDE         (20.67-23.47]     148    47     23     24
24 months   ki1017093b-PROVIDE         >23.47            148    43     30     13
24 months   ki1017093c-NIH-Crypto      <=18.7            634    68     25     43
24 months   ki1017093c-NIH-Crypto      (18.7-20.67]      634   118     58     60
24 months   ki1017093c-NIH-Crypto      (20.67-23.47]     634   188     90     98
24 months   ki1017093c-NIH-Crypto      >23.47            634   260    143    117
24 months   ki1066203-TanzaniaChild2   <=18.7            249     1      1      0
24 months   ki1066203-TanzaniaChild2   (18.7-20.67]      249    24     12     12
24 months   ki1066203-TanzaniaChild2   (20.67-23.47]     249    57     25     32
24 months   ki1066203-TanzaniaChild2   >23.47            249   167     92     75
24 months   ki1126311-ZVITAMBO         <=18.7            380    28      7     21
24 months   ki1126311-ZVITAMBO         (18.7-20.67]      380    83     22     61
24 months   ki1126311-ZVITAMBO         (20.67-23.47]     380   128     29     99
24 months   ki1126311-ZVITAMBO         >23.47            380   141     39    102
24 months   ki1148112-LCNI-5           <=18.7            353    70     15     55
24 months   ki1148112-LCNI-5           (18.7-20.67]      353   121     46     75
24 months   ki1148112-LCNI-5           (20.67-23.47]     353   116     45     71
24 months   ki1148112-LCNI-5           >23.47            353    46     16     30

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       <=18.7               NA                0.3383459   0.2579116   0.4187801
3 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.2758621   0.2183335   0.3333906
3 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.2807377   0.2408577   0.3206177
3 months    ki0047075b-MAL-ED       >23.47               NA                0.2342048   0.2068014   0.2616081
3 months    ki1017093-NIH-Birth     <=18.7               NA                0.3149606   0.2341111   0.3958102
3 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                0.2247191   0.1633524   0.2860859
3 months    ki1017093-NIH-Birth     (20.67-23.47]        NA                0.1818182   0.1264938   0.2371425
3 months    ki1017093-NIH-Birth     >23.47               NA                0.1897810   0.1240666   0.2554955
3 months    ki1017093b-PROVIDE      <=18.7               NA                0.3846154   0.1970634   0.5721674
3 months    ki1017093b-PROVIDE      (18.7-20.67]         NA                0.2195122   0.0924425   0.3465819
3 months    ki1017093b-PROVIDE      (20.67-23.47]        NA                0.3137255   0.1860050   0.4414459
3 months    ki1017093b-PROVIDE      >23.47               NA                0.1509434   0.0542806   0.2476061
3 months    ki1017093c-NIH-Crypto   <=18.7               NA                0.2207792   0.1280749   0.3134835
3 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.1954887   0.1280457   0.2629317
3 months    ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.1752137   0.1264740   0.2239534
3 months    ki1017093c-NIH-Crypto   >23.47               NA                0.1189711   0.0829653   0.1549768
3 months    ki1126311-ZVITAMBO      <=18.7               NA                0.3432836   0.2628753   0.4236919
3 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.2659091   0.2246183   0.3071999
3 months    ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.2427410   0.2140972   0.2713848
3 months    ki1126311-ZVITAMBO      >23.47               NA                0.1831984   0.1590728   0.2073240
6 months    ki0047075b-MAL-ED       <=18.7               NA                0.4318182   0.3472941   0.5163422
6 months    ki0047075b-MAL-ED       (18.7-20.67]         NA                0.3571429   0.2943764   0.4199093
6 months    ki0047075b-MAL-ED       (20.67-23.47]        NA                0.3430962   0.3005248   0.3856677
6 months    ki0047075b-MAL-ED       >23.47               NA                0.3059867   0.2759048   0.3360686
6 months    ki1017093-NIH-Birth     <=18.7               NA                0.4857143   0.3900300   0.5813986
6 months    ki1017093-NIH-Birth     (18.7-20.67]         NA                0.3696970   0.2959748   0.4434192
6 months    ki1017093-NIH-Birth     (20.67-23.47]        NA                0.3048780   0.2343577   0.3753984
6 months    ki1017093-NIH-Birth     >23.47               NA                0.3333333   0.2478378   0.4188289
6 months    ki1017093b-PROVIDE      <=18.7               NA                0.4230769   0.2326001   0.6135537
6 months    ki1017093b-PROVIDE      (18.7-20.67]         NA                0.2500000   0.1154044   0.3845956
6 months    ki1017093b-PROVIDE      (20.67-23.47]        NA                0.3725490   0.2394556   0.5056425
6 months    ki1017093b-PROVIDE      >23.47               NA                0.1632653   0.0594640   0.2670666
6 months    ki1017093c-NIH-Crypto   <=18.7               NA                0.4025974   0.2929832   0.5122116
6 months    ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.3100775   0.2302075   0.3899475
6 months    ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.3187773   0.2583805   0.3791741
6 months    ki1017093c-NIH-Crypto   >23.47               NA                0.2724252   0.2220958   0.3227547
6 months    ki1126311-ZVITAMBO      <=18.7               NA                0.4731183   0.3716191   0.5746174
6 months    ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.3532934   0.3020178   0.4045690
6 months    ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.3160920   0.2815407   0.3506432
6 months    ki1126311-ZVITAMBO      >23.47               NA                0.2529032   0.2222922   0.2835142
12 months   ki0047075b-MAL-ED       <=18.7               NA                0.5625000   0.4765348   0.6484652
12 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.4744186   0.4076521   0.5411851
12 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.4365591   0.3914675   0.4816508
12 months   ki0047075b-MAL-ED       >23.47               NA                0.3958810   0.3634497   0.4283124
12 months   ki1017093-NIH-Birth     <=18.7               NA                0.6203704   0.5287602   0.7119805
12 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.5066667   0.4265845   0.5867488
12 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.4909091   0.4145596   0.5672586
12 months   ki1017093-NIH-Birth     >23.47               NA                0.4406780   0.3510176   0.5303383
12 months   ki1017093b-PROVIDE      <=18.7               NA                0.5217391   0.3169470   0.7265313
12 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                0.3750000   0.2244975   0.5255025
12 months   ki1017093b-PROVIDE      (20.67-23.47]        NA                0.4000000   0.2637807   0.5362193
12 months   ki1017093b-PROVIDE      >23.47               NA                0.1956522   0.0806507   0.3106537
12 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.5263158   0.4139829   0.6386487
12 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.3643411   0.2812379   0.4474442
12 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.4125561   0.3478986   0.4772135
12 months   ki1017093c-NIH-Crypto   >23.47               NA                0.3255814   0.2726080   0.3785548
12 months   ki1126311-ZVITAMBO      <=18.7               NA                0.5565217   0.4657018   0.6473417
12 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.4230769   0.3723112   0.4738427
12 months   ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.3959459   0.3607013   0.4311906
12 months   ki1126311-ZVITAMBO      >23.47               NA                0.3400000   0.3081467   0.3718533
12 months   ki1148112-LCNI-5        <=18.7               NA                0.6352941   0.5328376   0.7377506
12 months   ki1148112-LCNI-5        (18.7-20.67]         NA                0.4696970   0.3844509   0.5549430
12 months   ki1148112-LCNI-5        (20.67-23.47]        NA                0.4632353   0.3793253   0.5471453
12 months   ki1148112-LCNI-5        >23.47               NA                0.2916667   0.1629212   0.4204121
18 months   ki0047075b-MAL-ED       <=18.7               NA                0.6560000   0.5726973   0.7393027
18 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.6165049   0.5500850   0.6829247
18 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.5626424   0.5162245   0.6090603
18 months   ki0047075b-MAL-ED       >23.47               NA                0.4892601   0.4554045   0.5231158
18 months   ki1017093-NIH-Birth     <=18.7               NA                0.7766990   0.6961911   0.8572069
18 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.6343284   0.5527010   0.7159557
18 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.6423841   0.5658592   0.7189090
18 months   ki1017093-NIH-Birth     >23.47               NA                0.5596330   0.4663439   0.6529222
18 months   ki1017093b-PROVIDE      <=18.7               NA                0.6956522   0.5069961   0.8843083
18 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                0.5000000   0.3405106   0.6594894
18 months   ki1017093b-PROVIDE      (20.67-23.47]        NA                0.4897959   0.3493739   0.6302179
18 months   ki1017093b-PROVIDE      >23.47               NA                0.2444444   0.1184734   0.3704155
18 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.5810811   0.4685896   0.6935725
18 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.4375000   0.3515002   0.5234998
18 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.4724771   0.4061585   0.5387956
18 months   ki1017093c-NIH-Crypto   >23.47               NA                0.3898305   0.3341371   0.4455240
18 months   ki1126311-ZVITAMBO      <=18.7               NA                0.6477273   0.5478915   0.7475631
18 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.5349650   0.4771402   0.5927899
18 months   ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.4980989   0.4553558   0.5408420
18 months   ki1126311-ZVITAMBO      >23.47               NA                0.4499179   0.4103936   0.4894422
18 months   ki1148112-LCNI-5        <=18.7               NA                0.7272727   0.6196618   0.8348836
18 months   ki1148112-LCNI-5        (18.7-20.67]         NA                0.5514019   0.4570205   0.6457832
18 months   ki1148112-LCNI-5        (20.67-23.47]        NA                0.5045872   0.4105816   0.5985927
18 months   ki1148112-LCNI-5        >23.47               NA                0.5227273   0.3749152   0.6705393
24 months   ki0047075b-MAL-ED       <=18.7               NA                0.6942149   0.6120943   0.7763355
24 months   ki0047075b-MAL-ED       (18.7-20.67]         NA                0.6733668   0.6081861   0.7385476
24 months   ki0047075b-MAL-ED       (20.67-23.47]        NA                0.6177885   0.5710779   0.6644990
24 months   ki0047075b-MAL-ED       >23.47               NA                0.5325815   0.4979529   0.5672100
24 months   ki1017093-NIH-Birth     <=18.7               NA                0.8958333   0.8346613   0.9570054
24 months   ki1017093-NIH-Birth     (18.7-20.67]         NA                0.7460317   0.6699477   0.8221158
24 months   ki1017093-NIH-Birth     (20.67-23.47]        NA                0.7464789   0.6748510   0.8181068
24 months   ki1017093-NIH-Birth     >23.47               NA                0.6509434   0.5601034   0.7417834
24 months   ki1017093b-PROVIDE      <=18.7               NA                0.7619048   0.5791215   0.9446880
24 months   ki1017093b-PROVIDE      (18.7-20.67]         NA                0.5135135   0.3519175   0.6751096
24 months   ki1017093b-PROVIDE      (20.67-23.47]        NA                0.5106383   0.3672403   0.6540363
24 months   ki1017093b-PROVIDE      >23.47               NA                0.3023256   0.1645888   0.4400624
24 months   ki1017093c-NIH-Crypto   <=18.7               NA                0.6323529   0.5176613   0.7470446
24 months   ki1017093c-NIH-Crypto   (18.7-20.67]         NA                0.5084746   0.4182017   0.5987475
24 months   ki1017093c-NIH-Crypto   (20.67-23.47]        NA                0.5212766   0.4498124   0.5927408
24 months   ki1017093c-NIH-Crypto   >23.47               NA                0.4500000   0.3894810   0.5105190
24 months   ki1126311-ZVITAMBO      <=18.7               NA                0.7500000   0.5894013   0.9105987
24 months   ki1126311-ZVITAMBO      (18.7-20.67]         NA                0.7349398   0.6398619   0.8300176
24 months   ki1126311-ZVITAMBO      (20.67-23.47]        NA                0.7734375   0.7008232   0.8460518
24 months   ki1126311-ZVITAMBO      >23.47               NA                0.7234043   0.6494737   0.7973348
24 months   ki1148112-LCNI-5        <=18.7               NA                0.7857143   0.6894547   0.8819739
24 months   ki1148112-LCNI-5        (18.7-20.67]         NA                0.6198347   0.5332192   0.7064502
24 months   ki1148112-LCNI-5        (20.67-23.47]        NA                0.6120690   0.5232690   0.7008689
24 months   ki1148112-LCNI-5        >23.47               NA                0.6521739   0.5143426   0.7900053


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       NA                   NA                0.2603049   0.2588636   0.2617463
3 months    ki1017093-NIH-Birth     NA                   NA                0.2225755   0.2187021   0.2264489
3 months    ki1017093b-PROVIDE      NA                   NA                0.2514620   0.2386816   0.2642424
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.1602649   0.1576290   0.1629008
3 months    ki1126311-ZVITAMBO      NA                   NA                0.2282295   0.2264974   0.2299616
6 months    ki0047075b-MAL-ED       NA                   NA                0.3323733   0.3307267   0.3340199
6 months    ki1017093-NIH-Birth     NA                   NA                0.3647913   0.3594582   0.3701244
6 months    ki1017093b-PROVIDE      NA                   NA                0.2891566   0.2739035   0.3044098
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.3070652   0.3042748   0.3098556
6 months    ki1126311-ZVITAMBO      NA                   NA                0.3045311   0.3020876   0.3069746
12 months   ki0047075b-MAL-ED       NA                   NA                0.4298454   0.4276007   0.4320902
12 months   ki1017093-NIH-Birth     NA                   NA                0.5101664   0.5051098   0.5152229
12 months   ki1017093b-PROVIDE      NA                   NA                0.3522013   0.3350513   0.3693512
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.3799726   0.3754816   0.3844635
12 months   ki1126311-ZVITAMBO      NA                   NA                0.3866602   0.3843950   0.3889254
12 months   ki1148112-LCNI-5        NA                   NA                0.4812968   0.4717520   0.4908415
18 months   ki0047075b-MAL-ED       NA                   NA                0.5385572   0.5357590   0.5413554
18 months   ki1017093-NIH-Birth     NA                   NA                0.6498994   0.6435523   0.6562465
18 months   ki1017093b-PROVIDE      NA                   NA                0.4516129   0.4280105   0.4752153
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.4433566   0.4390734   0.4476399
18 months   ki1126311-ZVITAMBO      NA                   NA                0.4943671   0.4918505   0.4968837
18 months   ki1148112-LCNI-5        NA                   NA                0.5674847   0.5584884   0.5764809
24 months   ki0047075b-MAL-ED       NA                   NA                0.5867014   0.5836681   0.5897348
24 months   ki1017093-NIH-Birth     NA                   NA                0.7553191   0.7480021   0.7626362
24 months   ki1017093b-PROVIDE      NA                   NA                0.4864865   0.4630689   0.5099041
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.5015773   0.4972756   0.5058790
24 months   ki1126311-ZVITAMBO      NA                   NA                0.7447368   0.7425558   0.7469179
24 months   ki1148112-LCNI-5        NA                   NA                0.6543909   0.6474469   0.6613349


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.8153257   0.5942819   1.1185869
3 months    ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.8297359   0.6290249   1.0944903
3 months    ki0047075b-MAL-ED       >23.47               <=18.7            0.6922053   0.5310842   0.9022076
3 months    ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.7134831   0.4904724   1.0378936
3 months    ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.5772727   0.3876941   0.8595535
3 months    ki1017093-NIH-Birth     >23.47               <=18.7            0.6025547   0.3915612   0.9272427
3 months    ki1017093b-PROVIDE      (18.7-20.67]         <=18.7            0.5707317   0.2677435   1.2165924
3 months    ki1017093b-PROVIDE      (20.67-23.47]        <=18.7            0.8156863   0.4321588   1.5395825
3 months    ki1017093b-PROVIDE      >23.47               <=18.7            0.3924528   0.1754758   0.8777233
3 months    ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.8854489   0.5142178   1.5246842
3 months    ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.7936149   0.4795840   1.3132726
3 months    ki1017093c-NIH-Crypto   >23.47               <=18.7            0.5388689   0.3211399   0.9042157
3 months    ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.7746047   0.5848315   1.0259579
3 months    ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.7071151   0.5439820   0.9191696
3 months    ki1126311-ZVITAMBO      >23.47               <=18.7            0.5336648   0.4079128   0.6981840
6 months    ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.8270677   0.6357632   1.0759367
6 months    ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.7945386   0.6301812   1.0017621
6 months    ki0047075b-MAL-ED       >23.47               <=18.7            0.7086008   0.5692107   0.8821250
6 months    ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.7611408   0.5750801   1.0073994
6 months    ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.6276901   0.4632283   0.8505414
6 months    ki1017093-NIH-Birth     >23.47               <=18.7            0.6862745   0.4966418   0.9483147
6 months    ki1017093b-PROVIDE      (18.7-20.67]         <=18.7            0.5909091   0.2929031   1.1921128
6 months    ki1017093b-PROVIDE      (20.67-23.47]        <=18.7            0.8805704   0.4956308   1.5644794
6 months    ki1017093b-PROVIDE      >23.47               <=18.7            0.3858998   0.1770672   0.8410291
6 months    ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.7701925   0.5294492   1.1204032
6 months    ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.7918017   0.5682770   1.1032470
6 months    ki1017093c-NIH-Crypto   >23.47               <=18.7            0.6766692   0.4869456   0.9403128
6 months    ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.7467338   0.5763379   0.9675077
6 months    ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.6681034   0.5251420   0.8499838
6 months    ki1126311-ZVITAMBO      >23.47               <=18.7            0.5345455   0.4178385   0.6838499
12 months   ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.8434109   0.6851924   1.0381637
12 months   ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.7761051   0.6453742   0.9333178
12 months   ki0047075b-MAL-ED       >23.47               <=18.7            0.7037885   0.5917467   0.8370444
12 months   ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.8167164   0.6578557   1.0139392
12 months   ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.7913161   0.6385711   0.9805975
12 months   ki1017093-NIH-Birth     >23.47               <=18.7            0.7103466   0.5524440   0.9133818
12 months   ki1017093b-PROVIDE      (18.7-20.67]         <=18.7            0.7187500   0.4099915   1.2600301
12 months   ki1017093b-PROVIDE      (20.67-23.47]        <=18.7            0.7666667   0.4559553   1.2891128
12 months   ki1017093b-PROVIDE      >23.47               <=18.7            0.3750000   0.1849580   0.7603077
12 months   ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.6922481   0.5065219   0.9460743
12 months   ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.7838565   0.6015033   1.0214924
12 months   ki1017093c-NIH-Crypto   >23.47               <=18.7            0.6186047   0.4729973   0.8090356
12 months   ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.7602163   0.6208224   0.9309085
12 months   ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.7114654   0.5907758   0.8568106
12 months   ki1126311-ZVITAMBO      >23.47               <=18.7            0.6109375   0.5061446   0.7374269
12 months   ki1148112-LCNI-5        (18.7-20.67]         <=18.7            0.7393378   0.5799615   0.9425116
12 months   ki1148112-LCNI-5        (20.67-23.47]        <=18.7            0.7291667   0.5721336   0.9293005
12 months   ki1148112-LCNI-5        >23.47               <=18.7            0.4591049   0.2869554   0.7345299
18 months   ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.9397940   0.7956266   1.1100845
18 months   ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.8576865   0.7371613   0.9979175
18 months   ki0047075b-MAL-ED       >23.47               <=18.7            0.7458234   0.6454018   0.8618701
18 months   ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.8166978   0.6923083   0.9634367
18 months   ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.8270695   0.7062575   0.9685477
18 months   ki1017093-NIH-Birth     >23.47               <=18.7            0.7205275   0.5921073   0.8768004
18 months   ki1017093b-PROVIDE      (18.7-20.67]         <=18.7            0.7187500   0.4728761   1.0924672
18 months   ki1017093b-PROVIDE      (20.67-23.47]        <=18.7            0.7040816   0.4744972   1.0447501
18 months   ki1017093b-PROVIDE      >23.47               <=18.7            0.3513889   0.1962827   0.6290627
18 months   ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.7529070   0.5713764   0.9921111
18 months   ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.8131001   0.6401695   1.0327448
18 months   ki1017093c-NIH-Crypto   >23.47               <=18.7            0.6708711   0.5274101   0.8533550
18 months   ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.8259109   0.6841865   0.9969926
18 months   ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            0.7689947   0.6446283   0.9173549
18 months   ki1126311-ZVITAMBO      >23.47               <=18.7            0.6946101   0.5816922   0.8294476
18 months   ki1148112-LCNI-5        (18.7-20.67]         <=18.7            0.7581776   0.6046575   0.9506757
18 months   ki1148112-LCNI-5        (20.67-23.47]        <=18.7            0.6938073   0.5469090   0.8801622
18 months   ki1148112-LCNI-5        >23.47               <=18.7            0.7187500   0.5223665   0.9889638
24 months   ki0047075b-MAL-ED       (18.7-20.67]         <=18.7            0.9699689   0.8324841   1.1301593
24 months   ki0047075b-MAL-ED       (20.67-23.47]        <=18.7            0.8899096   0.7733469   1.0240411
24 months   ki0047075b-MAL-ED       >23.47               <=18.7            0.7671709   0.6702998   0.8780417
24 months   ki1017093-NIH-Birth     (18.7-20.67]         <=18.7            0.8327796   0.7365922   0.9415276
24 months   ki1017093-NIH-Birth     (20.67-23.47]        <=18.7            0.8332787   0.7407009   0.9374276
24 months   ki1017093-NIH-Birth     >23.47               <=18.7            0.7266345   0.6220754   0.8487679
24 months   ki1017093b-PROVIDE      (18.7-20.67]         <=18.7            0.6739865   0.4537319   1.0011591
24 months   ki1017093b-PROVIDE      (20.67-23.47]        <=18.7            0.6702128   0.4632434   0.9696525
24 months   ki1017093b-PROVIDE      >23.47               <=18.7            0.3968023   0.2371146   0.6640337
24 months   ki1017093c-NIH-Crypto   (18.7-20.67]         <=18.7            0.8040993   0.6238569   1.0364168
24 months   ki1017093c-NIH-Crypto   (20.67-23.47]        <=18.7            0.8243444   0.6567030   1.0347809
24 months   ki1017093c-NIH-Crypto   >23.47               <=18.7            0.7116279   0.5677956   0.8918953
24 months   ki1126311-ZVITAMBO      (18.7-20.67]         <=18.7            0.9799197   0.7630273   1.2584643
24 months   ki1126311-ZVITAMBO      (20.67-23.47]        <=18.7            1.0312500   0.8162476   1.3028847
24 months   ki1126311-ZVITAMBO      >23.47               <=18.7            0.9645390   0.7608079   1.2228258
24 months   ki1148112-LCNI-5        (18.7-20.67]         <=18.7            0.7888805   0.6550916   0.9499930
24 months   ki1148112-LCNI-5        (20.67-23.47]        <=18.7            0.7789969   0.6442700   0.9418973
24 months   ki1148112-LCNI-5        >23.47               <=18.7            0.8300395   0.6501414   1.0597166


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED       <=18.7               NA                -0.0780410   -0.1584881    0.0024062
3 months    ki1017093-NIH-Birth     <=18.7               NA                -0.0923851   -0.1733274   -0.0114428
3 months    ki1017093b-PROVIDE      <=18.7               NA                -0.1331534   -0.3211403    0.0548335
3 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.0605143   -0.1532561    0.0322274
3 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.1150541   -0.1954811   -0.0346272
6 months    ki0047075b-MAL-ED       <=18.7               NA                -0.0994449   -0.1839850   -0.0149048
6 months    ki1017093-NIH-Birth     <=18.7               NA                -0.1209230   -0.2167558   -0.0250902
6 months    ki1017093b-PROVIDE      <=18.7               NA                -0.1339203   -0.3250069    0.0571663
6 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.0955322   -0.2051819    0.0141176
6 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.1685872   -0.2701158   -0.0670586
12 months   ki0047075b-MAL-ED       <=18.7               NA                -0.1326546   -0.2186491   -0.0466601
12 months   ki1017093-NIH-Birth     <=18.7               NA                -0.1102040   -0.2019536   -0.0184544
12 months   ki1017093b-PROVIDE      <=18.7               NA                -0.1695379   -0.3750469    0.0359711
12 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.1463432   -0.2587659   -0.0339206
12 months   ki1126311-ZVITAMBO      <=18.7               NA                -0.1698615   -0.2607097   -0.0790133
12 months   ki1148112-LCNI-5        <=18.7               NA                -0.1539974   -0.2568975   -0.0510972
18 months   ki0047075b-MAL-ED       <=18.7               NA                -0.1174428   -0.2007925   -0.0340931
18 months   ki1017093-NIH-Birth     <=18.7               NA                -0.1267996   -0.2075573   -0.0460419
18 months   ki1017093b-PROVIDE      <=18.7               NA                -0.2440393   -0.4341661   -0.0539125
18 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.1377244   -0.2502974   -0.0251515
18 months   ki1126311-ZVITAMBO      <=18.7               NA                -0.1533601   -0.2532277   -0.0534926
18 months   ki1148112-LCNI-5        <=18.7               NA                -0.1597881   -0.2677743   -0.0518018
24 months   ki0047075b-MAL-ED       <=18.7               NA                -0.1075134   -0.1896901   -0.0253368
24 months   ki1017093-NIH-Birth     <=18.7               NA                -0.1405142   -0.2021223   -0.0789061
24 months   ki1017093b-PROVIDE      <=18.7               NA                -0.2754183   -0.4596955   -0.0911411
24 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.1307757   -0.2455479   -0.0160034
24 months   ki1126311-ZVITAMBO      <=18.7               NA                -0.0052632   -0.1658766    0.1553503
24 months   ki1148112-LCNI-5        <=18.7               NA                -0.1313234   -0.2278331   -0.0348136


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED       <=18.7               NA                -0.2998059   -0.6487332   -0.0247233
3 months    ki1017093-NIH-Birth     <=18.7               NA                -0.4150731   -0.8302778   -0.0940590
3 months    ki1017093b-PROVIDE      <=18.7               NA                -0.5295170   -1.4973461    0.0632367
3 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.3775894   -1.0970950    0.0950565
3 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.5041159   -0.9013441   -0.1898766
6 months    ki0047075b-MAL-ED       <=18.7               NA                -0.2991965   -0.5801955   -0.0681662
6 months    ki1017093-NIH-Birth     <=18.7               NA                -0.3314854   -0.6222823   -0.0928144
6 months    ki1017093b-PROVIDE      <=18.7               NA                -0.4631410   -1.3022415    0.0701316
6 months    ki1017093c-NIH-Crypto   <=18.7               NA                -0.3111137   -0.7216724    0.0015412
6 months    ki1126311-ZVITAMBO      <=18.7               NA                -0.5535960   -0.9256327   -0.2534377
12 months   ki0047075b-MAL-ED       <=18.7               NA                -0.3086100   -0.5248280   -0.1230512
12 months   ki1017093-NIH-Birth     <=18.7               NA                -0.2160158   -0.4099893   -0.0487275
12 months   ki1017093b-PROVIDE      <=18.7               NA                -0.4813665   -1.2000763    0.0025589
12 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.3851416   -0.7152552   -0.1185607
12 months   ki1126311-ZVITAMBO      <=18.7               NA                -0.4393043   -0.6946177   -0.2224568
12 months   ki1148112-LCNI-5        <=18.7               NA                -0.3199634   -0.5528515   -0.1220026
18 months   ki0047075b-MAL-ED       <=18.7               NA                -0.2180693   -0.3831440   -0.0726958
18 months   ki1017093-NIH-Birth     <=18.7               NA                -0.1951066   -0.3262406   -0.0769386
18 months   ki1017093b-PROVIDE      <=18.7               NA                -0.5403727   -1.0303484   -0.1686408
18 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.3106403   -0.5909744   -0.0797019
18 months   ki1126311-ZVITAMBO      <=18.7               NA                -0.3102151   -0.5286849   -0.1229676
18 months   ki1148112-LCNI-5        <=18.7               NA                -0.2815725   -0.4872066   -0.1043711
24 months   ki0047075b-MAL-ED       <=18.7               NA                -0.1832507   -0.3319862   -0.0511237
24 months   ki1017093-NIH-Birth     <=18.7               NA                -0.1860329   -0.2707189   -0.1069906
24 months   ki1017093b-PROVIDE      <=18.7               NA                -0.5661376   -1.0002997   -0.2262097
24 months   ki1017093c-NIH-Crypto   <=18.7               NA                -0.2607288   -0.5117463   -0.0513915
24 months   ki1126311-ZVITAMBO      <=18.7               NA                -0.0070671   -0.2475652    0.1870692
24 months   ki1148112-LCNI-5        <=18.7               NA                -0.2006803   -0.3577911   -0.0617488


