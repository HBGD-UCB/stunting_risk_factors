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

**Outcome Variable:** sstunted

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
Birth       ki1000108-IRC              INDIA        3 or less    388    54     53      1
Birth       ki1000108-IRC              INDIA        4-5          388   150    142      8
Birth       ki1000108-IRC              INDIA        6-7          388   103     97      6
Birth       ki1000108-IRC              INDIA        8+           388    81     80      1
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less     28     7      7      0
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5           28    11     11      0
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7           28     7      7      0
Birth       ki1017093-NIH-Birth        BANGLADESH   8+            28     3      3      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less     27     8      8      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5           27     9      9      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7           27     7      6      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+            27     3      3      0
3 months    ki1000108-IRC              INDIA        3 or less    407    58     55      3
3 months    ki1000108-IRC              INDIA        4-5          407   156    137     19
3 months    ki1000108-IRC              INDIA        6-7          407   106     99      7
3 months    ki1000108-IRC              INDIA        8+           407    87     80      7
3 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less     97     7      5      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5           97    36     32      4
3 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7           97    35     30      5
3 months    ki1000304b-SAS-FoodSuppl   INDIA        8+            97    19     17      2
3 months    ki1017093-NIH-Birth        BANGLADESH   3 or less    570   101     94      7
3 months    ki1017093-NIH-Birth        BANGLADESH   4-5          570   241    224     17
3 months    ki1017093-NIH-Birth        BANGLADESH   6-7          570   133    126      7
3 months    ki1017093-NIH-Birth        BANGLADESH   8+           570    95     93      2
3 months    ki1017093b-PROVIDE         BANGLADESH   3 or less    645   126    123      3
3 months    ki1017093b-PROVIDE         BANGLADESH   4-5          645   298    293      5
3 months    ki1017093b-PROVIDE         BANGLADESH   6-7          645   136    135      1
3 months    ki1017093b-PROVIDE         BANGLADESH   8+           645    85     84      1
3 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less    728   109    105      4
3 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5          728   330    312     18
3 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7          728   169    163      6
3 months    ki1017093c-NIH-Crypto      BANGLADESH   8+           728   120    115      5
6 months    ki1000108-IRC              INDIA        3 or less    407    58     55      3
6 months    ki1000108-IRC              INDIA        4-5          407   158    145     13
6 months    ki1000108-IRC              INDIA        6-7          407   106     98      8
6 months    ki1000108-IRC              INDIA        8+           407    85     80      5
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less     96     8      7      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5           96    37     32      5
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7           96    33     27      6
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+            96    18     15      3
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less    537    95     89      6
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5          537   227    211     16
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7          537   128    119      9
6 months    ki1017093-NIH-Birth        BANGLADESH   8+           537    87     83      4
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less    583   102     99      3
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5          583   277    268      9
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7          583   126    125      1
6 months    ki1017093b-PROVIDE         BANGLADESH   8+           583    78     77      1
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less    715   104     99      5
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5          715   326    319      7
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7          715   170    163      7
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+           715   115    111      4
6 months    ki1148112-LCNI-5           MALAWI       3 or less    816   224    206     18
6 months    ki1148112-LCNI-5           MALAWI       4-5          816   340    313     27
6 months    ki1148112-LCNI-5           MALAWI       6-7          816   182    169     13
6 months    ki1148112-LCNI-5           MALAWI       8+           816    70     63      7
9 months    ki1000108-IRC              INDIA        3 or less    407    58     54      4
9 months    ki1000108-IRC              INDIA        4-5          407   158    143     15
9 months    ki1000108-IRC              INDIA        6-7          407   106     95     11
9 months    ki1000108-IRC              INDIA        8+           407    85     81      4
9 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less     85     4      4      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5           85    34     26      8
9 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7           85    31     23      8
9 months    ki1000304b-SAS-FoodSuppl   INDIA        8+            85    16     12      4
9 months    ki1017093-NIH-Birth        BANGLADESH   3 or less    507    90     81      9
9 months    ki1017093-NIH-Birth        BANGLADESH   4-5          507   217    194     23
9 months    ki1017093-NIH-Birth        BANGLADESH   6-7          507   118    110      8
9 months    ki1017093-NIH-Birth        BANGLADESH   8+           507    82     77      5
9 months    ki1017093b-PROVIDE         BANGLADESH   3 or less    605   111    105      6
9 months    ki1017093b-PROVIDE         BANGLADESH   4-5          605   285    271     14
9 months    ki1017093b-PROVIDE         BANGLADESH   6-7          605   126    122      4
9 months    ki1017093b-PROVIDE         BANGLADESH   8+           605    83     82      1
9 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less    706   102    100      2
9 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5          706   321    309     12
9 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7          706   171    161     10
9 months    ki1017093c-NIH-Crypto      BANGLADESH   8+           706   112    108      4
9 months    ki1148112-LCNI-5           MALAWI       3 or less    657   179    166     13
9 months    ki1148112-LCNI-5           MALAWI       4-5          657   277    255     22
9 months    ki1148112-LCNI-5           MALAWI       6-7          657   147    140      7
9 months    ki1148112-LCNI-5           MALAWI       8+           657    54     50      4
12 months   ki1000108-IRC              INDIA        3 or less    406    58     54      4
12 months   ki1000108-IRC              INDIA        4-5          406   157    142     15
12 months   ki1000108-IRC              INDIA        6-7          406   105     96      9
12 months   ki1000108-IRC              INDIA        8+           406    86     80      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less     92     7      4      3
12 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5           92    36     18     18
12 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7           92    33     21     12
12 months   ki1000304b-SAS-FoodSuppl   INDIA        8+            92    16      8      8
12 months   ki1017093-NIH-Birth        BANGLADESH   3 or less    491    88     79      9
12 months   ki1017093-NIH-Birth        BANGLADESH   4-5          491   206    184     22
12 months   ki1017093-NIH-Birth        BANGLADESH   6-7          491   115    105     10
12 months   ki1017093-NIH-Birth        BANGLADESH   8+           491    82     75      7
12 months   ki1017093b-PROVIDE         BANGLADESH   3 or less    600   110    104      6
12 months   ki1017093b-PROVIDE         BANGLADESH   4-5          600   284    265     19
12 months   ki1017093b-PROVIDE         BANGLADESH   6-7          600   123    116      7
12 months   ki1017093b-PROVIDE         BANGLADESH   8+           600    83     79      4
12 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less    706    98     95      3
12 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5          706   324    304     20
12 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7          706   171    158     13
12 months   ki1017093c-NIH-Crypto      BANGLADESH   8+           706   113    108      5
12 months   ki1148112-LCNI-5           MALAWI       3 or less    621   165    150     15
12 months   ki1148112-LCNI-5           MALAWI       4-5          621   267    233     34
12 months   ki1148112-LCNI-5           MALAWI       6-7          621   141    131     10
12 months   ki1148112-LCNI-5           MALAWI       8+           621    48     41      7
18 months   ki1000108-IRC              INDIA        3 or less    405    57     54      3
18 months   ki1000108-IRC              INDIA        4-5          405   157    144     13
18 months   ki1000108-IRC              INDIA        6-7          405   107     95     12
18 months   ki1000108-IRC              INDIA        8+           405    84     78      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less     84     6      5      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5           84    32     16     16
18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7           84    31     19     12
18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+            84    15      7      8
18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less    463    78     64     14
18 months   ki1017093-NIH-Birth        BANGLADESH   4-5          463   196    151     45
18 months   ki1017093-NIH-Birth        BANGLADESH   6-7          463   109     85     24
18 months   ki1017093-NIH-Birth        BANGLADESH   8+           463    80     62     18
18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less    552    96     85     11
18 months   ki1017093b-PROVIDE         BANGLADESH   4-5          552   257    233     24
18 months   ki1017093b-PROVIDE         BANGLADESH   6-7          552   117    105     12
18 months   ki1017093b-PROVIDE         BANGLADESH   8+           552    82     72     10
18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less    634    89     85      4
18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5          634   292    272     20
18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7          634   151    140     11
18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+           634   102     95      7
18 months   ki1148112-LCNI-5           MALAWI       3 or less    719   192    167     25
18 months   ki1148112-LCNI-5           MALAWI       4-5          719   303    258     45
18 months   ki1148112-LCNI-5           MALAWI       6-7          719   160    142     18
18 months   ki1148112-LCNI-5           MALAWI       8+           719    64     58      6
24 months   ki1000108-IRC              INDIA        3 or less    409    58     54      4
24 months   ki1000108-IRC              INDIA        4-5          409   158    142     16
24 months   ki1000108-IRC              INDIA        6-7          409   107     94     13
24 months   ki1000108-IRC              INDIA        8+           409    86     78      8
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less    429    75     64     11
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5          429   184    140     44
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7          429   100     75     25
24 months   ki1017093-NIH-Birth        BANGLADESH   8+           429    70     57     13
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less    577   105     97      8
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5          577   273    249     24
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7          577   117    108      9
24 months   ki1017093b-PROVIDE         BANGLADESH   8+           577    82     74      8
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less    514    69     63      6
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5          514   232    216     16
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7          514   130    121      9
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+           514    83     79      4
24 months   ki1148112-LCNI-5           MALAWI       3 or less    574   159    143     16
24 months   ki1148112-LCNI-5           MALAWI       4-5          574   237    207     30
24 months   ki1148112-LCNI-5           MALAWI       6-7          574   129    115     14
24 months   ki1148112-LCNI-5           MALAWI       8+           574    49     43      6


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
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2be332e4-47fe-4aee-a5e4-42d19b2da103/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/2be332e4-47fe-4aee-a5e4-42d19b2da103/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/2be332e4-47fe-4aee-a5e4-42d19b2da103/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2be332e4-47fe-4aee-a5e4-42d19b2da103/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1148112-LCNI-5      MALAWI       3 or less            NA                0.0803571   0.0447356   0.1159786
6 months    ki1148112-LCNI-5      MALAWI       4-5                  NA                0.0794118   0.0506543   0.1081692
6 months    ki1148112-LCNI-5      MALAWI       6-7                  NA                0.0714286   0.0339897   0.1088674
6 months    ki1148112-LCNI-5      MALAWI       8+                   NA                0.1000000   0.0296787   0.1703213
9 months    ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                0.1000000   0.0379593   0.1620407
9 months    ki1017093-NIH-Birth   BANGLADESH   4-5                  NA                0.1059908   0.0649938   0.1469878
9 months    ki1017093-NIH-Birth   BANGLADESH   6-7                  NA                0.0677966   0.0223925   0.1132007
9 months    ki1017093-NIH-Birth   BANGLADESH   8+                   NA                0.0609756   0.0091331   0.1128182
12 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                0.1022727   0.0389001   0.1656453
12 months   ki1017093-NIH-Birth   BANGLADESH   4-5                  NA                0.1067961   0.0645769   0.1490153
12 months   ki1017093-NIH-Birth   BANGLADESH   6-7                  NA                0.0869565   0.0354053   0.1385077
12 months   ki1017093-NIH-Birth   BANGLADESH   8+                   NA                0.0853659   0.0248248   0.1459069
12 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                0.0909091   0.0470092   0.1348090
12 months   ki1148112-LCNI-5      MALAWI       4-5                  NA                0.1273408   0.0873235   0.1673582
12 months   ki1148112-LCNI-5      MALAWI       6-7                  NA                0.0709220   0.0285182   0.1133258
12 months   ki1148112-LCNI-5      MALAWI       8+                   NA                0.1458333   0.0459076   0.2457590
18 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                0.1794872   0.0942302   0.2647441
18 months   ki1017093-NIH-Birth   BANGLADESH   4-5                  NA                0.2295918   0.1706494   0.2885343
18 months   ki1017093-NIH-Birth   BANGLADESH   6-7                  NA                0.2201835   0.1423094   0.2980576
18 months   ki1017093-NIH-Birth   BANGLADESH   8+                   NA                0.2250000   0.1333959   0.3166041
18 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                0.1145833   0.0508098   0.1783569
18 months   ki1017093b-PROVIDE    BANGLADESH   4-5                  NA                0.0933852   0.0577790   0.1289914
18 months   ki1017093b-PROVIDE    BANGLADESH   6-7                  NA                0.1025641   0.0475406   0.1575876
18 months   ki1017093b-PROVIDE    BANGLADESH   8+                   NA                0.1219512   0.0510608   0.1928416
18 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                0.1302083   0.0825733   0.1778434
18 months   ki1148112-LCNI-5      MALAWI       4-5                  NA                0.1485149   0.1084464   0.1885833
18 months   ki1148112-LCNI-5      MALAWI       6-7                  NA                0.1125000   0.0635051   0.1614949
18 months   ki1148112-LCNI-5      MALAWI       8+                   NA                0.0937500   0.0222889   0.1652112
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                0.1466667   0.0665082   0.2268251
24 months   ki1017093-NIH-Birth   BANGLADESH   4-5                  NA                0.2391304   0.1774257   0.3008352
24 months   ki1017093-NIH-Birth   BANGLADESH   6-7                  NA                0.2500000   0.1650320   0.3349680
24 months   ki1017093-NIH-Birth   BANGLADESH   8+                   NA                0.1857143   0.0945097   0.2769189
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                0.0761905   0.0254012   0.1269797
24 months   ki1017093b-PROVIDE    BANGLADESH   4-5                  NA                0.0879121   0.0542930   0.1215312
24 months   ki1017093b-PROVIDE    BANGLADESH   6-7                  NA                0.0769231   0.0285973   0.1252489
24 months   ki1017093b-PROVIDE    BANGLADESH   8+                   NA                0.0975610   0.0332826   0.1618393
24 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                0.1006289   0.0538275   0.1474304
24 months   ki1148112-LCNI-5      MALAWI       4-5                  NA                0.1265823   0.0842131   0.1689515
24 months   ki1148112-LCNI-5      MALAWI       6-7                  NA                0.1085271   0.0548048   0.1622495
24 months   ki1148112-LCNI-5      MALAWI       8+                   NA                0.1224490   0.0305856   0.2143124


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.0796569   0.0791677   0.0801460
9 months    ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0887574   0.0870664   0.0904484
12 months   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0977597   0.0969155   0.0986038
12 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.1062802   0.1042606   0.1082997
18 months   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.2181425   0.2165208   0.2197643
18 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1032609   0.1023474   0.1041744
18 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.1307371   0.1294103   0.1320640
24 months   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.2167832   0.2131282   0.2204382
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0849220   0.0843231   0.0855209
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.1149826   0.1140608   0.1159044


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
6 months    ki1148112-LCNI-5      MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5      MALAWI       4-5                  3 or less         0.9882353   0.5575312   1.751667
6 months    ki1148112-LCNI-5      MALAWI       6-7                  3 or less         0.8888889   0.4474248   1.765936
6 months    ki1148112-LCNI-5      MALAWI       8+                   3 or less         1.2444444   0.5419491   2.857541
9 months    ki1017093-NIH-Birth   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
9 months    ki1017093-NIH-Birth   BANGLADESH   4-5                  3 or less         1.0599078   0.5102140   2.201830
9 months    ki1017093-NIH-Birth   BANGLADESH   6-7                  3 or less         0.6779661   0.2721029   1.689207
9 months    ki1017093-NIH-Birth   BANGLADESH   8+                   3 or less         0.6097561   0.2128419   1.746848
12 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1017093-NIH-Birth   BANGLADESH   4-5                  3 or less         1.0442287   0.5007082   2.177742
12 months   ki1017093-NIH-Birth   BANGLADESH   6-7                  3 or less         0.8502415   0.3606676   2.004368
12 months   ki1017093-NIH-Birth   BANGLADESH   8+                   3 or less         0.8346883   0.3254786   2.140554
12 months   ki1148112-LCNI-5      MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1148112-LCNI-5      MALAWI       4-5                  3 or less         1.4007491   0.7873038   2.492174
12 months   ki1148112-LCNI-5      MALAWI       6-7                  3 or less         0.7801418   0.3617402   1.682482
12 months   ki1148112-LCNI-5      MALAWI       8+                   3 or less         1.6041667   0.6937347   3.709416
18 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1017093-NIH-Birth   BANGLADESH   4-5                  3 or less         1.2791545   0.7454688   2.194909
18 months   ki1017093-NIH-Birth   BANGLADESH   6-7                  3 or less         1.2267366   0.6785105   2.217921
18 months   ki1017093-NIH-Birth   BANGLADESH   8+                   3 or less         1.2535714   0.6705825   2.343398
18 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1017093b-PROVIDE    BANGLADESH   4-5                  3 or less         0.8149982   0.4151088   1.600116
18 months   ki1017093b-PROVIDE    BANGLADESH   6-7                  3 or less         0.8951049   0.4131903   1.939089
18 months   ki1017093b-PROVIDE    BANGLADESH   8+                   3 or less         1.0643016   0.4759382   2.380010
18 months   ki1148112-LCNI-5      MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1148112-LCNI-5      MALAWI       4-5                  3 or less         1.1405941   0.7239653   1.796985
18 months   ki1148112-LCNI-5      MALAWI       6-7                  3 or less         0.8640000   0.4892125   1.525914
18 months   ki1148112-LCNI-5      MALAWI       8+                   3 or less         0.7200000   0.3091276   1.676978
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth   BANGLADESH   4-5                  3 or less         1.6304348   0.8908845   2.983908
24 months   ki1017093-NIH-Birth   BANGLADESH   6-7                  3 or less         1.7045455   0.8955693   3.244277
24 months   ki1017093-NIH-Birth   BANGLADESH   8+                   3 or less         1.2662338   0.6073080   2.640090
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   4-5                  3 or less         1.1538462   0.5350416   2.488332
24 months   ki1017093b-PROVIDE    BANGLADESH   6-7                  3 or less         1.0096154   0.4039656   2.523292
24 months   ki1017093b-PROVIDE    BANGLADESH   8+                   3 or less         1.2804878   0.5015670   3.269053
24 months   ki1148112-LCNI-5      MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5      MALAWI       4-5                  3 or less         1.2579114   0.7092413   2.231034
24 months   ki1148112-LCNI-5      MALAWI       6-7                  3 or less         1.0784884   0.5468044   2.127154
24 months   ki1148112-LCNI-5      MALAWI       8+                   3 or less         1.2168367   0.5033692   2.941562


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1148112-LCNI-5      MALAWI       3 or less            NA                -0.0007003   -0.0363251   0.0349246
9 months    ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                -0.0112426   -0.0733064   0.0508212
12 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                -0.0045131   -0.0678913   0.0588652
12 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                 0.0153711   -0.0285752   0.0593174
18 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                 0.0386554   -0.0466170   0.1239277
18 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                -0.0113225   -0.0751026   0.0524577
18 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                 0.0005288   -0.0471247   0.0481823
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                 0.0701166   -0.0101252   0.1503583
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                 0.0087315   -0.0420612   0.0595243
24 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                 0.0143536   -0.0324569   0.0611641


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1148112-LCNI-5      MALAWI       3 or less            NA                -0.0087912   -0.5715857   0.3524631
9 months    ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                -0.1266667   -1.0958581   0.3943398
12 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                -0.0461648   -0.9441684   0.4370546
12 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                 0.1446281   -0.3868757   0.4724393
18 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                 0.1772023   -0.3231511   0.4883457
18 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                -0.1096491   -0.9361154   0.3640249
18 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                 0.0040448   -0.4360913   0.3092871
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                 0.3234409   -0.1688957   0.6084062
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                 0.1028183   -0.7474353   0.5393620
24 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                 0.1248332   -0.3934984   0.4503640
