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

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/cd909df2-5897-45e3-b8e0-73cff7cf1726/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cd909df2-5897-45e3-b8e0-73cff7cf1726/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/cd909df2-5897-45e3-b8e0-73cff7cf1726/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cd909df2-5897-45e3-b8e0-73cff7cf1726/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n    nA   nAY0   nAY1
----------  -------------------------  --------  -----  ----  -----  -----
Birth       ki0047075b-MAL-ED          <=24        607    11     11      0
Birth       ki0047075b-MAL-ED          (24-28]     607    54     53      1
Birth       ki0047075b-MAL-ED          (28-32]     607   111    106      5
Birth       ki0047075b-MAL-ED          >32         607   431    422      9
Birth       ki1000304b-SAS-FoodSuppl   <=24          0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (24-28]       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (28-32]       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   >32           0     0      0      0
Birth       ki1135781-COHORTS          <=24       3334   869    854     15
Birth       ki1135781-COHORTS          (24-28]    3334   829    820      9
Birth       ki1135781-COHORTS          (28-32]    3334   700    691      9
Birth       ki1135781-COHORTS          >32        3334   936    921     15
Birth       ki1148112-LCNI-5           <=24          0     0      0      0
Birth       ki1148112-LCNI-5           (24-28]       0     0      0      0
Birth       ki1148112-LCNI-5           (28-32]       0     0      0      0
Birth       ki1148112-LCNI-5           >32           0     0      0      0
3 months    ki0047075b-MAL-ED          <=24        744    14     14      0
3 months    ki0047075b-MAL-ED          (24-28]     744    63     62      1
3 months    ki0047075b-MAL-ED          (28-32]     744   143    135      8
3 months    ki0047075b-MAL-ED          >32         744   524    514     10
3 months    ki1000304b-SAS-FoodSuppl   <=24         97    17     15      2
3 months    ki1000304b-SAS-FoodSuppl   (24-28]      97    27     24      3
3 months    ki1000304b-SAS-FoodSuppl   (28-32]      97    24     20      4
3 months    ki1000304b-SAS-FoodSuppl   >32          97    29     25      4
3 months    ki1135781-COHORTS          <=24       3240   820    795     25
3 months    ki1135781-COHORTS          (24-28]    3240   795    774     21
3 months    ki1135781-COHORTS          (28-32]    3240   678    665     13
3 months    ki1135781-COHORTS          >32        3240   947    892     55
3 months    ki1148112-LCNI-5           <=24          0     0      0      0
3 months    ki1148112-LCNI-5           (24-28]       0     0      0      0
3 months    ki1148112-LCNI-5           (28-32]       0     0      0      0
3 months    ki1148112-LCNI-5           >32           0     0      0      0
6 months    ki0047075b-MAL-ED          <=24        741    14     14      0
6 months    ki0047075b-MAL-ED          (24-28]     741    62     60      2
6 months    ki0047075b-MAL-ED          (28-32]     741   143    137      6
6 months    ki0047075b-MAL-ED          >32         741   522    509     13
6 months    ki1000304b-SAS-FoodSuppl   <=24         96    18     17      1
6 months    ki1000304b-SAS-FoodSuppl   (24-28]      96    24     20      4
6 months    ki1000304b-SAS-FoodSuppl   (28-32]      96    26     19      7
6 months    ki1000304b-SAS-FoodSuppl   >32          96    28     25      3
6 months    ki1135781-COHORTS          <=24       3069   781    742     39
6 months    ki1135781-COHORTS          (24-28]    3069   742    713     29
6 months    ki1135781-COHORTS          (28-32]    3069   641    603     38
6 months    ki1135781-COHORTS          >32        3069   905    815     90
6 months    ki1148112-LCNI-5           <=24         47     7      6      1
6 months    ki1148112-LCNI-5           (24-28]      47    11     10      1
6 months    ki1148112-LCNI-5           (28-32]      47    10     10      0
6 months    ki1148112-LCNI-5           >32          47    19     18      1
9 months    ki0047075b-MAL-ED          <=24        738    14     13      1
9 months    ki0047075b-MAL-ED          (24-28]     738    62     58      4
9 months    ki0047075b-MAL-ED          (28-32]     738   142    133      9
9 months    ki0047075b-MAL-ED          >32         738   520    500     20
9 months    ki1000304b-SAS-FoodSuppl   <=24         85    18     12      6
9 months    ki1000304b-SAS-FoodSuppl   (24-28]      85    23     18      5
9 months    ki1000304b-SAS-FoodSuppl   (28-32]      85    19     13      6
9 months    ki1000304b-SAS-FoodSuppl   >32          85    25     22      3
9 months    ki1135781-COHORTS          <=24       3063   782    720     62
9 months    ki1135781-COHORTS          (24-28]    3063   751    696     55
9 months    ki1135781-COHORTS          (28-32]    3063   638    581     57
9 months    ki1135781-COHORTS          >32        3063   892    765    127
9 months    ki1148112-LCNI-5           <=24         37     6      6      0
9 months    ki1148112-LCNI-5           (24-28]      37     7      6      1
9 months    ki1148112-LCNI-5           (28-32]      37     8      8      0
9 months    ki1148112-LCNI-5           >32          37    16     14      2
12 months   ki0047075b-MAL-ED          <=24        739    14     12      2
12 months   ki0047075b-MAL-ED          (24-28]     739    62     57      5
12 months   ki0047075b-MAL-ED          (28-32]     739   141    128     13
12 months   ki0047075b-MAL-ED          >32         739   522    492     30
12 months   ki1000304b-SAS-FoodSuppl   <=24         92    17      7     10
12 months   ki1000304b-SAS-FoodSuppl   (24-28]      92    25     13     12
12 months   ki1000304b-SAS-FoodSuppl   (28-32]      92    22     13      9
12 months   ki1000304b-SAS-FoodSuppl   >32          92    28     18     10
12 months   ki1135781-COHORTS          <=24       3016   757    655    102
12 months   ki1135781-COHORTS          (24-28]    3016   740    626    114
12 months   ki1135781-COHORTS          (28-32]    3016   626    529     97
12 months   ki1135781-COHORTS          >32        3016   893    699    194
12 months   ki1148112-LCNI-5           <=24         38     6      6      0
12 months   ki1148112-LCNI-5           (24-28]      38     9      7      2
12 months   ki1148112-LCNI-5           (28-32]      38     8      6      2
12 months   ki1148112-LCNI-5           >32          38    15     13      2
18 months   ki0047075b-MAL-ED          <=24        738    14     12      2
18 months   ki0047075b-MAL-ED          (24-28]     738    61     53      8
18 months   ki0047075b-MAL-ED          (28-32]     738   141    118     23
18 months   ki0047075b-MAL-ED          >32         738   522    460     62
18 months   ki1000304b-SAS-FoodSuppl   <=24         84    16      8      8
18 months   ki1000304b-SAS-FoodSuppl   (24-28]      84    24     14     10
18 months   ki1000304b-SAS-FoodSuppl   (28-32]      84    22     13      9
18 months   ki1000304b-SAS-FoodSuppl   >32          84    22     12     10
18 months   ki1135781-COHORTS          <=24       2833   718    532    186
18 months   ki1135781-COHORTS          (24-28]    2833   704    513    191
18 months   ki1135781-COHORTS          (28-32]    2833   592    422    170
18 months   ki1135781-COHORTS          >32        2833   819    550    269
18 months   ki1148112-LCNI-5           <=24         43     6      6      0
18 months   ki1148112-LCNI-5           (24-28]      43    10      9      1
18 months   ki1148112-LCNI-5           (28-32]      43    10      8      2
18 months   ki1148112-LCNI-5           >32          43    17     15      2
24 months   ki0047075b-MAL-ED          <=24        738    14     12      2
24 months   ki0047075b-MAL-ED          (24-28]     738    61     53      8
24 months   ki0047075b-MAL-ED          (28-32]     738   142    121     21
24 months   ki0047075b-MAL-ED          >32         738   521    458     63
24 months   ki1000304b-SAS-FoodSuppl   <=24          0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (24-28]       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (28-32]       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >32           0     0      0      0
24 months   ki1135781-COHORTS          <=24       2866   730    519    211
24 months   ki1135781-COHORTS          (24-28]    2866   700    490    210
24 months   ki1135781-COHORTS          (28-32]    2866   586    397    189
24 months   ki1135781-COHORTS          >32        2866   850    542    308
24 months   ki1148112-LCNI-5           <=24         34     5      5      0
24 months   ki1148112-LCNI-5           (24-28]      34     8      7      1
24 months   ki1148112-LCNI-5           (28-32]      34     8      6      2
24 months   ki1148112-LCNI-5           >32          34    13     12      1

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          <=24                 NA                0.0172612   0.0086004   0.0259220
Birth       ki1135781-COHORTS          (24-28]              NA                0.0108565   0.0038012   0.0179117
Birth       ki1135781-COHORTS          (28-32]              NA                0.0128571   0.0045102   0.0212041
Birth       ki1135781-COHORTS          >32                  NA                0.0160256   0.0079797   0.0240715
3 months    ki1135781-COHORTS          <=24                 NA                0.0304878   0.0187186   0.0422570
3 months    ki1135781-COHORTS          (24-28]              NA                0.0264151   0.0152659   0.0375643
3 months    ki1135781-COHORTS          (28-32]              NA                0.0191740   0.0088499   0.0294982
3 months    ki1135781-COHORTS          >32                  NA                0.0580781   0.0431793   0.0729770
6 months    ki1135781-COHORTS          <=24                 NA                0.0499360   0.0346576   0.0652143
6 months    ki1135781-COHORTS          (24-28]              NA                0.0390836   0.0251373   0.0530298
6 months    ki1135781-COHORTS          (28-32]              NA                0.0592824   0.0409979   0.0775668
6 months    ki1135781-COHORTS          >32                  NA                0.0994475   0.0799470   0.1189480
9 months    ki1135781-COHORTS          <=24                 NA                0.0792839   0.0603443   0.0982235
9 months    ki1135781-COHORTS          (24-28]              NA                0.0732357   0.0546000   0.0918714
9 months    ki1135781-COHORTS          (28-32]              NA                0.0893417   0.0672050   0.1114784
9 months    ki1135781-COHORTS          >32                  NA                0.1423767   0.1194414   0.1653120
12 months   ki1000304b-SAS-FoodSuppl   <=24                 NA                0.5882353   0.3530030   0.8234676
12 months   ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.4800000   0.2830874   0.6769126
12 months   ki1000304b-SAS-FoodSuppl   (28-32]              NA                0.4090909   0.2025147   0.6156671
12 months   ki1000304b-SAS-FoodSuppl   >32                  NA                0.3571429   0.1786912   0.5355945
12 months   ki1135781-COHORTS          <=24                 NA                0.1347424   0.1104149   0.1590699
12 months   ki1135781-COHORTS          (24-28]              NA                0.1540541   0.1280398   0.1800684
12 months   ki1135781-COHORTS          (28-32]              NA                0.1549521   0.1266008   0.1833033
12 months   ki1135781-COHORTS          >32                  NA                0.2172452   0.1901943   0.2442962
18 months   ki1000304b-SAS-FoodSuppl   <=24                 NA                0.5000000   0.2535330   0.7464670
18 months   ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.4166667   0.2182419   0.6150914
18 months   ki1000304b-SAS-FoodSuppl   (28-32]              NA                0.4090909   0.2024066   0.6157753
18 months   ki1000304b-SAS-FoodSuppl   >32                  NA                0.4545455   0.2452281   0.6638628
18 months   ki1135781-COHORTS          <=24                 NA                0.2590529   0.2270013   0.2911046
18 months   ki1135781-COHORTS          (24-28]              NA                0.2713068   0.2384564   0.3041573
18 months   ki1135781-COHORTS          (28-32]              NA                0.2871622   0.2507100   0.3236143
18 months   ki1135781-COHORTS          >32                  NA                0.3284493   0.2962789   0.3606197
24 months   ki1135781-COHORTS          <=24                 NA                0.2890411   0.2561510   0.3219311
24 months   ki1135781-COHORTS          (24-28]              NA                0.3000000   0.2660465   0.3339535
24 months   ki1135781-COHORTS          (28-32]              NA                0.3225256   0.2846723   0.3603789
24 months   ki1135781-COHORTS          >32                  NA                0.3623529   0.3300330   0.3946729


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          NA                   NA                0.0143971   0.0143106   0.0144837
3 months    ki1135781-COHORTS          NA                   NA                0.0351852   0.0346614   0.0357089
6 months    ki1135781-COHORTS          NA                   NA                0.0638645   0.0630155   0.0647134
9 months    ki1135781-COHORTS          NA                   NA                0.0982697   0.0972500   0.0992894
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4456522   0.4287331   0.4625713
12 months   ki1135781-COHORTS          NA                   NA                0.1681034   0.1669311   0.1692758
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4404762   0.4331912   0.4477612
18 months   ki1135781-COHORTS          NA                   NA                0.2880339   0.2870221   0.2890457
24 months   ki1135781-COHORTS          NA                   NA                0.3203070   0.3192239   0.3213902


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS          (24-28]              <=24              0.6289505   0.2767273   1.429489
Birth       ki1135781-COHORTS          (28-32]              <=24              0.7448571   0.3278948   1.692043
Birth       ki1135781-COHORTS          >32                  <=24              0.9284188   0.4565414   1.888025
3 months    ki1135781-COHORTS          (24-28]              <=24              0.8664151   0.4890071   1.535101
3 months    ki1135781-COHORTS          (28-32]              <=24              0.6289086   0.3242323   1.219884
3 months    ki1135781-COHORTS          >32                  <=24              1.9049630   1.1983756   3.028169
6 months    ki1135781-COHORTS          (24-28]              <=24              0.7826735   0.4891523   1.252325
6 months    ki1135781-COHORTS          (28-32]              <=24              1.1871675   0.7688404   1.833107
6 months    ki1135781-COHORTS          >32                  <=24              1.9915002   1.3847028   2.864205
9 months    ki1135781-COHORTS          (24-28]              <=24              0.9237146   0.6515679   1.309531
9 months    ki1135781-COHORTS          (28-32]              <=24              1.1268581   0.7987204   1.589804
9 months    ki1135781-COHORTS          >32                  <=24              1.7957833   1.3462437   2.395434
12 months   ki1000304b-SAS-FoodSuppl   (24-28]              <=24              0.8160000   0.4601348   1.447089
12 months   ki1000304b-SAS-FoodSuppl   (28-32]              <=24              0.6954545   0.3651962   1.324376
12 months   ki1000304b-SAS-FoodSuppl   >32                  <=24              0.6071429   0.3201467   1.151417
12 months   ki1135781-COHORTS          (24-28]              <=24              1.1433227   0.8929082   1.463966
12 months   ki1135781-COHORTS          (28-32]              <=24              1.1499875   0.8893191   1.487060
12 months   ki1135781-COHORTS          >32                  <=24              1.6123005   1.2947785   2.007689
18 months   ki1000304b-SAS-FoodSuppl   (24-28]              <=24              0.8333333   0.4199085   1.653799
18 months   ki1000304b-SAS-FoodSuppl   (28-32]              <=24              0.8181818   0.4039228   1.657301
18 months   ki1000304b-SAS-FoodSuppl   >32                  <=24              0.9090909   0.4630693   1.784714
18 months   ki1135781-COHORTS          (24-28]              <=24              1.0473027   0.8808236   1.245247
18 months   ki1135781-COHORTS          (28-32]              <=24              1.1085077   0.9284423   1.323496
18 months   ki1135781-COHORTS          >32                  <=24              1.2678850   1.0827971   1.484611
24 months   ki1135781-COHORTS          (24-28]              <=24              1.0379147   0.8840179   1.218603
24 months   ki1135781-COHORTS          (28-32]              <=24              1.1158469   0.9475671   1.314012
24 months   ki1135781-COHORTS          >32                  <=24              1.2536381   1.0848786   1.448649


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          <=24                 NA                -0.0028641   -0.0115253   0.0057971
3 months    ki1135781-COHORTS          <=24                 NA                 0.0046974   -0.0070835   0.0164783
6 months    ki1135781-COHORTS          <=24                 NA                 0.0139285   -0.0013734   0.0292304
9 months    ki1135781-COHORTS          <=24                 NA                 0.0189858    0.0000187   0.0379528
12 months   ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.1425831   -0.3784231   0.0932568
12 months   ki1135781-COHORTS          <=24                 NA                 0.0333610    0.0090053   0.0577167
18 months   ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.0595238   -0.3060984   0.1870508
18 months   ki1135781-COHORTS          <=24                 NA                 0.0289810   -0.0030867   0.0610486
24 months   ki1135781-COHORTS          <=24                 NA                 0.0312660   -0.0016419   0.0641738


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          <=24                 NA                -0.1989356   -0.9802424   0.2741058
3 months    ki1135781-COHORTS          <=24                 NA                 0.1335045   -0.2750930   0.4111689
6 months    ki1135781-COHORTS          <=24                 NA                 0.2180943   -0.0620769   0.4243576
9 months    ki1135781-COHORTS          <=24                 NA                 0.1932008   -0.0247290   0.3647834
12 months   ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.3199426   -0.9724595   0.1167127
12 months   ki1135781-COHORTS          <=24                 NA                 0.1984554    0.0397216   0.3309506
18 months   ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.1351351   -0.8588593   0.3068158
18 months   ki1135781-COHORTS          <=24                 NA                 0.1006165   -0.0178885   0.2053249
24 months   ki1135781-COHORTS          <=24                 NA                 0.0976124   -0.0111914   0.1947090


