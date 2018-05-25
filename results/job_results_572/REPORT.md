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
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/0a0731e7-5a30-4078-ae3f-e4e9f89a3563/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0a0731e7-5a30-4078-ae3f-e4e9f89a3563/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/0a0731e7-5a30-4078-ae3f-e4e9f89a3563/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0a0731e7-5a30-4078-ae3f-e4e9f89a3563/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A              n    nA   nAY0   nAY1
----------  -------------------------  ----------  ----  ----  -----  -----
Birth       ki1000108-IRC              3 or less    388    54     53      1
Birth       ki1000108-IRC              4-5          388   150    142      8
Birth       ki1000108-IRC              6-7          388   103     97      6
Birth       ki1000108-IRC              8+           388    81     80      1
Birth       ki1000304b-SAS-FoodSuppl   3 or less      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   4-5            0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   6-7            0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   8+             0     0      0      0
Birth       ki1017093-NIH-Birth        3 or less     28     7      7      0
Birth       ki1017093-NIH-Birth        4-5           28    11     11      0
Birth       ki1017093-NIH-Birth        6-7           28     7      7      0
Birth       ki1017093-NIH-Birth        8+            28     3      3      0
Birth       ki1017093b-PROVIDE         3 or less      0     0      0      0
Birth       ki1017093b-PROVIDE         4-5            0     0      0      0
Birth       ki1017093b-PROVIDE         6-7            0     0      0      0
Birth       ki1017093b-PROVIDE         8+             0     0      0      0
Birth       ki1017093c-NIH-Crypto      3 or less     27     8      8      0
Birth       ki1017093c-NIH-Crypto      4-5           27     9      9      0
Birth       ki1017093c-NIH-Crypto      6-7           27     7      6      1
Birth       ki1017093c-NIH-Crypto      8+            27     3      3      0
Birth       ki1148112-LCNI-5           3 or less      0     0      0      0
Birth       ki1148112-LCNI-5           4-5            0     0      0      0
Birth       ki1148112-LCNI-5           6-7            0     0      0      0
Birth       ki1148112-LCNI-5           8+             0     0      0      0
3 months    ki1000108-IRC              3 or less    407    58     55      3
3 months    ki1000108-IRC              4-5          407   156    137     19
3 months    ki1000108-IRC              6-7          407   106     99      7
3 months    ki1000108-IRC              8+           407    87     80      7
3 months    ki1000304b-SAS-FoodSuppl   3 or less     97     7      5      2
3 months    ki1000304b-SAS-FoodSuppl   4-5           97    36     32      4
3 months    ki1000304b-SAS-FoodSuppl   6-7           97    35     30      5
3 months    ki1000304b-SAS-FoodSuppl   8+            97    19     17      2
3 months    ki1017093-NIH-Birth        3 or less    570   101     94      7
3 months    ki1017093-NIH-Birth        4-5          570   241    224     17
3 months    ki1017093-NIH-Birth        6-7          570   133    126      7
3 months    ki1017093-NIH-Birth        8+           570    95     93      2
3 months    ki1017093b-PROVIDE         3 or less    168    30     29      1
3 months    ki1017093b-PROVIDE         4-5          168    82     78      4
3 months    ki1017093b-PROVIDE         6-7          168    36     36      0
3 months    ki1017093b-PROVIDE         8+           168    20     20      0
3 months    ki1017093c-NIH-Crypto      3 or less    728   109    105      4
3 months    ki1017093c-NIH-Crypto      4-5          728   330    312     18
3 months    ki1017093c-NIH-Crypto      6-7          728   169    163      6
3 months    ki1017093c-NIH-Crypto      8+           728   120    115      5
3 months    ki1148112-LCNI-5           3 or less      0     0      0      0
3 months    ki1148112-LCNI-5           4-5            0     0      0      0
3 months    ki1148112-LCNI-5           6-7            0     0      0      0
3 months    ki1148112-LCNI-5           8+             0     0      0      0
6 months    ki1000108-IRC              3 or less    407    58     55      3
6 months    ki1000108-IRC              4-5          407   158    145     13
6 months    ki1000108-IRC              6-7          407   106     98      8
6 months    ki1000108-IRC              8+           407    85     80      5
6 months    ki1000304b-SAS-FoodSuppl   3 or less     96     8      7      1
6 months    ki1000304b-SAS-FoodSuppl   4-5           96    37     32      5
6 months    ki1000304b-SAS-FoodSuppl   6-7           96    33     27      6
6 months    ki1000304b-SAS-FoodSuppl   8+            96    18     15      3
6 months    ki1017093-NIH-Birth        3 or less    537    95     89      6
6 months    ki1017093-NIH-Birth        4-5          537   227    211     16
6 months    ki1017093-NIH-Birth        6-7          537   128    119      9
6 months    ki1017093-NIH-Birth        8+           537    87     83      4
6 months    ki1017093b-PROVIDE         3 or less    153    25     24      1
6 months    ki1017093b-PROVIDE         4-5          153    73     68      5
6 months    ki1017093b-PROVIDE         6-7          153    35     35      0
6 months    ki1017093b-PROVIDE         8+           153    20     20      0
6 months    ki1017093c-NIH-Crypto      3 or less    715   104     99      5
6 months    ki1017093c-NIH-Crypto      4-5          715   326    319      7
6 months    ki1017093c-NIH-Crypto      6-7          715   170    163      7
6 months    ki1017093c-NIH-Crypto      8+           715   115    111      4
6 months    ki1148112-LCNI-5           3 or less    405   120    115      5
6 months    ki1148112-LCNI-5           4-5          405   167    155     12
6 months    ki1148112-LCNI-5           6-7          405    89     81      8
6 months    ki1148112-LCNI-5           8+           405    29     27      2
9 months    ki1000108-IRC              3 or less    407    58     54      4
9 months    ki1000108-IRC              4-5          407   158    143     15
9 months    ki1000108-IRC              6-7          407   106     95     11
9 months    ki1000108-IRC              8+           407    85     81      4
9 months    ki1000304b-SAS-FoodSuppl   3 or less     85     4      4      0
9 months    ki1000304b-SAS-FoodSuppl   4-5           85    34     26      8
9 months    ki1000304b-SAS-FoodSuppl   6-7           85    31     23      8
9 months    ki1000304b-SAS-FoodSuppl   8+            85    16     12      4
9 months    ki1017093-NIH-Birth        3 or less    507    90     81      9
9 months    ki1017093-NIH-Birth        4-5          507   217    194     23
9 months    ki1017093-NIH-Birth        6-7          507   118    110      8
9 months    ki1017093-NIH-Birth        8+           507    82     77      5
9 months    ki1017093b-PROVIDE         3 or less    158    26     24      2
9 months    ki1017093b-PROVIDE         4-5          158    78     72      6
9 months    ki1017093b-PROVIDE         6-7          158    34     33      1
9 months    ki1017093b-PROVIDE         8+           158    20     20      0
9 months    ki1017093c-NIH-Crypto      3 or less    706   102    100      2
9 months    ki1017093c-NIH-Crypto      4-5          706   321    309     12
9 months    ki1017093c-NIH-Crypto      6-7          706   171    161     10
9 months    ki1017093c-NIH-Crypto      8+           706   112    108      4
9 months    ki1148112-LCNI-5           3 or less    317    91     88      3
9 months    ki1148112-LCNI-5           4-5          317   134    125      9
9 months    ki1148112-LCNI-5           6-7          317    70     67      3
9 months    ki1148112-LCNI-5           8+           317    22     20      2
12 months   ki1000108-IRC              3 or less    406    58     54      4
12 months   ki1000108-IRC              4-5          406   157    142     15
12 months   ki1000108-IRC              6-7          406   105     96      9
12 months   ki1000108-IRC              8+           406    86     80      6
12 months   ki1000304b-SAS-FoodSuppl   3 or less     92     7      4      3
12 months   ki1000304b-SAS-FoodSuppl   4-5           92    36     18     18
12 months   ki1000304b-SAS-FoodSuppl   6-7           92    33     21     12
12 months   ki1000304b-SAS-FoodSuppl   8+            92    16      8      8
12 months   ki1017093-NIH-Birth        3 or less    491    88     79      9
12 months   ki1017093-NIH-Birth        4-5          491   206    184     22
12 months   ki1017093-NIH-Birth        6-7          491   115    105     10
12 months   ki1017093-NIH-Birth        8+           491    82     75      7
12 months   ki1017093b-PROVIDE         3 or less    153    25     22      3
12 months   ki1017093b-PROVIDE         4-5          153    77     70      7
12 months   ki1017093b-PROVIDE         6-7          153    31     29      2
12 months   ki1017093b-PROVIDE         8+           153    20     19      1
12 months   ki1017093c-NIH-Crypto      3 or less    706    98     95      3
12 months   ki1017093c-NIH-Crypto      4-5          706   324    304     20
12 months   ki1017093c-NIH-Crypto      6-7          706   171    158     13
12 months   ki1017093c-NIH-Crypto      8+           706   113    108      5
12 months   ki1148112-LCNI-5           3 or less    306    85     81      4
12 months   ki1148112-LCNI-5           4-5          306   132    113     19
12 months   ki1148112-LCNI-5           6-7          306    68     62      6
12 months   ki1148112-LCNI-5           8+           306    21     17      4
18 months   ki1000108-IRC              3 or less    405    57     54      3
18 months   ki1000108-IRC              4-5          405   157    144     13
18 months   ki1000108-IRC              6-7          405   107     95     12
18 months   ki1000108-IRC              8+           405    84     78      6
18 months   ki1000304b-SAS-FoodSuppl   3 or less     84     6      5      1
18 months   ki1000304b-SAS-FoodSuppl   4-5           84    32     16     16
18 months   ki1000304b-SAS-FoodSuppl   6-7           84    31     19     12
18 months   ki1000304b-SAS-FoodSuppl   8+            84    15      7      8
18 months   ki1017093-NIH-Birth        3 or less    463    78     64     14
18 months   ki1017093-NIH-Birth        4-5          463   196    151     45
18 months   ki1017093-NIH-Birth        6-7          463   109     85     24
18 months   ki1017093-NIH-Birth        8+           463    80     62     18
18 months   ki1017093b-PROVIDE         3 or less    141    20     15      5
18 months   ki1017093b-PROVIDE         4-5          141    73     65      8
18 months   ki1017093b-PROVIDE         6-7          141    28     24      4
18 months   ki1017093b-PROVIDE         8+           141    20     17      3
18 months   ki1017093c-NIH-Crypto      3 or less    634    89     85      4
18 months   ki1017093c-NIH-Crypto      4-5          634   292    272     20
18 months   ki1017093c-NIH-Crypto      6-7          634   151    140     11
18 months   ki1017093c-NIH-Crypto      8+           634   102     95      7
18 months   ki1148112-LCNI-5           3 or less    353    99     85     14
18 months   ki1148112-LCNI-5           4-5          353   151    125     26
18 months   ki1148112-LCNI-5           6-7          353    78     69      9
18 months   ki1148112-LCNI-5           8+           353    25     23      2
24 months   ki1000108-IRC              3 or less    409    58     54      4
24 months   ki1000108-IRC              4-5          409   158    142     16
24 months   ki1000108-IRC              6-7          409   107     94     13
24 months   ki1000108-IRC              8+           409    86     78      8
24 months   ki1000304b-SAS-FoodSuppl   3 or less      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   4-5            0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   6-7            0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   8+             0     0      0      0
24 months   ki1017093-NIH-Birth        3 or less    429    75     64     11
24 months   ki1017093-NIH-Birth        4-5          429   184    140     44
24 months   ki1017093-NIH-Birth        6-7          429   100     75     25
24 months   ki1017093-NIH-Birth        8+           429    70     57     13
24 months   ki1017093b-PROVIDE         3 or less    149    24     20      4
24 months   ki1017093b-PROVIDE         4-5          149    77     69      8
24 months   ki1017093b-PROVIDE         6-7          149    28     25      3
24 months   ki1017093b-PROVIDE         8+           149    20     17      3
24 months   ki1017093c-NIH-Crypto      3 or less    514    69     63      6
24 months   ki1017093c-NIH-Crypto      4-5          514   232    216     16
24 months   ki1017093c-NIH-Crypto      6-7          514   130    121      9
24 months   ki1017093c-NIH-Crypto      8+           514    83     79      4
24 months   ki1148112-LCNI-5           3 or less    293    87     80      7
24 months   ki1148112-LCNI-5           4-5          293   121    101     20
24 months   ki1148112-LCNI-5           6-7          293    64     57      7
24 months   ki1148112-LCNI-5           8+           293    21     19      2

## Results Table

### Parameter: TSM


agecat      studyid               intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  ----------  ----------  ----------
9 months    ki1017093-NIH-Birth   3 or less            NA                0.1000000   0.0379593   0.1620407
9 months    ki1017093-NIH-Birth   4-5                  NA                0.1059908   0.0649938   0.1469878
9 months    ki1017093-NIH-Birth   6-7                  NA                0.0677966   0.0223925   0.1132007
9 months    ki1017093-NIH-Birth   8+                   NA                0.0609756   0.0091331   0.1128182
12 months   ki1017093-NIH-Birth   3 or less            NA                0.1022727   0.0389001   0.1656453
12 months   ki1017093-NIH-Birth   4-5                  NA                0.1067961   0.0645769   0.1490153
12 months   ki1017093-NIH-Birth   6-7                  NA                0.0869565   0.0354053   0.1385077
12 months   ki1017093-NIH-Birth   8+                   NA                0.0853659   0.0248248   0.1459069
18 months   ki1017093-NIH-Birth   3 or less            NA                0.1794872   0.0942302   0.2647441
18 months   ki1017093-NIH-Birth   4-5                  NA                0.2295918   0.1706494   0.2885343
18 months   ki1017093-NIH-Birth   6-7                  NA                0.2201835   0.1423094   0.2980576
18 months   ki1017093-NIH-Birth   8+                   NA                0.2250000   0.1333959   0.3166041
24 months   ki1017093-NIH-Birth   3 or less            NA                0.1466667   0.0665082   0.2268251
24 months   ki1017093-NIH-Birth   4-5                  NA                0.2391304   0.1774257   0.3008352
24 months   ki1017093-NIH-Birth   6-7                  NA                0.2500000   0.1650320   0.3349680
24 months   ki1017093-NIH-Birth   8+                   NA                0.1857143   0.0945097   0.2769189


### Parameter: E(Y)


agecat      studyid               intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  ----------  ----------  ----------
9 months    ki1017093-NIH-Birth   NA                   NA                0.0887574   0.0870664   0.0904484
12 months   ki1017093-NIH-Birth   NA                   NA                0.0977597   0.0969155   0.0986038
18 months   ki1017093-NIH-Birth   NA                   NA                0.2181425   0.2165208   0.2197643
24 months   ki1017093-NIH-Birth   NA                   NA                0.2167832   0.2131282   0.2204382


### Parameter: RR


agecat      studyid               intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -------------------  ---------------  ----------  ----------  ---------
9 months    ki1017093-NIH-Birth   4-5                  3 or less         1.0599078   0.5102140   2.201830
9 months    ki1017093-NIH-Birth   6-7                  3 or less         0.6779661   0.2721029   1.689207
9 months    ki1017093-NIH-Birth   8+                   3 or less         0.6097561   0.2128419   1.746848
12 months   ki1017093-NIH-Birth   4-5                  3 or less         1.0442287   0.5007082   2.177742
12 months   ki1017093-NIH-Birth   6-7                  3 or less         0.8502415   0.3606676   2.004368
12 months   ki1017093-NIH-Birth   8+                   3 or less         0.8346883   0.3254786   2.140554
18 months   ki1017093-NIH-Birth   4-5                  3 or less         1.2791545   0.7454688   2.194909
18 months   ki1017093-NIH-Birth   6-7                  3 or less         1.2267366   0.6785105   2.217921
18 months   ki1017093-NIH-Birth   8+                   3 or less         1.2535714   0.6705825   2.343398
24 months   ki1017093-NIH-Birth   4-5                  3 or less         1.6304348   0.8908845   2.983908
24 months   ki1017093-NIH-Birth   6-7                  3 or less         1.7045455   0.8955693   3.244277
24 months   ki1017093-NIH-Birth   8+                   3 or less         1.2662338   0.6073080   2.640090


### Parameter: PAR


agecat      studyid               intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  -----------  -----------  ----------
9 months    ki1017093-NIH-Birth   3 or less            NA                -0.0112426   -0.0733064   0.0508212
12 months   ki1017093-NIH-Birth   3 or less            NA                -0.0045131   -0.0678913   0.0588652
18 months   ki1017093-NIH-Birth   3 or less            NA                 0.0386554   -0.0466170   0.1239277
24 months   ki1017093-NIH-Birth   3 or less            NA                 0.0701166   -0.0101252   0.1503583


### Parameter: PAF


agecat      studyid               intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  -----------  -----------  ----------
9 months    ki1017093-NIH-Birth   3 or less            NA                -0.1266667   -1.0958581   0.3943398
12 months   ki1017093-NIH-Birth   3 or less            NA                -0.0461648   -0.9441684   0.4370546
18 months   ki1017093-NIH-Birth   3 or less            NA                 0.1772023   -0.3231511   0.4883457
24 months   ki1017093-NIH-Birth   3 or less            NA                 0.3234409   -0.1688957   0.6084062


