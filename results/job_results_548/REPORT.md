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

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/5c48276e-5f20-45ba-914f-5391a41fc261/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5c48276e-5f20-45ba-914f-5391a41fc261/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/5c48276e-5f20-45ba-914f-5391a41fc261/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5c48276e-5f20-45ba-914f-5391a41fc261/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A              n    nA   nAY0   nAY1
----------  -------------------------  ----------  ----  ----  -----  -----
Birth       ki1000108-IRC              3 or less    388    54     51      3
Birth       ki1000108-IRC              4-5          388   150    128     22
Birth       ki1000108-IRC              6-7          388   103     89     14
Birth       ki1000108-IRC              8+           388    81     75      6
Birth       ki1000304b-SAS-FoodSuppl   3 or less      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   4-5            0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   6-7            0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   8+             0     0      0      0
Birth       ki1017093-NIH-Birth        3 or less     28     7      7      0
Birth       ki1017093-NIH-Birth        4-5           28    11     10      1
Birth       ki1017093-NIH-Birth        6-7           28     7      7      0
Birth       ki1017093-NIH-Birth        8+            28     3      3      0
Birth       ki1017093b-PROVIDE         3 or less      0     0      0      0
Birth       ki1017093b-PROVIDE         4-5            0     0      0      0
Birth       ki1017093b-PROVIDE         6-7            0     0      0      0
Birth       ki1017093b-PROVIDE         8+             0     0      0      0
Birth       ki1017093c-NIH-Crypto      3 or less     27     8      7      1
Birth       ki1017093c-NIH-Crypto      4-5           27     9      7      2
Birth       ki1017093c-NIH-Crypto      6-7           27     7      5      2
Birth       ki1017093c-NIH-Crypto      8+            27     3      3      0
Birth       ki1148112-LCNI-5           3 or less      0     0      0      0
Birth       ki1148112-LCNI-5           4-5            0     0      0      0
Birth       ki1148112-LCNI-5           6-7            0     0      0      0
Birth       ki1148112-LCNI-5           8+             0     0      0      0
3 months    ki1000108-IRC              3 or less    407    58     48     10
3 months    ki1000108-IRC              4-5          407   156    120     36
3 months    ki1000108-IRC              6-7          407   106     83     23
3 months    ki1000108-IRC              8+           407    87     65     22
3 months    ki1000304b-SAS-FoodSuppl   3 or less     97     7      4      3
3 months    ki1000304b-SAS-FoodSuppl   4-5           97    36     21     15
3 months    ki1000304b-SAS-FoodSuppl   6-7           97    35     21     14
3 months    ki1000304b-SAS-FoodSuppl   8+            97    19     13      6
3 months    ki1017093-NIH-Birth        3 or less    570   101     76     25
3 months    ki1017093-NIH-Birth        4-5          570   241    183     58
3 months    ki1017093-NIH-Birth        6-7          570   133     99     34
3 months    ki1017093-NIH-Birth        8+           570    95     82     13
3 months    ki1017093b-PROVIDE         3 or less    168    30     26      4
3 months    ki1017093b-PROVIDE         4-5          168    82     70     12
3 months    ki1017093b-PROVIDE         6-7          168    36     34      2
3 months    ki1017093b-PROVIDE         8+           168    20     18      2
3 months    ki1017093c-NIH-Crypto      3 or less    728   109     82     27
3 months    ki1017093c-NIH-Crypto      4-5          728   330    255     75
3 months    ki1017093c-NIH-Crypto      6-7          728   169    139     30
3 months    ki1017093c-NIH-Crypto      8+           728   120     96     24
3 months    ki1148112-LCNI-5           3 or less      0     0      0      0
3 months    ki1148112-LCNI-5           4-5            0     0      0      0
3 months    ki1148112-LCNI-5           6-7            0     0      0      0
3 months    ki1148112-LCNI-5           8+             0     0      0      0
6 months    ki1000108-IRC              3 or less    407    58     44     14
6 months    ki1000108-IRC              4-5          407   158    116     42
6 months    ki1000108-IRC              6-7          407   106     81     25
6 months    ki1000108-IRC              8+           407    85     66     19
6 months    ki1000304b-SAS-FoodSuppl   3 or less     96     8      4      4
6 months    ki1000304b-SAS-FoodSuppl   4-5           96    37     20     17
6 months    ki1000304b-SAS-FoodSuppl   6-7           96    33     16     17
6 months    ki1000304b-SAS-FoodSuppl   8+            96    18      8     10
6 months    ki1017093-NIH-Birth        3 or less    537    95     74     21
6 months    ki1017093-NIH-Birth        4-5          537   227    151     76
6 months    ki1017093-NIH-Birth        6-7          537   128    101     27
6 months    ki1017093-NIH-Birth        8+           537    87     67     20
6 months    ki1017093b-PROVIDE         3 or less    153    25     19      6
6 months    ki1017093b-PROVIDE         4-5          153    73     58     15
6 months    ki1017093b-PROVIDE         6-7          153    35     31      4
6 months    ki1017093b-PROVIDE         8+           153    20     17      3
6 months    ki1017093c-NIH-Crypto      3 or less    715   104     78     26
6 months    ki1017093c-NIH-Crypto      4-5          715   326    257     69
6 months    ki1017093c-NIH-Crypto      6-7          715   170    138     32
6 months    ki1017093c-NIH-Crypto      8+           715   115     92     23
6 months    ki1148112-LCNI-5           3 or less    405   120     83     37
6 months    ki1148112-LCNI-5           4-5          405   167    103     64
6 months    ki1148112-LCNI-5           6-7          405    89     54     35
6 months    ki1148112-LCNI-5           8+           405    29     16     13
9 months    ki1000108-IRC              3 or less    407    58     44     14
9 months    ki1000108-IRC              4-5          407   158    109     49
9 months    ki1000108-IRC              6-7          407   106     78     28
9 months    ki1000108-IRC              8+           407    85     65     20
9 months    ki1000304b-SAS-FoodSuppl   3 or less     85     4      3      1
9 months    ki1000304b-SAS-FoodSuppl   4-5           85    34     10     24
9 months    ki1000304b-SAS-FoodSuppl   6-7           85    31     12     19
9 months    ki1000304b-SAS-FoodSuppl   8+            85    16      3     13
9 months    ki1017093-NIH-Birth        3 or less    507    90     69     21
9 months    ki1017093-NIH-Birth        4-5          507   217    127     90
9 months    ki1017093-NIH-Birth        6-7          507   118     74     44
9 months    ki1017093-NIH-Birth        8+           507    82     56     26
9 months    ki1017093b-PROVIDE         3 or less    158    26     18      8
9 months    ki1017093b-PROVIDE         4-5          158    78     61     17
9 months    ki1017093b-PROVIDE         6-7          158    34     25      9
9 months    ki1017093b-PROVIDE         8+           158    20     17      3
9 months    ki1017093c-NIH-Crypto      3 or less    706   102     77     25
9 months    ki1017093c-NIH-Crypto      4-5          706   321    241     80
9 months    ki1017093c-NIH-Crypto      6-7          706   171    138     33
9 months    ki1017093c-NIH-Crypto      8+           706   112     86     26
9 months    ki1148112-LCNI-5           3 or less    317    91     63     28
9 months    ki1148112-LCNI-5           4-5          317   134     92     42
9 months    ki1148112-LCNI-5           6-7          317    70     48     22
9 months    ki1148112-LCNI-5           8+           317    22     15      7
12 months   ki1000108-IRC              3 or less    406    58     43     15
12 months   ki1000108-IRC              4-5          406   157    112     45
12 months   ki1000108-IRC              6-7          406   105     74     31
12 months   ki1000108-IRC              8+           406    86     58     28
12 months   ki1000304b-SAS-FoodSuppl   3 or less     92     7      3      4
12 months   ki1000304b-SAS-FoodSuppl   4-5           92    36      6     30
12 months   ki1000304b-SAS-FoodSuppl   6-7           92    33      8     25
12 months   ki1000304b-SAS-FoodSuppl   8+            92    16      2     14
12 months   ki1017093-NIH-Birth        3 or less    491    88     60     28
12 months   ki1017093-NIH-Birth        4-5          491   206    112     94
12 months   ki1017093-NIH-Birth        6-7          491   115     79     36
12 months   ki1017093-NIH-Birth        8+           491    82     56     26
12 months   ki1017093b-PROVIDE         3 or less    153    25     16      9
12 months   ki1017093b-PROVIDE         4-5          153    77     55     22
12 months   ki1017093b-PROVIDE         6-7          153    31     24      7
12 months   ki1017093b-PROVIDE         8+           153    20     14      6
12 months   ki1017093c-NIH-Crypto      3 or less    706    98     78     20
12 months   ki1017093c-NIH-Crypto      4-5          706   324    239     85
12 months   ki1017093c-NIH-Crypto      6-7          706   171    135     36
12 months   ki1017093c-NIH-Crypto      8+           706   113     83     30
12 months   ki1148112-LCNI-5           3 or less    306    85     58     27
12 months   ki1148112-LCNI-5           4-5          306   132     74     58
12 months   ki1148112-LCNI-5           6-7          306    68     36     32
12 months   ki1148112-LCNI-5           8+           306    21     13      8
18 months   ki1000108-IRC              3 or less    405    57     44     13
18 months   ki1000108-IRC              4-5          405   157     96     61
18 months   ki1000108-IRC              6-7          405   107     72     35
18 months   ki1000108-IRC              8+           405    84     49     35
18 months   ki1000304b-SAS-FoodSuppl   3 or less     84     6      1      5
18 months   ki1000304b-SAS-FoodSuppl   4-5           84    32      1     31
18 months   ki1000304b-SAS-FoodSuppl   6-7           84    31      7     24
18 months   ki1000304b-SAS-FoodSuppl   8+            84    15      1     14
18 months   ki1017093-NIH-Birth        3 or less    463    78     34     44
18 months   ki1017093-NIH-Birth        4-5          463   196     65    131
18 months   ki1017093-NIH-Birth        6-7          463   109     50     59
18 months   ki1017093-NIH-Birth        8+           463    80     42     38
18 months   ki1017093b-PROVIDE         3 or less    141    20     11      9
18 months   ki1017093b-PROVIDE         4-5          141    73     44     29
18 months   ki1017093b-PROVIDE         6-7          141    28     20      8
18 months   ki1017093b-PROVIDE         8+           141    20     14      6
18 months   ki1017093c-NIH-Crypto      3 or less    634    89     64     25
18 months   ki1017093c-NIH-Crypto      4-5          634   292    203     89
18 months   ki1017093c-NIH-Crypto      6-7          634   151    106     45
18 months   ki1017093c-NIH-Crypto      8+           634   102     70     32
18 months   ki1148112-LCNI-5           3 or less    353    99     50     49
18 months   ki1148112-LCNI-5           4-5          353   151     77     74
18 months   ki1148112-LCNI-5           6-7          353    78     36     42
18 months   ki1148112-LCNI-5           8+           353    25     16      9
24 months   ki1000108-IRC              3 or less    409    58     39     19
24 months   ki1000108-IRC              4-5          409   158     88     70
24 months   ki1000108-IRC              6-7          409   107     66     41
24 months   ki1000108-IRC              8+           409    86     46     40
24 months   ki1000304b-SAS-FoodSuppl   3 or less      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   4-5            0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   6-7            0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   8+             0     0      0      0
24 months   ki1017093-NIH-Birth        3 or less    429    75     36     39
24 months   ki1017093-NIH-Birth        4-5          429   184     71    113
24 months   ki1017093-NIH-Birth        6-7          429   100     49     51
24 months   ki1017093-NIH-Birth        8+           429    70     35     35
24 months   ki1017093b-PROVIDE         3 or less    149    24     16      8
24 months   ki1017093b-PROVIDE         4-5          149    77     50     27
24 months   ki1017093b-PROVIDE         6-7          149    28     22      6
24 months   ki1017093b-PROVIDE         8+           149    20     12      8
24 months   ki1017093c-NIH-Crypto      3 or less    514    69     53     16
24 months   ki1017093c-NIH-Crypto      4-5          514   232    168     64
24 months   ki1017093c-NIH-Crypto      6-7          514   130     95     35
24 months   ki1017093c-NIH-Crypto      8+           514    83     66     17
24 months   ki1148112-LCNI-5           3 or less    293    87     50     37
24 months   ki1148112-LCNI-5           4-5          293   121     66     55
24 months   ki1148112-LCNI-5           6-7          293    64     35     29
24 months   ki1148112-LCNI-5           8+           293    21     14      7

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           3 or less            NA                0.1724138   0.0750806   0.2697470
3 months    ki1000108-IRC           4-5                  NA                0.2307692   0.1645724   0.2969661
3 months    ki1000108-IRC           6-7                  NA                0.2169811   0.1384166   0.2955456
3 months    ki1000108-IRC           8+                   NA                0.2528736   0.1614262   0.3443210
3 months    ki1017093-NIH-Birth     3 or less            NA                0.2475248   0.1632836   0.3317659
3 months    ki1017093-NIH-Birth     4-5                  NA                0.2406639   0.1866453   0.2946825
3 months    ki1017093-NIH-Birth     6-7                  NA                0.2556391   0.1814382   0.3298400
3 months    ki1017093-NIH-Birth     8+                   NA                0.1368421   0.0676713   0.2060129
3 months    ki1017093c-NIH-Crypto   3 or less            NA                0.2477064   0.1666111   0.3288017
3 months    ki1017093c-NIH-Crypto   4-5                  NA                0.2272727   0.1820271   0.2725183
3 months    ki1017093c-NIH-Crypto   6-7                  NA                0.1775148   0.1198668   0.2351628
3 months    ki1017093c-NIH-Crypto   8+                   NA                0.2000000   0.1283830   0.2716170
6 months    ki1000108-IRC           3 or less            NA                0.2413793   0.1311161   0.3516425
6 months    ki1000108-IRC           4-5                  NA                0.2658228   0.1968544   0.3347912
6 months    ki1000108-IRC           6-7                  NA                0.2358491   0.1549328   0.3167654
6 months    ki1000108-IRC           8+                   NA                0.2235294   0.1348541   0.3122047
6 months    ki1017093-NIH-Birth     3 or less            NA                0.2210526   0.1375322   0.3045731
6 months    ki1017093-NIH-Birth     4-5                  NA                0.3348018   0.2733535   0.3962500
6 months    ki1017093-NIH-Birth     6-7                  NA                0.2109375   0.1401950   0.2816800
6 months    ki1017093-NIH-Birth     8+                   NA                0.2298851   0.1413885   0.3183816
6 months    ki1017093c-NIH-Crypto   3 or less            NA                0.2500000   0.1667209   0.3332791
6 months    ki1017093c-NIH-Crypto   4-5                  NA                0.2116564   0.1672837   0.2560292
6 months    ki1017093c-NIH-Crypto   6-7                  NA                0.1882353   0.1294332   0.2470374
6 months    ki1017093c-NIH-Crypto   8+                   NA                0.2000000   0.1268418   0.2731582
6 months    ki1148112-LCNI-5        3 or less            NA                0.3083333   0.2256053   0.3910614
6 months    ki1148112-LCNI-5        4-5                  NA                0.3832335   0.3094059   0.4570611
6 months    ki1148112-LCNI-5        6-7                  NA                0.3932584   0.2916497   0.4948671
6 months    ki1148112-LCNI-5        8+                   NA                0.4482759   0.2670502   0.6295015
9 months    ki1000108-IRC           3 or less            NA                0.2413793   0.1311161   0.3516425
9 months    ki1000108-IRC           4-5                  NA                0.3101266   0.2379148   0.3823383
9 months    ki1000108-IRC           6-7                  NA                0.2641509   0.1801180   0.3481839
9 months    ki1000108-IRC           8+                   NA                0.2352941   0.1450070   0.3255812
9 months    ki1017093-NIH-Birth     3 or less            NA                0.2333333   0.1458657   0.3208009
9 months    ki1017093-NIH-Birth     4-5                  NA                0.4147465   0.3491305   0.4803626
9 months    ki1017093-NIH-Birth     6-7                  NA                0.3728814   0.2855448   0.4602179
9 months    ki1017093-NIH-Birth     8+                   NA                0.3170732   0.2162555   0.4178909
9 months    ki1017093c-NIH-Crypto   3 or less            NA                0.2450980   0.1615626   0.3286335
9 months    ki1017093c-NIH-Crypto   4-5                  NA                0.2492212   0.2018677   0.2965747
9 months    ki1017093c-NIH-Crypto   6-7                  NA                0.1929825   0.1337911   0.2521738
9 months    ki1017093c-NIH-Crypto   8+                   NA                0.2321429   0.1538964   0.3103893
9 months    ki1148112-LCNI-5        3 or less            NA                0.3076923   0.2127147   0.4026699
9 months    ki1148112-LCNI-5        4-5                  NA                0.3134328   0.2347653   0.3921004
9 months    ki1148112-LCNI-5        6-7                  NA                0.3142857   0.2053628   0.4232086
9 months    ki1148112-LCNI-5        8+                   NA                0.3181818   0.1232446   0.5131191
12 months   ki1000108-IRC           3 or less            NA                0.2586207   0.1457915   0.3714499
12 months   ki1000108-IRC           4-5                  NA                0.2866242   0.2158053   0.3574431
12 months   ki1000108-IRC           6-7                  NA                0.2952381   0.2078814   0.3825948
12 months   ki1000108-IRC           8+                   NA                0.3255814   0.2264231   0.4247397
12 months   ki1017093-NIH-Birth     3 or less            NA                0.3181818   0.2207678   0.4155958
12 months   ki1017093-NIH-Birth     4-5                  NA                0.4563107   0.3882239   0.5243975
12 months   ki1017093-NIH-Birth     6-7                  NA                0.3130435   0.2282019   0.3978851
12 months   ki1017093-NIH-Birth     8+                   NA                0.3170732   0.2162522   0.4178941
12 months   ki1017093b-PROVIDE      3 or less            NA                0.3600000   0.1712255   0.5487745
12 months   ki1017093b-PROVIDE      4-5                  NA                0.2857143   0.1844798   0.3869488
12 months   ki1017093b-PROVIDE      6-7                  NA                0.2258065   0.0781392   0.3734737
12 months   ki1017093b-PROVIDE      8+                   NA                0.3000000   0.0985039   0.5014961
12 months   ki1017093c-NIH-Crypto   3 or less            NA                0.2040816   0.1242309   0.2839324
12 months   ki1017093c-NIH-Crypto   4-5                  NA                0.2623457   0.2144113   0.3102800
12 months   ki1017093c-NIH-Crypto   6-7                  NA                0.2105263   0.1493787   0.2716740
12 months   ki1017093c-NIH-Crypto   8+                   NA                0.2654867   0.1840092   0.3469643
12 months   ki1148112-LCNI-5        3 or less            NA                0.3176471   0.2185122   0.4167819
12 months   ki1148112-LCNI-5        4-5                  NA                0.4393939   0.3545877   0.5242002
12 months   ki1148112-LCNI-5        6-7                  NA                0.4705882   0.3517594   0.5894170
12 months   ki1148112-LCNI-5        8+                   NA                0.3809524   0.1729125   0.5889923
18 months   ki1000108-IRC           3 or less            NA                0.2280702   0.1190089   0.3371315
18 months   ki1000108-IRC           4-5                  NA                0.3885350   0.3121979   0.4648722
18 months   ki1000108-IRC           6-7                  NA                0.3271028   0.2380988   0.4161068
18 months   ki1000108-IRC           8+                   NA                0.4166667   0.3111070   0.5222263
18 months   ki1017093-NIH-Birth     3 or less            NA                0.5641026   0.4539381   0.6742670
18 months   ki1017093-NIH-Birth     4-5                  NA                0.6683673   0.6023853   0.7343494
18 months   ki1017093-NIH-Birth     6-7                  NA                0.5412844   0.4476385   0.6349303
18 months   ki1017093-NIH-Birth     8+                   NA                0.4750000   0.3654534   0.5845466
18 months   ki1017093b-PROVIDE      3 or less            NA                0.4500000   0.2311905   0.6688095
18 months   ki1017093b-PROVIDE      4-5                  NA                0.3972603   0.2846094   0.5099112
18 months   ki1017093b-PROVIDE      6-7                  NA                0.2857143   0.1177888   0.4536398
18 months   ki1017093b-PROVIDE      8+                   NA                0.3000000   0.0984475   0.5015525
18 months   ki1017093c-NIH-Crypto   3 or less            NA                0.2808989   0.1874518   0.3743460
18 months   ki1017093c-NIH-Crypto   4-5                  NA                0.3047945   0.2519549   0.3576341
18 months   ki1017093c-NIH-Crypto   6-7                  NA                0.2980132   0.2250029   0.3710236
18 months   ki1017093c-NIH-Crypto   8+                   NA                0.3137255   0.2236069   0.4038441
18 months   ki1148112-LCNI-5        3 or less            NA                0.4949495   0.3963228   0.5935762
18 months   ki1148112-LCNI-5        4-5                  NA                0.4900662   0.4102190   0.5699135
18 months   ki1148112-LCNI-5        6-7                  NA                0.5384615   0.4276722   0.6492509
18 months   ki1148112-LCNI-5        8+                   NA                0.3600000   0.1715764   0.5484236
24 months   ki1000108-IRC           3 or less            NA                0.3275862   0.2066527   0.4485198
24 months   ki1000108-IRC           4-5                  NA                0.4430380   0.3654875   0.5205884
24 months   ki1000108-IRC           6-7                  NA                0.3831776   0.2909485   0.4754067
24 months   ki1000108-IRC           8+                   NA                0.4651163   0.3595705   0.5706621
24 months   ki1017093-NIH-Birth     3 or less            NA                0.5200000   0.4068000   0.6332000
24 months   ki1017093-NIH-Birth     4-5                  NA                0.6141304   0.5437104   0.6845505
24 months   ki1017093-NIH-Birth     6-7                  NA                0.5100000   0.4119070   0.6080930
24 months   ki1017093-NIH-Birth     8+                   NA                0.5000000   0.3827330   0.6172670
24 months   ki1017093b-PROVIDE      3 or less            NA                0.3333333   0.1440996   0.5225670
24 months   ki1017093b-PROVIDE      4-5                  NA                0.3506494   0.2437091   0.4575896
24 months   ki1017093b-PROVIDE      6-7                  NA                0.2142857   0.0617891   0.3667824
24 months   ki1017093b-PROVIDE      8+                   NA                0.4000000   0.1845726   0.6154274
24 months   ki1017093c-NIH-Crypto   3 or less            NA                0.2318841   0.1322070   0.3315611
24 months   ki1017093c-NIH-Crypto   4-5                  NA                0.2758621   0.2182937   0.3334304
24 months   ki1017093c-NIH-Crypto   6-7                  NA                0.2692308   0.1929084   0.3455531
24 months   ki1017093c-NIH-Crypto   8+                   NA                0.2048193   0.1179132   0.2917254
24 months   ki1148112-LCNI-5        3 or less            NA                0.4252874   0.3212241   0.5293506
24 months   ki1148112-LCNI-5        4-5                  NA                0.4545455   0.3656733   0.5434176
24 months   ki1148112-LCNI-5        6-7                  NA                0.4531250   0.3309581   0.5752919
24 months   ki1148112-LCNI-5        8+                   NA                0.3333333   0.1313691   0.5352976


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           NA                   NA                0.2235872   0.2212292   0.2259452
3 months    ki1017093-NIH-Birth     NA                   NA                0.2280702   0.2246838   0.2314565
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.2142857   0.2125182   0.2160532
6 months    ki1000108-IRC           NA                   NA                0.2457002   0.2440501   0.2473504
6 months    ki1017093-NIH-Birth     NA                   NA                0.2681564   0.2633022   0.2730106
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.2097902   0.2083934   0.2111870
6 months    ki1148112-LCNI-5        NA                   NA                0.3679012   0.3638195   0.3719830
9 months    ki1000108-IRC           NA                   NA                0.2727273   0.2696592   0.2757953
9 months    ki1017093-NIH-Birth     NA                   NA                0.3570020   0.3511840   0.3628200
9 months    ki1017093c-NIH-Crypto   NA                   NA                0.2322946   0.2305980   0.2339912
9 months    ki1148112-LCNI-5        NA                   NA                0.3123028   0.3119558   0.3126499
12 months   ki1000108-IRC           NA                   NA                0.2931034   0.2911297   0.2950772
12 months   ki1017093-NIH-Birth     NA                   NA                0.3747454   0.3686035   0.3808873
12 months   ki1017093b-PROVIDE      NA                   NA                0.2875817   0.2811201   0.2940433
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.2422096   0.2402321   0.2441872
12 months   ki1148112-LCNI-5        NA                   NA                0.4084967   0.4017507   0.4152428
18 months   ki1000108-IRC           NA                   NA                0.3555556   0.3496262   0.3614850
18 months   ki1017093-NIH-Birth     NA                   NA                0.5874730   0.5806797   0.5942663
18 months   ki1017093b-PROVIDE      NA                   NA                0.3687943   0.3591400   0.3784487
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.3012618   0.3005168   0.3020068
18 months   ki1148112-LCNI-5        NA                   NA                0.4929178   0.4885927   0.4972430
24 months   ki1000108-IRC           NA                   NA                0.4156479   0.4111175   0.4201783
24 months   ki1017093-NIH-Birth     NA                   NA                0.5547786   0.5498747   0.5596825
24 months   ki1017093b-PROVIDE      NA                   NA                0.3288591   0.3194722   0.3382460
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.2568093   0.2544830   0.2591357
24 months   ki1148112-LCNI-5        NA                   NA                0.4368601   0.4332423   0.4404779


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000108-IRC           4-5                  3 or less         1.3384615   0.7105541   2.521243
3 months    ki1000108-IRC           6-7                  3 or less         1.2584906   0.6435488   2.461038
3 months    ki1000108-IRC           8+                   3 or less         1.4666667   0.7501839   2.867445
3 months    ki1017093-NIH-Birth     4-5                  3 or less         0.9722822   0.6467500   1.461666
3 months    ki1017093-NIH-Birth     6-7                  3 or less         1.0327820   0.6603122   1.615355
3 months    ki1017093-NIH-Birth     8+                   3 or less         0.5528421   0.3005755   1.016831
3 months    ki1017093c-NIH-Crypto   4-5                  3 or less         0.9175084   0.6254671   1.345909
3 months    ki1017093c-NIH-Crypto   6-7                  3 or less         0.7166338   0.4518869   1.136488
3 months    ki1017093c-NIH-Crypto   8+                   3 or less         0.8074074   0.4970260   1.311615
6 months    ki1000108-IRC           4-5                  3 or less         1.1012658   0.6512357   1.862285
6 months    ki1000108-IRC           6-7                  3 or less         0.9770889   0.5518536   1.729993
6 months    ki1000108-IRC           8+                   3 or less         0.9260504   0.5056838   1.695861
6 months    ki1017093-NIH-Birth     4-5                  3 or less         1.5145794   0.9951004   2.305246
6 months    ki1017093-NIH-Birth     6-7                  3 or less         0.9542411   0.5757728   1.581485
6 months    ki1017093-NIH-Birth     8+                   3 or less         1.0399562   0.6063976   1.783498
6 months    ki1017093c-NIH-Crypto   4-5                  3 or less         0.8466258   0.5711563   1.254954
6 months    ki1017093c-NIH-Crypto   6-7                  3 or less         0.7529412   0.4769027   1.188755
6 months    ki1017093c-NIH-Crypto   8+                   3 or less         0.8000000   0.4877826   1.312060
6 months    ki1148112-LCNI-5        4-5                  3 or less         1.2429196   0.8932931   1.729386
6 months    ki1148112-LCNI-5        6-7                  3 or less         1.2754327   0.8787962   1.851087
6 months    ki1148112-LCNI-5        8+                   3 or less         1.4538677   0.8949577   2.361823
9 months    ki1000108-IRC           4-5                  3 or less         1.2848101   0.7694226   2.145423
9 months    ki1000108-IRC           6-7                  3 or less         1.0943396   0.6271860   1.909448
9 months    ki1000108-IRC           8+                   3 or less         0.9747899   0.5368070   1.770125
9 months    ki1017093-NIH-Birth     4-5                  3 or less         1.7774852   1.1833158   2.670000
9 months    ki1017093-NIH-Birth     6-7                  3 or less         1.5980630   1.0271355   2.486337
9 months    ki1017093-NIH-Birth     8+                   3 or less         1.3588850   0.8311992   2.221571
9 months    ki1017093c-NIH-Crypto   4-5                  3 or less         1.0168224   0.6883022   1.502142
9 months    ki1017093c-NIH-Crypto   6-7                  3 or less         0.7873684   0.4977904   1.245402
9 months    ki1017093c-NIH-Crypto   8+                   3 or less         0.9471429   0.5864600   1.529652
9 months    ki1148112-LCNI-5        4-5                  3 or less         1.0186567   0.6843030   1.516377
9 months    ki1148112-LCNI-5        6-7                  3 or less         1.0214286   0.6421690   1.624676
9 months    ki1148112-LCNI-5        8+                   3 or less         1.0340909   0.5207397   2.053510
12 months   ki1000108-IRC           4-5                  3 or less         1.1082803   0.6712787   1.829769
12 months   ki1000108-IRC           6-7                  3 or less         1.1415873   0.6738648   1.933951
12 months   ki1000108-IRC           8+                   3 or less         1.2589147   0.7394776   2.143224
12 months   ki1017093-NIH-Birth     4-5                  3 or less         1.4341193   1.0201683   2.016038
12 months   ki1017093-NIH-Birth     6-7                  3 or less         0.9838509   0.6536623   1.480830
12 months   ki1017093-NIH-Birth     8+                   3 or less         0.9965157   0.6408900   1.549476
12 months   ki1017093b-PROVIDE      4-5                  3 or less         0.7936508   0.4214851   1.494434
12 months   ki1017093b-PROVIDE      6-7                  3 or less         0.6272401   0.2712667   1.450345
12 months   ki1017093b-PROVIDE      8+                   3 or less         0.8333333   0.3554294   1.953818
12 months   ki1017093c-NIH-Crypto   4-5                  3 or less         1.2854938   0.8346978   1.979752
12 months   ki1017093c-NIH-Crypto   6-7                  3 or less         1.0315789   0.6336864   1.679309
12 months   ki1017093c-NIH-Crypto   8+                   3 or less         1.3008850   0.7911831   2.138951
12 months   ki1148112-LCNI-5        4-5                  3 or less         1.3832772   0.9583951   1.996521
12 months   ki1148112-LCNI-5        6-7                  3 or less         1.4814815   0.9916269   2.213320
12 months   ki1148112-LCNI-5        8+                   3 or less         1.1992945   0.6393784   2.249540
18 months   ki1000108-IRC           4-5                  3 or less         1.7035767   1.0158734   2.856826
18 months   ki1000108-IRC           6-7                  3 or less         1.4342200   0.8273190   2.486329
18 months   ki1000108-IRC           8+                   3 or less         1.8269231   1.0634058   3.138640
18 months   ki1017093-NIH-Birth     4-5                  3 or less         1.1848330   0.9519681   1.474660
18 months   ki1017093-NIH-Birth     6-7                  3 or less         0.9595496   0.7391948   1.245593
18 months   ki1017093-NIH-Birth     8+                   3 or less         0.8420455   0.6224301   1.139149
18 months   ki1017093b-PROVIDE      4-5                  3 or less         0.8828006   0.5028089   1.549967
18 months   ki1017093b-PROVIDE      6-7                  3 or less         0.6349206   0.2960996   1.361448
18 months   ki1017093b-PROVIDE      8+                   3 or less         0.6666667   0.2908916   1.527870
18 months   ki1017093c-NIH-Crypto   4-5                  3 or less         1.0850685   0.7456569   1.578975
18 months   ki1017093c-NIH-Crypto   6-7                  3 or less         1.0609272   0.7018720   1.603663
18 months   ki1017093c-NIH-Crypto   8+                   3 or less         1.1168627   0.7196399   1.733342
18 months   ki1148112-LCNI-5        4-5                  3 or less         0.9901338   0.7654334   1.280797
18 months   ki1148112-LCNI-5        6-7                  3 or less         1.0879121   0.8169583   1.448731
18 months   ki1148112-LCNI-5        8+                   3 or less         0.7273469   0.4154473   1.273407
24 months   ki1000108-IRC           4-5                  3 or less         1.3524317   0.8988331   2.034940
24 months   ki1000108-IRC           6-7                  3 or less         1.1697000   0.7528014   1.817475
24 months   ki1000108-IRC           8+                   3 or less         1.4198286   0.9205382   2.189929
24 months   ki1017093-NIH-Birth     4-5                  3 or less         1.1810201   0.9234239   1.510475
24 months   ki1017093-NIH-Birth     6-7                  3 or less         0.9807692   0.7335145   1.311369
24 months   ki1017093-NIH-Birth     8+                   3 or less         0.9615385   0.6982244   1.324153
24 months   ki1017093b-PROVIDE      4-5                  3 or less         1.0519481   0.5522299   2.003866
24 months   ki1017093b-PROVIDE      6-7                  3 or less         0.6428571   0.2586758   1.597619
24 months   ki1017093b-PROVIDE      8+                   3 or less         1.2000000   0.5487017   2.624377
24 months   ki1017093c-NIH-Crypto   4-5                  3 or less         1.1896552   0.7377339   1.918415
24 months   ki1017093c-NIH-Crypto   6-7                  3 or less         1.1610577   0.6937899   1.943031
24 months   ki1017093c-NIH-Crypto   8+                   3 or less         0.8832831   0.4828221   1.615894
24 months   ki1148112-LCNI-5        4-5                  3 or less         1.0687961   0.7813930   1.461909
24 months   ki1148112-LCNI-5        6-7                  3 or less         1.0654561   0.7403087   1.533410
24 months   ki1148112-LCNI-5        8+                   3 or less         0.7837838   0.4077674   1.506538


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC           3 or less            NA                 0.0511734   -0.0461883   0.1485352
3 months    ki1017093-NIH-Birth     3 or less            NA                -0.0194546   -0.1037637   0.0648546
3 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.0334207   -0.1145353   0.0476938
6 months    ki1000108-IRC           3 or less            NA                 0.0043209   -0.1059546   0.1145965
6 months    ki1017093-NIH-Birth     3 or less            NA                 0.0471038   -0.0365576   0.1307652
6 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.0402098   -0.1235006   0.0430810
6 months    ki1148112-LCNI-5        3 or less            NA                 0.0595679   -0.0232608   0.1423966
9 months    ki1000108-IRC           3 or less            NA                 0.0313480   -0.0789579   0.1416539
9 months    ki1017093-NIH-Birth     3 or less            NA                 0.1236686    0.0360078   0.2113295
9 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.0128034   -0.0963561   0.0707493
9 months    ki1148112-LCNI-5        3 or less            NA                 0.0046105   -0.0903677   0.0995888
12 months   ki1000108-IRC           3 or less            NA                 0.0344828   -0.0783637   0.1473292
12 months   ki1017093-NIH-Birth     3 or less            NA                 0.0565636   -0.0410438   0.1541710
12 months   ki1017093b-PROVIDE      3 or less            NA                -0.0724183   -0.2613033   0.1164667
12 months   ki1017093c-NIH-Crypto   3 or less            NA                 0.0381280   -0.0417472   0.1180032
12 months   ki1148112-LCNI-5        3 or less            NA                 0.0908497   -0.0085144   0.1902138
18 months   ki1000108-IRC           3 or less            NA                 0.1274854    0.0182630   0.2367077
18 months   ki1017093-NIH-Birth     3 or less            NA                 0.0233704   -0.0870033   0.1337442
18 months   ki1017093b-PROVIDE      3 or less            NA                -0.0812057   -0.3002281   0.1378167
18 months   ki1017093c-NIH-Crypto   3 or less            NA                 0.0203630   -0.0730871   0.1138130
18 months   ki1148112-LCNI-5        3 or less            NA                -0.0020316   -0.1007531   0.0966898
24 months   ki1000108-IRC           3 or less            NA                 0.0880617   -0.0329567   0.2090801
24 months   ki1017093-NIH-Birth     3 or less            NA                 0.0347786   -0.0785276   0.1480847
24 months   ki1017093b-PROVIDE      3 or less            NA                -0.0044743   -0.1939407   0.1849921
24 months   ki1017093c-NIH-Crypto   3 or less            NA                 0.0249253   -0.0747789   0.1246295
24 months   ki1148112-LCNI-5        3 or less            NA                 0.0115727   -0.0925534   0.1156988


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC           3 or less            NA                 0.2288746   -0.3562543   0.5615613
3 months    ki1017093-NIH-Birth     3 or less            NA                -0.0853008   -0.5257942   0.2280231
3 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.1559633   -0.6038750   0.1668608
6 months    ki1000108-IRC           3 or less            NA                 0.0175862   -0.5513281   0.3778641
6 months    ki1017093-NIH-Birth     3 or less            NA                 0.1756579   -0.2033321   0.4352848
6 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.1916667   -0.6628546   0.1460051
6 months    ki1148112-LCNI-5        3 or less            NA                 0.1619128   -0.0962590   0.3592844
9 months    ki1000108-IRC           3 or less            NA                 0.1149425   -0.3977175   0.4395672
9 months    ki1017093-NIH-Birth     3 or less            NA                 0.3464088    0.0488258   0.5508905
9 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.0551172   -0.4837236   0.2496768
9 months    ki1148112-LCNI-5        3 or less            NA                 0.0147630   -0.3415240   0.2764260
12 months   ki1000108-IRC           3 or less            NA                 0.1176471   -0.3650099   0.4296402
12 months   ki1017093-NIH-Birth     3 or less            NA                 0.1509387   -0.1536984   0.3751356
12 months   ki1017093b-PROVIDE      3 or less            NA                -0.2518182   -1.1158396   0.2593726
12 months   ki1017093c-NIH-Crypto   3 or less            NA                 0.1574174   -0.2461644   0.4302955
12 months   ki1148112-LCNI-5        3 or less            NA                 0.2224000   -0.0628828   0.4311115
18 months   ki1000108-IRC           3 or less            NA                 0.3585526   -0.0350548   0.6024803
18 months   ki1017093-NIH-Birth     3 or less            NA                 0.0397813   -0.1677039   0.2103992
18 months   ki1017093b-PROVIDE      3 or less            NA                -0.2201923   -0.9856693   0.2501927
18 months   ki1017093c-NIH-Crypto   3 or less            NA                 0.0675922   -0.3004311   0.3314646
18 months   ki1148112-LCNI-5        3 or less            NA                -0.0041217   -0.2257739   0.1774500
24 months   ki1000108-IRC           3 or less            NA                 0.2118661   -0.1402404   0.4552421
24 months   ki1017093-NIH-Birth     3 or less            NA                 0.0626891   -0.1654782   0.2461878
24 months   ki1017093b-PROVIDE      3 or less            NA                -0.0136054   -0.7894923   0.4258729
24 months   ki1017093c-NIH-Crypto   3 or less            NA                 0.0970575   -0.3879896   0.4126000
24 months   ki1148112-LCNI-5        3 or less            NA                 0.0264907   -0.2435641   0.2378998


