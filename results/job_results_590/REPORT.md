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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
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
![](/tmp/a94c150f-0be3-4564-bd76-3c94d08b5e04/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a94c150f-0be3-4564-bd76-3c94d08b5e04/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/a94c150f-0be3-4564-bd76-3c94d08b5e04/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a94c150f-0be3-4564-bd76-3c94d08b5e04/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                 n     nA   nAY0   nAY1
----------  -------------------------  ------------  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED          <=42.4         1771    143     88     55
3 months    ki0047075b-MAL-ED          (42.4-49.2]    1771    346    228    118
3 months    ki0047075b-MAL-ED          (49.2-59.3]    1771    657    499    158
3 months    ki0047075b-MAL-ED          >59.3          1771    625    495    130
3 months    ki1017093-NIH-Birth        <=42.4          629    174    117     57
3 months    ki1017093-NIH-Birth        (42.4-49.2]     629    209    170     39
3 months    ki1017093-NIH-Birth        (49.2-59.3]     629    181    146     35
3 months    ki1017093-NIH-Birth        >59.3           629     65     56      9
3 months    ki1017093b-PROVIDE         <=42.4          171     42     26     16
3 months    ki1017093b-PROVIDE         (42.4-49.2]     171     45     33     12
3 months    ki1017093b-PROVIDE         (49.2-59.3]     171     58     46     12
3 months    ki1017093b-PROVIDE         >59.3           171     26     23      3
3 months    ki1017093c-NIH-Crypto      <=42.4          755    104     79     25
3 months    ki1017093c-NIH-Crypto      (42.4-49.2]     755    228    186     42
3 months    ki1017093c-NIH-Crypto      (49.2-59.3]     755    268    229     39
3 months    ki1017093c-NIH-Crypto      >59.3           755    155    140     15
3 months    ki1066203-TanzaniaChild2   <=42.4          592      6      4      2
3 months    ki1066203-TanzaniaChild2   (42.4-49.2]     592     60     50     10
3 months    ki1066203-TanzaniaChild2   (49.2-59.3]     592    222    195     27
3 months    ki1066203-TanzaniaChild2   >59.3           592    304    284     20
3 months    ki1126311-ZVITAMBO         <=42.4         2756     28     14     14
3 months    ki1126311-ZVITAMBO         (42.4-49.2]    2756    306    211     95
3 months    ki1126311-ZVITAMBO         (49.2-59.3]    2756   1157    846    311
3 months    ki1126311-ZVITAMBO         >59.3          2756   1265   1066    199
3 months    ki1148112-LCNI-5           <=42.4            0      0      0      0
3 months    ki1148112-LCNI-5           (42.4-49.2]       0      0      0      0
3 months    ki1148112-LCNI-5           (49.2-59.3]       0      0      0      0
3 months    ki1148112-LCNI-5           >59.3             0      0      0      0
6 months    ki0047075b-MAL-ED          <=42.4         1736    139     72     67
6 months    ki0047075b-MAL-ED          (42.4-49.2]    1736    341    204    137
6 months    ki0047075b-MAL-ED          (49.2-59.3]    1736    645    438    207
6 months    ki0047075b-MAL-ED          >59.3          1736    611    445    166
6 months    ki1017093-NIH-Birth        <=42.4          551    150     68     82
6 months    ki1017093-NIH-Birth        (42.4-49.2]     551    186    128     58
6 months    ki1017093-NIH-Birth        (49.2-59.3]     551    161    115     46
6 months    ki1017093-NIH-Birth        >59.3           551     54     39     15
6 months    ki1017093b-PROVIDE         <=42.4          166     41     25     16
6 months    ki1017093b-PROVIDE         (42.4-49.2]     166     45     29     16
6 months    ki1017093b-PROVIDE         (49.2-59.3]     166     54     41     13
6 months    ki1017093b-PROVIDE         >59.3           166     26     23      3
6 months    ki1017093c-NIH-Crypto      <=42.4          736    103     60     43
6 months    ki1017093c-NIH-Crypto      (42.4-49.2]     736    223    148     75
6 months    ki1017093c-NIH-Crypto      (49.2-59.3]     736    259    181     78
6 months    ki1017093c-NIH-Crypto      >59.3           736    151    121     30
6 months    ki1066203-TanzaniaChild2   <=42.4          549      5      3      2
6 months    ki1066203-TanzaniaChild2   (42.4-49.2]     549     53     36     17
6 months    ki1066203-TanzaniaChild2   (49.2-59.3]     549    201    153     48
6 months    ki1066203-TanzaniaChild2   >59.3           549    290    249     41
6 months    ki1126311-ZVITAMBO         <=42.4         2123     17      5     12
6 months    ki1126311-ZVITAMBO         (42.4-49.2]    2123    216    113    103
6 months    ki1126311-ZVITAMBO         (49.2-59.3]    2123    912    608    304
6 months    ki1126311-ZVITAMBO         >59.3          2123    978    761    217
6 months    ki1148112-LCNI-5           <=42.4          133     15      6      9
6 months    ki1148112-LCNI-5           (42.4-49.2]     133     49     28     21
6 months    ki1148112-LCNI-5           (49.2-59.3]     133     59     41     18
6 months    ki1148112-LCNI-5           >59.3           133     10      6      4
12 months   ki0047075b-MAL-ED          <=42.4         1682    135     54     81
12 months   ki0047075b-MAL-ED          (42.4-49.2]    1682    326    160    166
12 months   ki0047075b-MAL-ED          (49.2-59.3]    1682    626    366    260
12 months   ki0047075b-MAL-ED          >59.3          1682    595    379    216
12 months   ki1017093-NIH-Birth        <=42.4          541    151     48    103
12 months   ki1017093-NIH-Birth        (42.4-49.2]     541    179     93     86
12 months   ki1017093-NIH-Birth        (49.2-59.3]     541    153     86     67
12 months   ki1017093-NIH-Birth        >59.3           541     58     38     20
12 months   ki1017093b-PROVIDE         <=42.4          159     39     19     20
12 months   ki1017093b-PROVIDE         (42.4-49.2]     159     42     23     19
12 months   ki1017093b-PROVIDE         (49.2-59.3]     159     52     38     14
12 months   ki1017093b-PROVIDE         >59.3           159     26     23      3
12 months   ki1017093c-NIH-Crypto      <=42.4          729    101     47     54
12 months   ki1017093c-NIH-Crypto      (42.4-49.2]     729    222    129     93
12 months   ki1017093c-NIH-Crypto      (49.2-59.3]     729    255    165     90
12 months   ki1017093c-NIH-Crypto      >59.3           729    151    111     40
12 months   ki1066203-TanzaniaChild2   <=42.4          488      5      2      3
12 months   ki1066203-TanzaniaChild2   (42.4-49.2]     488     44     26     18
12 months   ki1066203-TanzaniaChild2   (49.2-59.3]     488    179    110     69
12 months   ki1066203-TanzaniaChild2   >59.3           488    260    192     68
12 months   ki1126311-ZVITAMBO         <=42.4         2335     20      5     15
12 months   ki1126311-ZVITAMBO         (42.4-49.2]    2335    256    112    144
12 months   ki1126311-ZVITAMBO         (49.2-59.3]    2335    979    566    413
12 months   ki1126311-ZVITAMBO         >59.3          2335   1080    754    326
12 months   ki1148112-LCNI-5           <=42.4          402     34      6     28
12 months   ki1148112-LCNI-5           (42.4-49.2]     402    149     66     83
12 months   ki1148112-LCNI-5           (49.2-59.3]     402    177    107     70
12 months   ki1148112-LCNI-5           >59.3           402     42     29     13
18 months   ki0047075b-MAL-ED          <=42.4         1608    130     35     95
18 months   ki0047075b-MAL-ED          (42.4-49.2]    1608    317    113    204
18 months   ki0047075b-MAL-ED          (49.2-59.3]    1608    596    281    315
18 months   ki0047075b-MAL-ED          >59.3          1608    565    313    252
18 months   ki1017093-NIH-Birth        <=42.4          497    139     24    115
18 months   ki1017093-NIH-Birth        (42.4-49.2]     497    163     59    104
18 months   ki1017093-NIH-Birth        (49.2-59.3]     497    143     61     82
18 months   ki1017093-NIH-Birth        >59.3           497     52     30     22
18 months   ki1017093b-PROVIDE         <=42.4          155     38     13     25
18 months   ki1017093b-PROVIDE         (42.4-49.2]     155     40     17     23
18 months   ki1017093b-PROVIDE         (49.2-59.3]     155     51     34     17
18 months   ki1017093b-PROVIDE         >59.3           155     26     21      5
18 months   ki1017093c-NIH-Crypto      <=42.4          715     99     41     58
18 months   ki1017093c-NIH-Crypto      (42.4-49.2]     715    219    110    109
18 months   ki1017093c-NIH-Crypto      (49.2-59.3]     715    251    146    105
18 months   ki1017093c-NIH-Crypto      >59.3           715    146    101     45
18 months   ki1066203-TanzaniaChild2   <=42.4          351      4      1      3
18 months   ki1066203-TanzaniaChild2   (42.4-49.2]     351     35     14     21
18 months   ki1066203-TanzaniaChild2   (49.2-59.3]     351    126     62     64
18 months   ki1066203-TanzaniaChild2   >59.3           351    186    122     64
18 months   ki1126311-ZVITAMBO         <=42.4         1708     14      3     11
18 months   ki1126311-ZVITAMBO         (42.4-49.2]    1708    205     73    132
18 months   ki1126311-ZVITAMBO         (49.2-59.3]    1708    722    338    384
18 months   ki1126311-ZVITAMBO         >59.3          1708    767    459    308
18 months   ki1148112-LCNI-5           <=42.4          327     26      4     22
18 months   ki1148112-LCNI-5           (42.4-49.2]     327    118     45     73
18 months   ki1148112-LCNI-5           (49.2-59.3]     327    146     69     77
18 months   ki1148112-LCNI-5           >59.3           327     37     23     14
24 months   ki0047075b-MAL-ED          <=42.4         1534    126     26    100
24 months   ki0047075b-MAL-ED          (42.4-49.2]    1534    305     93    212
24 months   ki0047075b-MAL-ED          (49.2-59.3]    1534    570    248    322
24 months   ki0047075b-MAL-ED          >59.3          1534    533    267    266
24 months   ki1017093-NIH-Birth        <=42.4          470    130      8    122
24 months   ki1017093-NIH-Birth        (42.4-49.2]     470    156     39    117
24 months   ki1017093-NIH-Birth        (49.2-59.3]     470    135     44     91
24 months   ki1017093-NIH-Birth        >59.3           470     49     24     25
24 months   ki1017093b-PROVIDE         <=42.4          148     36     11     25
24 months   ki1017093b-PROVIDE         (42.4-49.2]     148     38     16     22
24 months   ki1017093b-PROVIDE         (49.2-59.3]     148     50     30     20
24 months   ki1017093b-PROVIDE         >59.3           148     24     19      5
24 months   ki1017093c-NIH-Crypto      <=42.4          634     92     33     59
24 months   ki1017093c-NIH-Crypto      (42.4-49.2]     634    196     86    110
24 months   ki1017093c-NIH-Crypto      (49.2-59.3]     634    215    115    100
24 months   ki1017093c-NIH-Crypto      >59.3           634    131     82     49
24 months   ki1066203-TanzaniaChild2   <=42.4          249      3      0      3
24 months   ki1066203-TanzaniaChild2   (42.4-49.2]     249     27     10     17
24 months   ki1066203-TanzaniaChild2   (49.2-59.3]     249     82     38     44
24 months   ki1066203-TanzaniaChild2   >59.3           249    137     82     55
24 months   ki1126311-ZVITAMBO         <=42.4          434      4      0      4
24 months   ki1126311-ZVITAMBO         (42.4-49.2]     434     72     13     59
24 months   ki1126311-ZVITAMBO         (49.2-59.3]     434    196     44    152
24 months   ki1126311-ZVITAMBO         >59.3           434    162     58    104
24 months   ki1148112-LCNI-5           <=42.4          354     29      4     25
24 months   ki1148112-LCNI-5           (42.4-49.2]     354    128     34     94
24 months   ki1148112-LCNI-5           (49.2-59.3]     354    159     66     93
24 months   ki1148112-LCNI-5           >59.3           354     38     18     20

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       <=42.4               NA                0.3846154   0.3048546   0.4643762
3 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                0.3410405   0.2910756   0.3910054
3 months    ki0047075b-MAL-ED       (49.2-59.3]          NA                0.2404871   0.2077981   0.2731761
3 months    ki0047075b-MAL-ED       >59.3                NA                0.2080000   0.1761709   0.2398291
3 months    ki1017093-NIH-Birth     <=42.4               NA                0.3275862   0.2577951   0.3973773
3 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                0.1866029   0.1337424   0.2394633
3 months    ki1017093-NIH-Birth     (49.2-59.3]          NA                0.1933702   0.1357882   0.2509521
3 months    ki1017093-NIH-Birth     >59.3                NA                0.1384615   0.0544307   0.2224924
3 months    ki1017093c-NIH-Crypto   <=42.4               NA                0.2403846   0.1582040   0.3225652
3 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.1842105   0.1338588   0.2345623
3 months    ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.1455224   0.1032766   0.1877682
3 months    ki1017093c-NIH-Crypto   >59.3                NA                0.0967742   0.0501997   0.1433487
3 months    ki1126311-ZVITAMBO      <=42.4               NA                0.5000000   0.3147672   0.6852328
3 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.3104575   0.2586076   0.3623074
3 months    ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.2687986   0.2432485   0.2943487
3 months    ki1126311-ZVITAMBO      >59.3                NA                0.1573123   0.1372446   0.1773799
6 months    ki0047075b-MAL-ED       <=42.4               NA                0.4820144   0.3989233   0.5651055
6 months    ki0047075b-MAL-ED       (42.4-49.2]          NA                0.4017595   0.3497100   0.4538091
6 months    ki0047075b-MAL-ED       (49.2-59.3]          NA                0.3209302   0.2848926   0.3569678
6 months    ki0047075b-MAL-ED       >59.3                NA                0.2716858   0.2364044   0.3069671
6 months    ki1017093-NIH-Birth     <=42.4               NA                0.5466667   0.4669284   0.6264050
6 months    ki1017093-NIH-Birth     (42.4-49.2]          NA                0.3118280   0.2451945   0.3784614
6 months    ki1017093-NIH-Birth     (49.2-59.3]          NA                0.2857143   0.2158699   0.3555587
6 months    ki1017093-NIH-Birth     >59.3                NA                0.2777778   0.1582057   0.3973499
6 months    ki1017093c-NIH-Crypto   <=42.4               NA                0.4174757   0.3221748   0.5127767
6 months    ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.3363229   0.2742721   0.3983737
6 months    ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.3011583   0.2452495   0.3570671
6 months    ki1017093c-NIH-Crypto   >59.3                NA                0.1986755   0.1349914   0.2623596
6 months    ki1126311-ZVITAMBO      <=42.4               NA                0.7058824   0.4892354   0.9225293
6 months    ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.4768519   0.4102283   0.5434754
6 months    ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.3333333   0.3027316   0.3639351
6 months    ki1126311-ZVITAMBO      >59.3                NA                0.2218814   0.1958340   0.2479288
12 months   ki0047075b-MAL-ED       <=42.4               NA                0.6000000   0.5173361   0.6826639
12 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                0.5092025   0.4549193   0.5634856
12 months   ki0047075b-MAL-ED       (49.2-59.3]          NA                0.4153355   0.3767216   0.4539493
12 months   ki0047075b-MAL-ED       >59.3                NA                0.3630252   0.3243753   0.4016751
12 months   ki1017093-NIH-Birth     <=42.4               NA                0.6821192   0.6077790   0.7564594
12 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                0.4804469   0.4071879   0.5537059
12 months   ki1017093-NIH-Birth     (49.2-59.3]          NA                0.4379085   0.3592222   0.5165948
12 months   ki1017093-NIH-Birth     >59.3                NA                0.3448276   0.2223900   0.4672651
12 months   ki1017093c-NIH-Crypto   <=42.4               NA                0.5346535   0.4373093   0.6319976
12 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.4189189   0.3539728   0.4838650
12 months   ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.3529412   0.2942464   0.4116359
12 months   ki1017093c-NIH-Crypto   >59.3                NA                0.2649007   0.1944683   0.3353330
12 months   ki1126311-ZVITAMBO      <=42.4               NA                0.7500000   0.5601867   0.9398133
12 months   ki1126311-ZVITAMBO      (42.4-49.2]          NA                0.5625000   0.5017185   0.6232815
12 months   ki1126311-ZVITAMBO      (49.2-59.3]          NA                0.4218590   0.3909169   0.4528012
12 months   ki1126311-ZVITAMBO      >59.3                NA                0.3018519   0.2744677   0.3292360
12 months   ki1148112-LCNI-5        <=42.4               NA                0.8235294   0.6952298   0.9518290
12 months   ki1148112-LCNI-5        (42.4-49.2]          NA                0.5570470   0.4771886   0.6369054
12 months   ki1148112-LCNI-5        (49.2-59.3]          NA                0.3954802   0.3233579   0.4676026
12 months   ki1148112-LCNI-5        >59.3                NA                0.3095238   0.1695375   0.4495102
18 months   ki0047075b-MAL-ED       <=42.4               NA                0.7307692   0.6544974   0.8070410
18 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                0.6435331   0.5907921   0.6962742
18 months   ki0047075b-MAL-ED       (49.2-59.3]          NA                0.5285235   0.4884348   0.5686122
18 months   ki0047075b-MAL-ED       >59.3                NA                0.4460177   0.4050178   0.4870176
18 months   ki1017093-NIH-Birth     <=42.4               NA                0.8273381   0.7644429   0.8902334
18 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                0.6380368   0.5641875   0.7118862
18 months   ki1017093-NIH-Birth     (49.2-59.3]          NA                0.5734266   0.4922832   0.6545700
18 months   ki1017093-NIH-Birth     >59.3                NA                0.4230769   0.2886605   0.5574934
18 months   ki1017093b-PROVIDE      <=42.4               NA                0.6578947   0.5065665   0.8092229
18 months   ki1017093b-PROVIDE      (42.4-49.2]          NA                0.5750000   0.4213077   0.7286923
18 months   ki1017093b-PROVIDE      (49.2-59.3]          NA                0.3333333   0.2035371   0.4631296
18 months   ki1017093b-PROVIDE      >59.3                NA                0.1923077   0.0403271   0.3442883
18 months   ki1017093c-NIH-Crypto   <=42.4               NA                0.5858586   0.4887617   0.6829554
18 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.4977169   0.4314502   0.5639836
18 months   ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.4183267   0.3572589   0.4793945
18 months   ki1017093c-NIH-Crypto   >59.3                NA                0.3082192   0.2332661   0.3831723
24 months   ki0047075b-MAL-ED       <=42.4               NA                0.7936508   0.7229669   0.8643347
24 months   ki0047075b-MAL-ED       (42.4-49.2]          NA                0.6950820   0.6433988   0.7467652
24 months   ki0047075b-MAL-ED       (49.2-59.3]          NA                0.5649123   0.5241995   0.6056251
24 months   ki0047075b-MAL-ED       >59.3                NA                0.4990619   0.4566004   0.5415234
24 months   ki1017093-NIH-Birth     <=42.4               NA                0.9384615   0.8971073   0.9798158
24 months   ki1017093-NIH-Birth     (42.4-49.2]          NA                0.7500000   0.6819781   0.8180219
24 months   ki1017093-NIH-Birth     (49.2-59.3]          NA                0.6740741   0.5949230   0.7532252
24 months   ki1017093-NIH-Birth     >59.3                NA                0.5102041   0.3700867   0.6503215
24 months   ki1017093b-PROVIDE      <=42.4               NA                0.6944444   0.5434598   0.8454291
24 months   ki1017093b-PROVIDE      (42.4-49.2]          NA                0.5789474   0.4214344   0.7364603
24 months   ki1017093b-PROVIDE      (49.2-59.3]          NA                0.4000000   0.2637486   0.5362514
24 months   ki1017093b-PROVIDE      >59.3                NA                0.2083333   0.0453042   0.3713625
24 months   ki1017093c-NIH-Crypto   <=42.4               NA                0.6413043   0.5432217   0.7393870
24 months   ki1017093c-NIH-Crypto   (42.4-49.2]          NA                0.5612245   0.4916977   0.6307513
24 months   ki1017093c-NIH-Crypto   (49.2-59.3]          NA                0.4651163   0.3983923   0.5318403
24 months   ki1017093c-NIH-Crypto   >59.3                NA                0.3740458   0.2911202   0.4569715


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       NA                   NA                0.2603049   0.2574972   0.2631127
3 months    ki1017093-NIH-Birth     NA                   NA                0.2225755   0.2173541   0.2277970
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.1602649   0.1571032   0.1634266
3 months    ki1126311-ZVITAMBO      NA                   NA                0.2246009   0.2220995   0.2271023
6 months    ki0047075b-MAL-ED       NA                   NA                0.3323733   0.3293664   0.3353802
6 months    ki1017093-NIH-Birth     NA                   NA                0.3647913   0.3554396   0.3741430
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.3070652   0.3022763   0.3118541
6 months    ki1126311-ZVITAMBO      NA                   NA                0.2995761   0.2958208   0.3033313
12 months   ki0047075b-MAL-ED       NA                   NA                0.4298454   0.4263975   0.4332933
12 months   ki1017093-NIH-Birth     NA                   NA                0.5101664   0.5005674   0.5197653
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.3799726   0.3739934   0.3859517
12 months   ki1126311-ZVITAMBO      NA                   NA                0.3845824   0.3808725   0.3882924
12 months   ki1148112-LCNI-5        NA                   NA                0.4825871   0.4693263   0.4958478
18 months   ki0047075b-MAL-ED       NA                   NA                0.5385572   0.5341283   0.5429861
18 months   ki1017093-NIH-Birth     NA                   NA                0.6498994   0.6387964   0.6610024
18 months   ki1017093b-PROVIDE      NA                   NA                0.4516129   0.4241466   0.4790792
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.4433566   0.4369345   0.4497788
24 months   ki0047075b-MAL-ED       NA                   NA                0.5867014   0.5820327   0.5913701
24 months   ki1017093-NIH-Birth     NA                   NA                0.7553191   0.7433651   0.7672732
24 months   ki1017093b-PROVIDE      NA                   NA                0.4864865   0.4595391   0.5134339
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.5015773   0.4947218   0.5084328


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.8867052   0.6878722   1.1430119
3 months    ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.6252664   0.4879543   0.8012185
3 months    ki0047075b-MAL-ED       >59.3                <=42.4            0.5408000   0.4179344   0.6997860
3 months    ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.5696298   0.3996288   0.8119487
3 months    ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.5902879   0.4093069   0.8512922
3 months    ki1017093-NIH-Birth     >59.3                <=42.4            0.4226721   0.2221602   0.8041571
3 months    ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.7663158   0.4946669   1.1871421
3 months    ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.6053731   0.3865821   0.9479916
3 months    ki1017093c-NIH-Crypto   >59.3                <=42.4            0.4025807   0.2230865   0.7264948
3 months    ki1126311-ZVITAMBO      (42.4-49.2]          <=42.4            0.6209150   0.4135685   0.9322168
3 months    ki1126311-ZVITAMBO      (49.2-59.3]          <=42.4            0.5375972   0.3667367   0.7880607
3 months    ki1126311-ZVITAMBO      >59.3                <=42.4            0.3146245   0.2126327   0.4655378
6 months    ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.8335011   0.6718238   1.0340868
6 months    ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.6658105   0.5420044   0.8178967
6 months    ki0047075b-MAL-ED       >59.3                <=42.4            0.5636466   0.4542301   0.6994197
6 months    ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.5704170   0.4403827   0.7388472
6 months    ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.5226481   0.3931703   0.6947651
6 months    ki1017093-NIH-Birth     >59.3                <=42.4            0.5081301   0.3225429   0.8005017
6 months    ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.8056106   0.6006942   1.0804307
6 months    ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.7213792   0.5374992   0.9681650
6 months    ki1017093c-NIH-Crypto   >59.3                <=42.4            0.4758971   0.3210766   0.7053707
6 months    ki1126311-ZVITAMBO      (42.4-49.2]          <=42.4            0.6755401   0.4821674   0.9464648
6 months    ki1126311-ZVITAMBO      (49.2-59.3]          <=42.4            0.4722222   0.3427827   0.6505399
6 months    ki1126311-ZVITAMBO      >59.3                <=42.4            0.3143320   0.2262970   0.4366147
12 months   ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.8486708   0.7129922   1.0101682
12 months   ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.6922258   0.5862256   0.8173927
12 months   ki0047075b-MAL-ED       >59.3                <=42.4            0.6050420   0.5083558   0.7201174
12 months   ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.7043445   0.5839661   0.8495376
12 months   ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.6419824   0.5203005   0.7921218
12 months   ki1017093-NIH-Birth     >59.3                <=42.4            0.5055239   0.3486879   0.7329032
12 months   ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.7835335   0.6168841   0.9952029
12 months   ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.6601307   0.5158675   0.8447374
12 months   ki1017093c-NIH-Crypto   >59.3                <=42.4            0.4954623   0.3589722   0.6838494
12 months   ki1126311-ZVITAMBO      (42.4-49.2]          <=42.4            0.7500000   0.5695726   0.9875826
12 months   ki1126311-ZVITAMBO      (49.2-59.3]          <=42.4            0.5624787   0.4321854   0.7320523
12 months   ki1126311-ZVITAMBO      >59.3                <=42.4            0.4024691   0.3075893   0.5266159
12 months   ki1148112-LCNI-5        (42.4-49.2]          <=42.4            0.6764142   0.5473510   0.8359100
12 months   ki1148112-LCNI-5        (49.2-59.3]          <=42.4            0.4802260   0.3778152   0.6103963
12 months   ki1148112-LCNI-5        >59.3                <=42.4            0.3758503   0.2329553   0.6063975
18 months   ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.8806243   0.7711845   1.0055948
18 months   ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.7232427   0.6356972   0.8228445
18 months   ki0047075b-MAL-ED       >59.3                <=42.4            0.6103400   0.5310918   0.7014134
18 months   ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.7711923   0.6714638   0.8857329
18 months   ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.6930982   0.5902451   0.8138740
18 months   ki1017093-NIH-Birth     >59.3                <=42.4            0.5113712   0.3688595   0.7089436
18 months   ki1017093b-PROVIDE      (42.4-49.2]          <=42.4            0.8740000   0.6142752   1.2435403
18 months   ki1017093b-PROVIDE      (49.2-59.3]          <=42.4            0.5066667   0.3223380   0.7964034
18 months   ki1017093b-PROVIDE      >59.3                <=42.4            0.2923077   0.1283440   0.6657403
18 months   ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.8495513   0.6868517   1.0507907
18 months   ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.7140404   0.5725393   0.8905131
18 months   ki1017093c-NIH-Crypto   >59.3                <=42.4            0.5260983   0.3919761   0.7061129
24 months   ki0047075b-MAL-ED       (42.4-49.2]          <=42.4            0.8758033   0.7798652   0.9835435
24 months   ki0047075b-MAL-ED       (49.2-59.3]          <=42.4            0.7117895   0.6347388   0.7981933
24 months   ki0047075b-MAL-ED       >59.3                <=42.4            0.6288180   0.5559460   0.7112420
24 months   ki1017093-NIH-Birth     (42.4-49.2]          <=42.4            0.7991803   0.7225252   0.8839681
24 months   ki1017093-NIH-Birth     (49.2-59.3]          <=42.4            0.7182757   0.6336110   0.8142534
24 months   ki1017093-NIH-Birth     >59.3                <=42.4            0.5436601   0.4116532   0.7179983
24 months   ki1017093b-PROVIDE      (42.4-49.2]          <=42.4            0.8336842   0.5885050   1.1810084
24 months   ki1017093b-PROVIDE      (49.2-59.3]          <=42.4            0.5760000   0.3845239   0.8628229
24 months   ki1017093b-PROVIDE      >59.3                <=42.4            0.3000000   0.1331666   0.6758453
24 months   ki1017093c-NIH-Crypto   (42.4-49.2]          <=42.4            0.8751297   0.7187767   1.0654937
24 months   ki1017093c-NIH-Crypto   (49.2-59.3]          <=42.4            0.7252661   0.5880697   0.8944702
24 months   ki1017093c-NIH-Crypto   >59.3                <=42.4            0.5832579   0.4455428   0.7635399


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED       <=42.4               NA                -0.1243105   -0.2041207   -0.0445003
3 months    ki1017093-NIH-Birth     <=42.4               NA                -0.1050107   -0.1749968   -0.0350245
3 months    ki1017093c-NIH-Crypto   <=42.4               NA                -0.0801197   -0.1623611    0.0021217
3 months    ki1126311-ZVITAMBO      <=42.4               NA                -0.2753991   -0.4606488   -0.0901494
6 months    ki0047075b-MAL-ED       <=42.4               NA                -0.1496411   -0.2327866   -0.0664956
6 months    ki1017093-NIH-Birth     <=42.4               NA                -0.1818754   -0.2621602   -0.1015906
6 months    ki1017093c-NIH-Crypto   <=42.4               NA                -0.1104105   -0.2058317   -0.0149893
6 months    ki1126311-ZVITAMBO      <=42.4               NA                -0.4063063   -0.6229858   -0.1896268
12 months   ki0047075b-MAL-ED       <=42.4               NA                -0.1701546   -0.2528904   -0.0874188
12 months   ki1017093-NIH-Birth     <=42.4               NA                -0.1719528   -0.2469102   -0.0969955
12 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.1546809   -0.2522085   -0.0571533
12 months   ki1126311-ZVITAMBO      <=42.4               NA                -0.3654176   -0.5552672   -0.1755680
12 months   ki1148112-LCNI-5        <=42.4               NA                -0.3409423   -0.4699254   -0.2119593
18 months   ki0047075b-MAL-ED       <=42.4               NA                -0.1922120   -0.2686123   -0.1158117
18 months   ki1017093-NIH-Birth     <=42.4               NA                -0.1774387   -0.2413065   -0.1135710
18 months   ki1017093b-PROVIDE      <=42.4               NA                -0.2062818   -0.3600824   -0.0524812
18 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.1425019   -0.2398109   -0.0451929
24 months   ki0047075b-MAL-ED       <=42.4               NA                -0.2069494   -0.2777873   -0.1361114
24 months   ki1017093-NIH-Birth     <=42.4               NA                -0.1831424   -0.2261898   -0.1400950
24 months   ki1017093b-PROVIDE      <=42.4               NA                -0.2079580   -0.3613285   -0.0545874
24 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.1397271   -0.2380490   -0.0414051


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED       <=42.4               NA                -0.4775572   -0.8185664   -0.2004924
3 months    ki1017093-NIH-Birth     <=42.4               NA                -0.4717980   -0.8236118   -0.1878567
3 months    ki1017093c-NIH-Crypto   <=42.4               NA                -0.4999205   -1.1124581   -0.0649970
3 months    ki1126311-ZVITAMBO      <=42.4               NA                -1.2261712   -2.2249458   -0.5367199
6 months    ki0047075b-MAL-ED       <=42.4               NA                -0.4502201   -0.7234630   -0.2202979
6 months    ki1017093-NIH-Birth     <=42.4               NA                -0.4985738   -0.7377866   -0.2922895
6 months    ki1017093c-NIH-Crypto   <=42.4               NA                -0.3595670   -0.7091180   -0.0815066
6 months    ki1126311-ZVITAMBO      <=42.4               NA                -1.3562708   -2.2035278   -0.7330932
12 months   ki0047075b-MAL-ED       <=42.4               NA                -0.3958506   -0.6024128   -0.2159158
12 months   ki1017093-NIH-Birth     <=42.4               NA                -0.3370525   -0.4934128   -0.1970631
12 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.4070844   -0.6892221   -0.1720700
12 months   ki1126311-ZVITAMBO      <=42.4               NA                -0.9501670   -1.5122613   -0.5138359
12 months   ki1148112-LCNI-5        <=42.4               NA                -0.7064888   -0.9989759   -0.4567979
18 months   ki0047075b-MAL-ED       <=42.4               NA                -0.3569018   -0.5066662   -0.2220241
18 months   ki1017093-NIH-Birth     <=42.4               NA                -0.2730249   -0.3761822   -0.1776002
18 months   ki1017093b-PROVIDE      <=42.4               NA                -0.4567669   -0.8480720   -0.1483156
18 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.3214161   -0.5605994   -0.1188908
24 months   ki0047075b-MAL-ED       <=42.4               NA                -0.3527337   -0.4792630   -0.2370271
24 months   ki1017093-NIH-Birth     <=42.4               NA                -0.2424702   -0.3020285   -0.1856363
24 months   ki1017093b-PROVIDE      <=42.4               NA                -0.4274691   -0.7865139   -0.1405834
24 months   ki1017093c-NIH-Crypto   <=42.4               NA                -0.2785753   -0.4907783   -0.0965781


