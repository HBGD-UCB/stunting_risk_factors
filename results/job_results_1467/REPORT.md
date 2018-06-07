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
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
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
* country

## Data Summary

agecat      studyid                    country      A              n    nA   nAY0   nAY1
----------  -------------------------  -----------  ----------  ----  ----  -----  -----
Birth       ki1000108-IRC              INDIA        3 or less    388    54     51      3
Birth       ki1000108-IRC              INDIA        4-5          388   150    128     22
Birth       ki1000108-IRC              INDIA        6-7          388   103     89     14
Birth       ki1000108-IRC              INDIA        8+           388    81     75      6
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less     28     7      7      0
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5           28    11     10      1
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7           28     7      7      0
Birth       ki1017093-NIH-Birth        BANGLADESH   8+            28     3      3      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less     27     8      7      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5           27     9      7      2
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7           27     7      5      2
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+            27     3      3      0
3 months    ki1000108-IRC              INDIA        3 or less    407    58     48     10
3 months    ki1000108-IRC              INDIA        4-5          407   156    120     36
3 months    ki1000108-IRC              INDIA        6-7          407   106     83     23
3 months    ki1000108-IRC              INDIA        8+           407    87     65     22
3 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less     97     7      4      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5           97    36     21     15
3 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7           97    35     21     14
3 months    ki1000304b-SAS-FoodSuppl   INDIA        8+            97    19     13      6
3 months    ki1017093-NIH-Birth        BANGLADESH   3 or less    570   101     76     25
3 months    ki1017093-NIH-Birth        BANGLADESH   4-5          570   241    183     58
3 months    ki1017093-NIH-Birth        BANGLADESH   6-7          570   133     99     34
3 months    ki1017093-NIH-Birth        BANGLADESH   8+           570    95     82     13
3 months    ki1017093b-PROVIDE         BANGLADESH   3 or less    645   126    109     17
3 months    ki1017093b-PROVIDE         BANGLADESH   4-5          645   298    261     37
3 months    ki1017093b-PROVIDE         BANGLADESH   6-7          645   136    125     11
3 months    ki1017093b-PROVIDE         BANGLADESH   8+           645    85     72     13
3 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less    728   109     82     27
3 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5          728   330    255     75
3 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7          728   169    139     30
3 months    ki1017093c-NIH-Crypto      BANGLADESH   8+           728   120     96     24
6 months    ki1000108-IRC              INDIA        3 or less    407    58     44     14
6 months    ki1000108-IRC              INDIA        4-5          407   158    116     42
6 months    ki1000108-IRC              INDIA        6-7          407   106     81     25
6 months    ki1000108-IRC              INDIA        8+           407    85     66     19
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less     96     8      4      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5           96    37     20     17
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7           96    33     16     17
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+            96    18      8     10
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less    537    95     74     21
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5          537   227    151     76
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7          537   128    101     27
6 months    ki1017093-NIH-Birth        BANGLADESH   8+           537    87     67     20
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less    583   102     84     18
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5          583   277    232     45
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7          583   126    110     16
6 months    ki1017093b-PROVIDE         BANGLADESH   8+           583    78     63     15
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less    715   104     78     26
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5          715   326    257     69
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7          715   170    138     32
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+           715   115     92     23
6 months    ki1148112-LCNI-5           MALAWI       3 or less    816   224    146     78
6 months    ki1148112-LCNI-5           MALAWI       4-5          816   340    212    128
6 months    ki1148112-LCNI-5           MALAWI       6-7          816   182    117     65
6 months    ki1148112-LCNI-5           MALAWI       8+           816    70     45     25
9 months    ki1000108-IRC              INDIA        3 or less    407    58     44     14
9 months    ki1000108-IRC              INDIA        4-5          407   158    109     49
9 months    ki1000108-IRC              INDIA        6-7          407   106     78     28
9 months    ki1000108-IRC              INDIA        8+           407    85     65     20
9 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less     85     4      3      1
9 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5           85    34     10     24
9 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7           85    31     12     19
9 months    ki1000304b-SAS-FoodSuppl   INDIA        8+            85    16      3     13
9 months    ki1017093-NIH-Birth        BANGLADESH   3 or less    507    90     69     21
9 months    ki1017093-NIH-Birth        BANGLADESH   4-5          507   217    127     90
9 months    ki1017093-NIH-Birth        BANGLADESH   6-7          507   118     74     44
9 months    ki1017093-NIH-Birth        BANGLADESH   8+           507    82     56     26
9 months    ki1017093b-PROVIDE         BANGLADESH   3 or less    605   111     87     24
9 months    ki1017093b-PROVIDE         BANGLADESH   4-5          605   285    224     61
9 months    ki1017093b-PROVIDE         BANGLADESH   6-7          605   126    101     25
9 months    ki1017093b-PROVIDE         BANGLADESH   8+           605    83     64     19
9 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less    706   102     77     25
9 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5          706   321    241     80
9 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7          706   171    138     33
9 months    ki1017093c-NIH-Crypto      BANGLADESH   8+           706   112     86     26
9 months    ki1148112-LCNI-5           MALAWI       3 or less    657   179    117     62
9 months    ki1148112-LCNI-5           MALAWI       4-5          657   277    184     93
9 months    ki1148112-LCNI-5           MALAWI       6-7          657   147    101     46
9 months    ki1148112-LCNI-5           MALAWI       8+           657    54     38     16
12 months   ki1000108-IRC              INDIA        3 or less    406    58     43     15
12 months   ki1000108-IRC              INDIA        4-5          406   157    112     45
12 months   ki1000108-IRC              INDIA        6-7          406   105     74     31
12 months   ki1000108-IRC              INDIA        8+           406    86     58     28
12 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less     92     7      3      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5           92    36      6     30
12 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7           92    33      8     25
12 months   ki1000304b-SAS-FoodSuppl   INDIA        8+            92    16      2     14
12 months   ki1017093-NIH-Birth        BANGLADESH   3 or less    491    88     60     28
12 months   ki1017093-NIH-Birth        BANGLADESH   4-5          491   206    112     94
12 months   ki1017093-NIH-Birth        BANGLADESH   6-7          491   115     79     36
12 months   ki1017093-NIH-Birth        BANGLADESH   8+           491    82     56     26
12 months   ki1017093b-PROVIDE         BANGLADESH   3 or less    600   110     83     27
12 months   ki1017093b-PROVIDE         BANGLADESH   4-5          600   284    211     73
12 months   ki1017093b-PROVIDE         BANGLADESH   6-7          600   123     89     34
12 months   ki1017093b-PROVIDE         BANGLADESH   8+           600    83     60     23
12 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less    706    98     78     20
12 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5          706   324    239     85
12 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7          706   171    135     36
12 months   ki1017093c-NIH-Crypto      BANGLADESH   8+           706   113     83     30
12 months   ki1148112-LCNI-5           MALAWI       3 or less    621   165    109     56
12 months   ki1148112-LCNI-5           MALAWI       4-5          621   267    157    110
12 months   ki1148112-LCNI-5           MALAWI       6-7          621   141     80     61
12 months   ki1148112-LCNI-5           MALAWI       8+           621    48     31     17
18 months   ki1000108-IRC              INDIA        3 or less    405    57     44     13
18 months   ki1000108-IRC              INDIA        4-5          405   157     96     61
18 months   ki1000108-IRC              INDIA        6-7          405   107     72     35
18 months   ki1000108-IRC              INDIA        8+           405    84     49     35
18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less     84     6      1      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5           84    32      1     31
18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7           84    31      7     24
18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+            84    15      1     14
18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less    463    78     34     44
18 months   ki1017093-NIH-Birth        BANGLADESH   4-5          463   196     65    131
18 months   ki1017093-NIH-Birth        BANGLADESH   6-7          463   109     50     59
18 months   ki1017093-NIH-Birth        BANGLADESH   8+           463    80     42     38
18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less    552    96     61     35
18 months   ki1017093b-PROVIDE         BANGLADESH   4-5          552   257    160     97
18 months   ki1017093b-PROVIDE         BANGLADESH   6-7          552   117     72     45
18 months   ki1017093b-PROVIDE         BANGLADESH   8+           552    82     53     29
18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less    634    89     64     25
18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5          634   292    203     89
18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7          634   151    106     45
18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+           634   102     70     32
18 months   ki1148112-LCNI-5           MALAWI       3 or less    719   192    104     88
18 months   ki1148112-LCNI-5           MALAWI       4-5          719   303    161    142
18 months   ki1148112-LCNI-5           MALAWI       6-7          719   160     86     74
18 months   ki1148112-LCNI-5           MALAWI       8+           719    64     38     26
24 months   ki1000108-IRC              INDIA        3 or less    409    58     39     19
24 months   ki1000108-IRC              INDIA        4-5          409   158     88     70
24 months   ki1000108-IRC              INDIA        6-7          409   107     66     41
24 months   ki1000108-IRC              INDIA        8+           409    86     46     40
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less    429    75     36     39
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5          429   184     71    113
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7          429   100     49     51
24 months   ki1017093-NIH-Birth        BANGLADESH   8+           429    70     35     35
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less    577   105     75     30
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5          577   273    177     96
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7          577   117     82     35
24 months   ki1017093b-PROVIDE         BANGLADESH   8+           577    82     53     29
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less    514    69     53     16
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5          514   232    168     64
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7          514   130     95     35
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+           514    83     66     17
24 months   ki1148112-LCNI-5           MALAWI       3 or less    574   159     89     70
24 months   ki1148112-LCNI-5           MALAWI       4-5          574   237    129    108
24 months   ki1148112-LCNI-5           MALAWI       6-7          574   129     75     54
24 months   ki1148112-LCNI-5           MALAWI       8+           574    49     29     20


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3c3577e8-6283-4baa-a19f-51a26d8641bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 29 rows containing missing values (geom_errorbar).
```

![](/tmp/3c3577e8-6283-4baa-a19f-51a26d8641bd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/3c3577e8-6283-4baa-a19f-51a26d8641bd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3c3577e8-6283-4baa-a19f-51a26d8641bd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           INDIA        3 or less            NA                0.1724138   0.0750806   0.2697470
3 months    ki1000108-IRC           INDIA        4-5                  NA                0.2307692   0.1645724   0.2969661
3 months    ki1000108-IRC           INDIA        6-7                  NA                0.2169811   0.1384166   0.2955456
3 months    ki1000108-IRC           INDIA        8+                   NA                0.2528736   0.1614262   0.3443210
3 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.2475248   0.1632836   0.3317659
3 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.2406639   0.1866453   0.2946825
3 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.2556391   0.1814382   0.3298400
3 months    ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.1368421   0.0676713   0.2060129
3 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.1349206   0.0752217   0.1946196
3 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.1241611   0.0866912   0.1616309
3 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.0808824   0.0350230   0.1267417
3 months    ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.1529412   0.0763648   0.2295175
3 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.2477064   0.1666111   0.3288017
3 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.2272727   0.1820271   0.2725183
3 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.1775148   0.1198668   0.2351628
3 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.2000000   0.1283830   0.2716170
6 months    ki1000108-IRC           INDIA        3 or less            NA                0.2413793   0.1311161   0.3516425
6 months    ki1000108-IRC           INDIA        4-5                  NA                0.2658228   0.1968544   0.3347912
6 months    ki1000108-IRC           INDIA        6-7                  NA                0.2358491   0.1549328   0.3167654
6 months    ki1000108-IRC           INDIA        8+                   NA                0.2235294   0.1348541   0.3122047
6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.2210526   0.1375322   0.3045731
6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.3348018   0.2733535   0.3962500
6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.2109375   0.1401950   0.2816800
6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.2298851   0.1413885   0.3183816
6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.1764706   0.1024255   0.2505157
6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.1624549   0.1189787   0.2059311
6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.1269841   0.0687977   0.1851705
6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.1923077   0.1047700   0.2798453
6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.2500000   0.1667209   0.3332791
6 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.2116564   0.1672837   0.2560292
6 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.1882353   0.1294332   0.2470374
6 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.2000000   0.1268418   0.2731582
6 months    ki1148112-LCNI-5        MALAWI       3 or less            NA                0.3482143   0.2857882   0.4106404
6 months    ki1148112-LCNI-5        MALAWI       4-5                  NA                0.3764706   0.3249395   0.4280016
6 months    ki1148112-LCNI-5        MALAWI       6-7                  NA                0.3571429   0.2874871   0.4267986
6 months    ki1148112-LCNI-5        MALAWI       8+                   NA                0.3571429   0.2448264   0.4694594
9 months    ki1000108-IRC           INDIA        3 or less            NA                0.2413793   0.1311161   0.3516425
9 months    ki1000108-IRC           INDIA        4-5                  NA                0.3101266   0.2379148   0.3823383
9 months    ki1000108-IRC           INDIA        6-7                  NA                0.2641509   0.1801180   0.3481839
9 months    ki1000108-IRC           INDIA        8+                   NA                0.2352941   0.1450070   0.3255812
9 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.2333333   0.1458657   0.3208009
9 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.4147465   0.3491305   0.4803626
9 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.3728814   0.2855448   0.4602179
9 months    ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.3170732   0.2162555   0.4178909
9 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.2162162   0.1395705   0.2928620
9 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.2140351   0.1663778   0.2616923
9 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.1984127   0.1287208   0.2681046
9 months    ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.2289157   0.1384556   0.3193757
9 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.2450980   0.1615626   0.3286335
9 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.2492212   0.2018677   0.2965747
9 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.1929825   0.1337911   0.2521738
9 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.2321429   0.1538964   0.3103893
9 months    ki1148112-LCNI-5        MALAWI       3 or less            NA                0.3463687   0.2766117   0.4161258
9 months    ki1148112-LCNI-5        MALAWI       4-5                  NA                0.3357401   0.2800844   0.3913958
9 months    ki1148112-LCNI-5        MALAWI       6-7                  NA                0.3129252   0.2379111   0.3879392
9 months    ki1148112-LCNI-5        MALAWI       8+                   NA                0.2962963   0.1744142   0.4181784
12 months   ki1000108-IRC           INDIA        3 or less            NA                0.2586207   0.1457915   0.3714499
12 months   ki1000108-IRC           INDIA        4-5                  NA                0.2866242   0.2158053   0.3574431
12 months   ki1000108-IRC           INDIA        6-7                  NA                0.2952381   0.2078814   0.3825948
12 months   ki1000108-IRC           INDIA        8+                   NA                0.3255814   0.2264231   0.4247397
12 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.3181818   0.2207678   0.4155958
12 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.4563107   0.3882239   0.5243975
12 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.3130435   0.2282019   0.3978851
12 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.3170732   0.2162522   0.4178941
12 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.2454545   0.1649645   0.3259446
12 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.2570423   0.2061753   0.3079092
12 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.2764228   0.1973208   0.3555247
12 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.2771084   0.1807405   0.3734764
12 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.2040816   0.1242309   0.2839324
12 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.2623457   0.2144113   0.3102800
12 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.2105263   0.1493787   0.2716740
12 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.2654867   0.1840092   0.3469643
12 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                0.3393939   0.2670871   0.4117008
12 months   ki1148112-LCNI-5        MALAWI       4-5                  NA                0.4119850   0.3529000   0.4710700
12 months   ki1148112-LCNI-5        MALAWI       6-7                  NA                0.4326241   0.3507815   0.5144667
12 months   ki1148112-LCNI-5        MALAWI       8+                   NA                0.3541667   0.2187595   0.4895738
18 months   ki1000108-IRC           INDIA        3 or less            NA                0.2280702   0.1190089   0.3371315
18 months   ki1000108-IRC           INDIA        4-5                  NA                0.3885350   0.3121979   0.4648722
18 months   ki1000108-IRC           INDIA        6-7                  NA                0.3271028   0.2380988   0.4161068
18 months   ki1000108-IRC           INDIA        8+                   NA                0.4166667   0.3111070   0.5222263
18 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.5641026   0.4539381   0.6742670
18 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.6683673   0.6023853   0.7343494
18 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.5412844   0.4476385   0.6349303
18 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.4750000   0.3654534   0.5845466
18 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.3645833   0.2682151   0.4609516
18 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.3774319   0.3181137   0.4367501
18 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.3846154   0.2963815   0.4728493
18 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.3536585   0.2500828   0.4572343
18 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.2808989   0.1874518   0.3743460
18 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.3047945   0.2519549   0.3576341
18 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.2980132   0.2250029   0.3710236
18 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.3137255   0.2236069   0.4038441
18 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                0.4583333   0.3878062   0.5288605
18 months   ki1148112-LCNI-5        MALAWI       4-5                  NA                0.4686469   0.4124200   0.5248737
18 months   ki1148112-LCNI-5        MALAWI       6-7                  NA                0.4625000   0.3851900   0.5398100
18 months   ki1148112-LCNI-5        MALAWI       8+                   NA                0.4062500   0.2858410   0.5266590
24 months   ki1000108-IRC           INDIA        3 or less            NA                0.3275862   0.2066527   0.4485198
24 months   ki1000108-IRC           INDIA        4-5                  NA                0.4430380   0.3654875   0.5205884
24 months   ki1000108-IRC           INDIA        6-7                  NA                0.3831776   0.2909485   0.4754067
24 months   ki1000108-IRC           INDIA        8+                   NA                0.4651163   0.3595705   0.5706621
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.5200000   0.4068000   0.6332000
24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.6141304   0.5437104   0.6845505
24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.5100000   0.4119070   0.6080930
24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.5000000   0.3827330   0.6172670
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.2857143   0.1992310   0.3721975
24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.3516484   0.2949588   0.4083379
24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.2991453   0.2161054   0.3821852
24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.3536585   0.2500869   0.4572302
24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.2318841   0.1322070   0.3315611
24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.2758621   0.2182937   0.3334304
24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.2692308   0.1929084   0.3455531
24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.2048193   0.1179132   0.2917254
24 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                0.4402516   0.3630235   0.5174796
24 months   ki1148112-LCNI-5        MALAWI       4-5                  NA                0.4556962   0.3922346   0.5191578
24 months   ki1148112-LCNI-5        MALAWI       6-7                  NA                0.4186047   0.3333988   0.5038106
24 months   ki1148112-LCNI-5        MALAWI       8+                   NA                0.4081633   0.2704275   0.5458990


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           INDIA        NA                   NA                0.2235872   0.1830592   0.2641152
3 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2280702   0.1935943   0.2625460
3 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1209302   0.0957486   0.1461119
3 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2142857   0.1844587   0.2441127
6 months    ki1000108-IRC           INDIA        NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1148112-LCNI-5        MALAWI       NA                   NA                0.3627451   0.3297365   0.3957537
9 months    ki1000108-IRC           INDIA        NA                   NA                0.2727273   0.2294063   0.3160482
9 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3570020   0.3152562   0.3987478
9 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2132231   0.1805589   0.2458874
9 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2322946   0.2011222   0.2634670
9 months    ki1148112-LCNI-5        MALAWI       NA                   NA                0.3302892   0.2942988   0.3662796
12 months   ki1000108-IRC           INDIA        NA                   NA                0.2931034   0.2487723   0.3374346
12 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3747454   0.3318860   0.4176049
12 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2616667   0.2264673   0.2968661
12 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2422096   0.2105851   0.2738341
12 months   ki1148112-LCNI-5        MALAWI       NA                   NA                0.3929147   0.3544709   0.4313584
18 months   ki1000108-IRC           INDIA        NA                   NA                0.3555556   0.3088785   0.4022327
18 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5874730   0.5425832   0.6323628
18 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.3731884   0.3328048   0.4135720
18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3012618   0.2655201   0.3370036
18 months   ki1148112-LCNI-5        MALAWI       NA                   NA                0.4589708   0.4225215   0.4954201
24 months   ki1000108-IRC           INDIA        NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1148112-LCNI-5        MALAWI       NA                   NA                0.4390244   0.3983906   0.4796582


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
3 months    ki1000108-IRC           INDIA        4-5                  3 or less         1.3384615   0.7105541   2.521243
3 months    ki1000108-IRC           INDIA        6-7                  3 or less         1.2584906   0.6435488   2.461038
3 months    ki1000108-IRC           INDIA        8+                   3 or less         1.4666667   0.7501839   2.867445
3 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
3 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         0.9722822   0.6467500   1.461666
3 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.0327820   0.6603122   1.615355
3 months    ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.5528421   0.3005755   1.016831
3 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
3 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         0.9202527   0.5386454   1.572212
3 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         0.5994810   0.2920300   1.230618
3 months    ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.1335640   0.5811062   2.211244
3 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.9175084   0.6254671   1.345909
3 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.7166338   0.4518869   1.136488
3 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.8074074   0.4970260   1.311615
6 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC           INDIA        4-5                  3 or less         1.1012658   0.6512357   1.862285
6 months    ki1000108-IRC           INDIA        6-7                  3 or less         0.9770889   0.5518536   1.729993
6 months    ki1000108-IRC           INDIA        8+                   3 or less         0.9260504   0.5056838   1.695861
6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.5145794   0.9951004   2.305246
6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.9542411   0.5757728   1.581485
6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.0399562   0.6063976   1.783498
6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         0.9205776   0.5596610   1.514244
6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         0.7195767   0.3865879   1.339387
6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.0897436   0.5867620   2.023889
6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.8466258   0.5711563   1.254954
6 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.7529412   0.4769027   1.188755
6 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.8000000   0.4877826   1.312060
6 months    ki1148112-LCNI-5        MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5        MALAWI       4-5                  3 or less         1.0811463   0.8628331   1.354697
6 months    ki1148112-LCNI-5        MALAWI       6-7                  3 or less         1.0256410   0.7869469   1.336735
6 months    ki1148112-LCNI-5        MALAWI       8+                   3 or less         1.0256410   0.7141387   1.473019
9 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
9 months    ki1000108-IRC           INDIA        4-5                  3 or less         1.2848101   0.7694226   2.145423
9 months    ki1000108-IRC           INDIA        6-7                  3 or less         1.0943396   0.6271860   1.909448
9 months    ki1000108-IRC           INDIA        8+                   3 or less         0.9747899   0.5368070   1.770125
9 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
9 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.7774852   1.1833158   2.670000
9 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.5980630   1.0271355   2.486337
9 months    ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.3588850   0.8311992   2.221571
9 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
9 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         0.9899123   0.6513201   1.504523
9 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         0.9176587   0.5571259   1.511503
9 months    ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.0587349   0.6226375   1.800277
9 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
9 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         1.0168224   0.6883022   1.502142
9 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.7873684   0.4977904   1.245402
9 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.9471429   0.5864600   1.529652
9 months    ki1148112-LCNI-5        MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
9 months    ki1148112-LCNI-5        MALAWI       4-5                  3 or less         0.9693141   0.7467603   1.258195
9 months    ki1148112-LCNI-5        MALAWI       6-7                  3 or less         0.9034452   0.6605850   1.235592
9 months    ki1148112-LCNI-5        MALAWI       8+                   3 or less         0.8554361   0.5411000   1.352377
12 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1000108-IRC           INDIA        4-5                  3 or less         1.1082803   0.6712787   1.829769
12 months   ki1000108-IRC           INDIA        6-7                  3 or less         1.1415873   0.6738648   1.933951
12 months   ki1000108-IRC           INDIA        8+                   3 or less         1.2589147   0.7394776   2.143224
12 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.4341193   1.0201683   2.016038
12 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.9838509   0.6536623   1.480830
12 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.9965157   0.6408900   1.549476
12 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.0472092   0.7139953   1.535930
12 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.1261668   0.7287627   1.740281
12 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.1289603   0.6999892   1.820816
12 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         1.2854938   0.8346978   1.979752
12 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         1.0315789   0.6336864   1.679309
12 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         1.3008850   0.7911831   2.138951
12 months   ki1148112-LCNI-5        MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1148112-LCNI-5        MALAWI       4-5                  3 or less         1.2138844   0.9389478   1.569326
12 months   ki1148112-LCNI-5        MALAWI       6-7                  3 or less         1.2746960   0.9586704   1.694900
12 months   ki1148112-LCNI-5        MALAWI       8+                   3 or less         1.0435268   0.6736315   1.616534
18 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1000108-IRC           INDIA        4-5                  3 or less         1.7035767   1.0158734   2.856826
18 months   ki1000108-IRC           INDIA        6-7                  3 or less         1.4342200   0.8273190   2.486329
18 months   ki1000108-IRC           INDIA        8+                   3 or less         1.8269231   1.0634058   3.138640
18 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.1848330   0.9519681   1.474660
18 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.9595496   0.7391948   1.245593
18 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.8420455   0.6224301   1.139149
18 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.0352418   0.7611817   1.407976
18 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.0549451   0.7434120   1.497029
18 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         0.9700348   0.6538121   1.439202
18 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         1.0850685   0.7456569   1.578975
18 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         1.0609272   0.7018720   1.603663
18 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         1.1168627   0.7196399   1.733342
18 months   ki1148112-LCNI-5        MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1148112-LCNI-5        MALAWI       4-5                  3 or less         1.0225023   0.8412473   1.242810
18 months   ki1148112-LCNI-5        MALAWI       6-7                  3 or less         1.0090909   0.8040051   1.266490
18 months   ki1148112-LCNI-5        MALAWI       8+                   3 or less         0.8863637   0.6347125   1.237790
24 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC           INDIA        4-5                  3 or less         1.3524317   0.8988331   2.034940
24 months   ki1000108-IRC           INDIA        6-7                  3 or less         1.1697000   0.7528014   1.817475
24 months   ki1000108-IRC           INDIA        8+                   3 or less         1.4198286   0.9205382   2.189929
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.1810201   0.9234239   1.510475
24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.9807692   0.7335145   1.311369
24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.9615385   0.6982244   1.324153
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.2307692   0.8734492   1.734266
24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.0470085   0.6943578   1.578764
24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.2378049   0.8123413   1.886105
24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         1.1896552   0.7377339   1.918415
24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         1.1610577   0.6937899   1.943031
24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.8832831   0.4828221   1.615894
24 months   ki1148112-LCNI-5        MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5        MALAWI       4-5                  3 or less         1.0350814   0.8273753   1.294930
24 months   ki1148112-LCNI-5        MALAWI       6-7                  3 or less         0.9508306   0.7267843   1.243944
24 months   ki1148112-LCNI-5        MALAWI       8+                   3 or less         0.9271137   0.6338124   1.356142


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC           INDIA        3 or less            NA                 0.0511734   -0.0405660   0.1429129
3 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.0194546   -0.0954166   0.0565074
3 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0139904   -0.0669588   0.0389780
3 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0334207   -0.1075610   0.0407195
6 months    ki1000108-IRC           INDIA        3 or less            NA                 0.0043209   -0.0978865   0.1065284
6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0471038   -0.0297991   0.1240066
6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0152356   -0.0819952   0.0515240
6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0402098   -0.1164315   0.0360119
6 months    ki1148112-LCNI-5        MALAWI       3 or less            NA                 0.0145308   -0.0388269   0.0678885
9 months    ki1000108-IRC           INDIA        3 or less            NA                 0.0313480   -0.0714602   0.1341561
9 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.1236686    0.0419550   0.2053822
9 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0029931   -0.0721732   0.0661871
9 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0128034   -0.0898329   0.0642260
9 months    ki1148112-LCNI-5        MALAWI       3 or less            NA                -0.0160795   -0.0753234   0.0431644
12 months   ki1000108-IRC           INDIA        3 or less            NA                 0.0344828   -0.0706762   0.1396417
12 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0565636   -0.0324583   0.1455855
12 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0162121   -0.0568778   0.0893021
12 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.0381280   -0.0367459   0.1130019
12 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                 0.0535207   -0.0091522   0.1161936
18 months   ki1000108-IRC           INDIA        3 or less            NA                 0.1274854    0.0239234   0.2310473
18 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0233704   -0.0769401   0.1236810
18 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0086051   -0.0790731   0.0962833
18 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.0203630   -0.0665747   0.1073006
18 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                 0.0006375   -0.0597455   0.0610204
24 months   ki1000108-IRC           INDIA        3 or less            NA                 0.0880617   -0.0249156   0.2010390
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0347786   -0.0679378   0.1374949
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0435751   -0.0353563   0.1225066
24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.0249253   -0.0683335   0.1181840
24 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                -0.0012272   -0.0668860   0.0644316


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC           INDIA        3 or less            NA                 0.2288746   -0.3108432   0.5463726
3 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.0853008   -0.4750048   0.2014413
3 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.1156899   -0.6514446   0.2462575
3 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.1559633   -0.5589666   0.1428610
6 months    ki1000108-IRC           INDIA        3 or less            NA                 0.0175862   -0.5003286   0.3567164
6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.1756579   -0.1667458   0.4175767
6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0944931   -0.5974360   0.2501013
6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.1916667   -0.6159515   0.1212178
6 months    ki1148112-LCNI-5        MALAWI       3 or less            NA                 0.0400579   -0.1189093   0.1764401
9 months    ki1000108-IRC           INDIA        3 or less            NA                 0.1149425   -0.3547930   0.4218107
9 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.3464088    0.0737205   0.5388202
9 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0140373   -0.3963963   0.2636248
9 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0551172   -0.4447030   0.2294110
9 months    ki1148112-LCNI-5        MALAWI       3 or less            NA                -0.0486832   -0.2443095   0.1161874
12 months   ki1000108-IRC           INDIA        3 or less            NA                 0.1176471   -0.3248741   0.4123617
12 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.1509387   -0.1231893   0.3581625
12 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0619572   -0.2633536   0.3035011
12 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.1574174   -0.2155838   0.4159633
12 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                 0.1362146   -0.0390496   0.2819157
18 months   ki1000108-IRC           INDIA        3 or less            NA                 0.3585526   -0.0083499   0.5919524
18 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0397813   -0.1471469   0.1962495
18 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0230583   -0.2425463   0.2318876
18 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.0675922   -0.2706006   0.3157690
18 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                 0.0013889   -0.1392324   0.1246526
24 months   ki1000108-IRC           INDIA        3 or less            NA                 0.2118661   -0.1128883   0.4418532
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0626891   -0.1421360   0.2307818
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.1323308   -0.1436567   0.3417170
24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.0970575   -0.3498114   0.3959859
24 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                -0.0027952   -0.1640797   0.1361431
