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
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1148112-LCNI-5

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/05c5228e-b551-400c-a16f-3605cce7bfb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/05c5228e-b551-400c-a16f-3605cce7bfb0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/05c5228e-b551-400c-a16f-3605cce7bfb0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/05c5228e-b551-400c-a16f-3605cce7bfb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A              n    nA   nAY0   nAY1
----------  -------------------------  ----------  ----  ----  -----  -----
3 months    ki1000108-IRC              3 or less    410    58     44     14
3 months    ki1000108-IRC              4-5          410   158    103     55
3 months    ki1000108-IRC              6-7          410   107     73     34
3 months    ki1000108-IRC              8+           410    87     60     27
3 months    ki1000304b-SAS-FoodSuppl   3 or less      0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   4-5            0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   6-7            0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   8+             0     0      0      0
3 months    ki1017093-NIH-Birth        3 or less    629   117     93     24
3 months    ki1017093-NIH-Birth        4-5          629   264    200     64
3 months    ki1017093-NIH-Birth        6-7          629   142    113     29
3 months    ki1017093-NIH-Birth        8+           629   106     83     23
3 months    ki1017093b-PROVIDE         3 or less    175    32     24      8
3 months    ki1017093b-PROVIDE         4-5          175    86     64     22
3 months    ki1017093b-PROVIDE         6-7          175    37     26     11
3 months    ki1017093b-PROVIDE         8+           175    20     17      3
3 months    ki1017093c-NIH-Crypto      3 or less    758   114     91     23
3 months    ki1017093c-NIH-Crypto      4-5          758   342    291     51
3 months    ki1017093c-NIH-Crypto      6-7          758   178    150     28
3 months    ki1017093c-NIH-Crypto      8+           758   124    105     19
3 months    ki1148112-LCNI-5           3 or less      0     0      0      0
3 months    ki1148112-LCNI-5           4-5            0     0      0      0
3 months    ki1148112-LCNI-5           6-7            0     0      0      0
3 months    ki1148112-LCNI-5           8+             0     0      0      0
6 months    ki1000108-IRC              3 or less    408    58     36     22
6 months    ki1000108-IRC              4-5          408   158     83     75
6 months    ki1000108-IRC              6-7          408   105     64     41
6 months    ki1000108-IRC              8+           408    87     52     35
6 months    ki1000304b-SAS-FoodSuppl   3 or less    105     9      5      4
6 months    ki1000304b-SAS-FoodSuppl   4-5          105    41     23     18
6 months    ki1000304b-SAS-FoodSuppl   6-7          105    36     22     14
6 months    ki1000304b-SAS-FoodSuppl   8+           105    19     12      7
6 months    ki1017093-NIH-Birth        3 or less    551   100     64     36
6 months    ki1017093-NIH-Birth        4-5          551   236    145     91
6 months    ki1017093-NIH-Birth        6-7          551   122     74     48
6 months    ki1017093-NIH-Birth        8+           551    93     67     26
6 months    ki1017093b-PROVIDE         3 or less    166    28     20      8
6 months    ki1017093b-PROVIDE         4-5          166    82     57     25
6 months    ki1017093b-PROVIDE         6-7          166    36     26     10
6 months    ki1017093b-PROVIDE         8+           166    20     15      5
6 months    ki1017093c-NIH-Crypto      3 or less    736   110     72     38
6 months    ki1017093c-NIH-Crypto      4-5          736   331    233     98
6 months    ki1017093c-NIH-Crypto      6-7          736   174    126     48
6 months    ki1017093c-NIH-Crypto      8+           736   121     79     42
6 months    ki1148112-LCNI-5           3 or less    132    34     25      9
6 months    ki1148112-LCNI-5           4-5          132    60     35     25
6 months    ki1148112-LCNI-5           6-7          132    29     16     13
6 months    ki1148112-LCNI-5           8+           132     9      5      4
12 months   ki1000108-IRC              3 or less    408    58     31     27
12 months   ki1000108-IRC              4-5          408   158     73     85
12 months   ki1000108-IRC              6-7          408   106     51     55
12 months   ki1000108-IRC              8+           408    86     46     40
12 months   ki1000304b-SAS-FoodSuppl   3 or less     99     8      3      5
12 months   ki1000304b-SAS-FoodSuppl   4-5           99    38      4     34
12 months   ki1000304b-SAS-FoodSuppl   6-7           99    35      8     27
12 months   ki1000304b-SAS-FoodSuppl   8+            99    18      0     18
12 months   ki1017093-NIH-Birth        3 or less    541    95     56     39
12 months   ki1017093-NIH-Birth        4-5          541   230    102    128
12 months   ki1017093-NIH-Birth        6-7          541   129     56     73
12 months   ki1017093-NIH-Birth        8+           541    87     51     36
12 months   ki1017093b-PROVIDE         3 or less    159    26     17      9
12 months   ki1017093b-PROVIDE         4-5          159    78     51     27
12 months   ki1017093b-PROVIDE         6-7          159    35     20     15
12 months   ki1017093b-PROVIDE         8+           159    20     15      5
12 months   ki1017093c-NIH-Crypto      3 or less    729   106     63     43
12 months   ki1017093c-NIH-Crypto      4-5          729   330    206    124
12 months   ki1017093c-NIH-Crypto      6-7          729   176    116     60
12 months   ki1017093c-NIH-Crypto      8+           729   117     67     50
12 months   ki1148112-LCNI-5           3 or less    392   114     62     52
12 months   ki1148112-LCNI-5           4-5          392   161     83     78
12 months   ki1148112-LCNI-5           6-7          392    88     43     45
12 months   ki1148112-LCNI-5           8+           392    29     15     14
18 months   ki1000108-IRC              3 or less    409    58     29     29
18 months   ki1000108-IRC              4-5          409   158     66     92
18 months   ki1000108-IRC              6-7          409   107     47     60
18 months   ki1000108-IRC              8+           409    86     37     49
18 months   ki1000304b-SAS-FoodSuppl   3 or less     93     7      1      6
18 months   ki1000304b-SAS-FoodSuppl   4-5           93    36      3     33
18 months   ki1000304b-SAS-FoodSuppl   6-7           93    34      6     28
18 months   ki1000304b-SAS-FoodSuppl   8+            93    16      0     16
18 months   ki1017093-NIH-Birth        3 or less    497    89     37     52
18 months   ki1017093-NIH-Birth        4-5          497   207     58    149
18 months   ki1017093-NIH-Birth        6-7          497   117     39     78
18 months   ki1017093-NIH-Birth        8+           497    84     40     44
18 months   ki1017093b-PROVIDE         3 or less    155    25     14     11
18 months   ki1017093b-PROVIDE         4-5          155    78     40     38
18 months   ki1017093b-PROVIDE         6-7          155    32     18     14
18 months   ki1017093b-PROVIDE         8+           155    20     13      7
18 months   ki1017093c-NIH-Crypto      3 or less    715   101     56     45
18 months   ki1017093c-NIH-Crypto      4-5          715   325    178    147
18 months   ki1017093c-NIH-Crypto      6-7          715   173    103     70
18 months   ki1017093c-NIH-Crypto      8+           715   116     61     55
18 months   ki1148112-LCNI-5           3 or less    325    92     47     45
18 months   ki1148112-LCNI-5           4-5          325   137     54     83
18 months   ki1148112-LCNI-5           6-7          325    75     30     45
18 months   ki1148112-LCNI-5           8+           325    21      9     12
24 months   ki1000108-IRC              3 or less    410    58     25     33
24 months   ki1000108-IRC              4-5          410   158     52    106
24 months   ki1000108-IRC              6-7          410   107     41     66
24 months   ki1000108-IRC              8+           410    87     29     58
24 months   ki1000304b-SAS-FoodSuppl   3 or less      9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   4-5            9     2      0      2
24 months   ki1000304b-SAS-FoodSuppl   6-7            9     5      1      4
24 months   ki1000304b-SAS-FoodSuppl   8+             9     1      0      1
24 months   ki1017093-NIH-Birth        3 or less    470    83     24     59
24 months   ki1017093-NIH-Birth        4-5          470   198     41    157
24 months   ki1017093-NIH-Birth        6-7          470   109     21     88
24 months   ki1017093-NIH-Birth        8+           470    80     29     51
24 months   ki1017093b-PROVIDE         3 or less    148    23     10     13
24 months   ki1017093b-PROVIDE         4-5          148    76     37     39
24 months   ki1017093b-PROVIDE         6-7          148    29     17     12
24 months   ki1017093b-PROVIDE         8+           148    20     12      8
24 months   ki1017093c-NIH-Crypto      3 or less    634    89     44     45
24 months   ki1017093c-NIH-Crypto      4-5          634   292    139    153
24 months   ki1017093c-NIH-Crypto      6-7          634   150     81     69
24 months   ki1017093c-NIH-Crypto      8+           634   103     52     51
24 months   ki1148112-LCNI-5           3 or less    351   104     37     67
24 months   ki1148112-LCNI-5           4-5          351   144     48     96
24 months   ki1148112-LCNI-5           6-7          351    78     24     54
24 months   ki1148112-LCNI-5           8+           351    25     12     13

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           3 or less            NA                0.2413793   0.1311171   0.3516415
3 months    ki1000108-IRC           4-5                  NA                0.3481013   0.2737321   0.4224704
3 months    ki1000108-IRC           6-7                  NA                0.3177570   0.2294280   0.4060861
3 months    ki1000108-IRC           8+                   NA                0.3103448   0.2130125   0.4076771
3 months    ki1017093-NIH-Birth     3 or less            NA                0.2051282   0.1319028   0.2783536
3 months    ki1017093-NIH-Birth     4-5                  NA                0.2424242   0.1906883   0.2941602
3 months    ki1017093-NIH-Birth     6-7                  NA                0.2042254   0.1378664   0.2705843
3 months    ki1017093-NIH-Birth     8+                   NA                0.2169811   0.1384507   0.2955115
3 months    ki1017093c-NIH-Crypto   3 or less            NA                0.2017544   0.1280383   0.2754704
3 months    ki1017093c-NIH-Crypto   4-5                  NA                0.1491228   0.1113458   0.1868998
3 months    ki1017093c-NIH-Crypto   6-7                  NA                0.1573034   0.1037817   0.2108250
3 months    ki1017093c-NIH-Crypto   8+                   NA                0.1532258   0.0897843   0.2166673
6 months    ki1000108-IRC           3 or less            NA                0.3793103   0.2542840   0.5043367
6 months    ki1000108-IRC           4-5                  NA                0.4746835   0.3967248   0.5526423
6 months    ki1000108-IRC           6-7                  NA                0.3904762   0.2970478   0.4839046
6 months    ki1000108-IRC           8+                   NA                0.4022989   0.2991326   0.5054651
6 months    ki1017093-NIH-Birth     3 or less            NA                0.3600000   0.2658362   0.4541638
6 months    ki1017093-NIH-Birth     4-5                  NA                0.3855932   0.3234378   0.4477487
6 months    ki1017093-NIH-Birth     6-7                  NA                0.3934426   0.3066787   0.4802066
6 months    ki1017093-NIH-Birth     8+                   NA                0.2795699   0.1882759   0.3708639
6 months    ki1017093b-PROVIDE      3 or less            NA                0.2857143   0.1178791   0.4535495
6 months    ki1017093b-PROVIDE      4-5                  NA                0.3048780   0.2049363   0.4048198
6 months    ki1017093b-PROVIDE      6-7                  NA                0.2777778   0.1310227   0.4245328
6 months    ki1017093b-PROVIDE      8+                   NA                0.2500000   0.0596531   0.4403469
6 months    ki1017093c-NIH-Crypto   3 or less            NA                0.3454545   0.2565319   0.4343772
6 months    ki1017093c-NIH-Crypto   4-5                  NA                0.2960725   0.2468581   0.3452869
6 months    ki1017093c-NIH-Crypto   6-7                  NA                0.2758621   0.2094074   0.3423167
6 months    ki1017093c-NIH-Crypto   8+                   NA                0.3471074   0.2622278   0.4319871
12 months   ki1000108-IRC           3 or less            NA                0.4655172   0.3369881   0.5940464
12 months   ki1000108-IRC           4-5                  NA                0.5379747   0.4601412   0.6158081
12 months   ki1000108-IRC           6-7                  NA                0.5188679   0.4236347   0.6141012
12 months   ki1000108-IRC           8+                   NA                0.4651163   0.3595702   0.5706624
12 months   ki1017093-NIH-Birth     3 or less            NA                0.4105263   0.3115137   0.5095390
12 months   ki1017093-NIH-Birth     4-5                  NA                0.5565217   0.4922584   0.6207851
12 months   ki1017093-NIH-Birth     6-7                  NA                0.5658915   0.4802822   0.6515007
12 months   ki1017093-NIH-Birth     8+                   NA                0.4137931   0.3102056   0.5173806
12 months   ki1017093b-PROVIDE      3 or less            NA                0.3461538   0.1627097   0.5295980
12 months   ki1017093b-PROVIDE      4-5                  NA                0.3461538   0.2402423   0.4520654
12 months   ki1017093b-PROVIDE      6-7                  NA                0.4285714   0.2641052   0.5930376
12 months   ki1017093b-PROVIDE      8+                   NA                0.2500000   0.0596277   0.4403723
12 months   ki1017093c-NIH-Crypto   3 or less            NA                0.4056604   0.3121216   0.4991992
12 months   ki1017093c-NIH-Crypto   4-5                  NA                0.3757576   0.3234674   0.4280477
12 months   ki1017093c-NIH-Crypto   6-7                  NA                0.3409091   0.2708311   0.4109871
12 months   ki1017093c-NIH-Crypto   8+                   NA                0.4273504   0.3376510   0.5170499
12 months   ki1148112-LCNI-5        3 or less            NA                0.4561404   0.3645936   0.5476871
12 months   ki1148112-LCNI-5        4-5                  NA                0.4844720   0.4071772   0.5617668
12 months   ki1148112-LCNI-5        6-7                  NA                0.5113636   0.4067907   0.6159366
12 months   ki1148112-LCNI-5        8+                   NA                0.4827586   0.3006563   0.6648609
18 months   ki1000108-IRC           3 or less            NA                0.5000000   0.3711645   0.6288355
18 months   ki1000108-IRC           4-5                  NA                0.5822785   0.5052839   0.6592730
18 months   ki1000108-IRC           6-7                  NA                0.5607477   0.4665959   0.6548994
18 months   ki1000108-IRC           8+                   NA                0.5697674   0.4649989   0.6745360
18 months   ki1017093-NIH-Birth     3 or less            NA                0.5842697   0.4817746   0.6867647
18 months   ki1017093-NIH-Birth     4-5                  NA                0.7198068   0.6585665   0.7810470
18 months   ki1017093-NIH-Birth     6-7                  NA                0.6666667   0.5811627   0.7521706
18 months   ki1017093-NIH-Birth     8+                   NA                0.5238095   0.4168984   0.6307206
18 months   ki1017093b-PROVIDE      3 or less            NA                0.4400000   0.2447892   0.6352108
18 months   ki1017093b-PROVIDE      4-5                  NA                0.4871795   0.3758953   0.5984637
18 months   ki1017093b-PROVIDE      6-7                  NA                0.4375000   0.2650636   0.6099364
18 months   ki1017093b-PROVIDE      8+                   NA                0.3500000   0.1402851   0.5597149
18 months   ki1017093c-NIH-Crypto   3 or less            NA                0.4455446   0.3485449   0.5425442
18 months   ki1017093c-NIH-Crypto   4-5                  NA                0.4523077   0.3981580   0.5064573
18 months   ki1017093c-NIH-Crypto   6-7                  NA                0.4046243   0.3314345   0.4778141
18 months   ki1017093c-NIH-Crypto   8+                   NA                0.4741379   0.3832071   0.5650688
18 months   ki1148112-LCNI-5        3 or less            NA                0.4891304   0.3868269   0.5914340
18 months   ki1148112-LCNI-5        4-5                  NA                0.6058394   0.5238850   0.6877938
18 months   ki1148112-LCNI-5        6-7                  NA                0.6000000   0.4889567   0.7110433
18 months   ki1148112-LCNI-5        8+                   NA                0.5714286   0.3594460   0.7834112
24 months   ki1000108-IRC           3 or less            NA                0.5689655   0.4413618   0.6965692
24 months   ki1000108-IRC           4-5                  NA                0.6708861   0.5975281   0.7442441
24 months   ki1000108-IRC           6-7                  NA                0.6168224   0.5245936   0.7090512
24 months   ki1000108-IRC           8+                   NA                0.6666667   0.5674893   0.7658440
24 months   ki1017093-NIH-Birth     3 or less            NA                0.7108434   0.6132040   0.8084828
24 months   ki1017093-NIH-Birth     4-5                  NA                0.7929293   0.7364285   0.8494301
24 months   ki1017093-NIH-Birth     6-7                  NA                0.8073394   0.7332218   0.8814571
24 months   ki1017093-NIH-Birth     8+                   NA                0.6375000   0.5320468   0.7429532
24 months   ki1017093b-PROVIDE      3 or less            NA                0.5652174   0.3619348   0.7685000
24 months   ki1017093b-PROVIDE      4-5                  NA                0.5131579   0.4004036   0.6259122
24 months   ki1017093b-PROVIDE      6-7                  NA                0.4137931   0.2339315   0.5936547
24 months   ki1017093b-PROVIDE      8+                   NA                0.4000000   0.1845677   0.6154323
24 months   ki1017093c-NIH-Crypto   3 or less            NA                0.5056180   0.4016646   0.6095713
24 months   ki1017093c-NIH-Crypto   4-5                  NA                0.5239726   0.4666442   0.5813010
24 months   ki1017093c-NIH-Crypto   6-7                  NA                0.4600000   0.3801783   0.5398217
24 months   ki1017093c-NIH-Crypto   8+                   NA                0.4951456   0.3985134   0.5917778
24 months   ki1148112-LCNI-5        3 or less            NA                0.6442308   0.5520891   0.7363724
24 months   ki1148112-LCNI-5        4-5                  NA                0.6666667   0.5895621   0.7437712
24 months   ki1148112-LCNI-5        6-7                  NA                0.6923077   0.5897358   0.7948796
24 months   ki1148112-LCNI-5        8+                   NA                0.5200000   0.3238809   0.7161191


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           NA                   NA                0.3170732   0.3137282   0.3204181
3 months    ki1017093-NIH-Birth     NA                   NA                0.2225755   0.2212135   0.2239375
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.1596306   0.1583470   0.1609142
6 months    ki1000108-IRC           NA                   NA                0.4240196   0.4200514   0.4279878
6 months    ki1017093-NIH-Birth     NA                   NA                0.3647913   0.3614514   0.3681312
6 months    ki1017093b-PROVIDE      NA                   NA                0.2891566   0.2863560   0.2919573
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.3070652   0.3050612   0.3090692
12 months   ki1000108-IRC           NA                   NA                0.5073529   0.5042465   0.5104594
12 months   ki1017093-NIH-Birth     NA                   NA                0.5101664   0.5042678   0.5160650
12 months   ki1017093b-PROVIDE      NA                   NA                0.3522013   0.3442175   0.3601850
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.3799726   0.3778765   0.3820687
12 months   ki1148112-LCNI-5        NA                   NA                0.4821429   0.4801840   0.4841017
18 months   ki1000108-IRC           NA                   NA                0.5623472   0.5597491   0.5649453
18 months   ki1017093-NIH-Birth     NA                   NA                0.6498994   0.6433372   0.6564616
18 months   ki1017093b-PROVIDE      NA                   NA                0.4516129   0.4444939   0.4587319
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.4433566   0.4416305   0.4450828
18 months   ki1148112-LCNI-5        NA                   NA                0.5692308   0.5636786   0.5747829
24 months   ki1000108-IRC           NA                   NA                0.6414634   0.6378758   0.6450510
24 months   ki1017093-NIH-Birth     NA                   NA                0.7553191   0.7496415   0.7609968
24 months   ki1017093b-PROVIDE      NA                   NA                0.4864865   0.4770954   0.4958776
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.5015773   0.4995927   0.5035619
24 months   ki1148112-LCNI-5        NA                   NA                0.6552707   0.6509543   0.6595870


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000108-IRC           4-5                  3 or less         1.4421338   0.8709527   2.387902
3 months    ki1000108-IRC           6-7                  3 or less         1.3164219   0.7711948   2.247119
3 months    ki1000108-IRC           8+                   3 or less         1.2857143   0.7387565   2.237627
3 months    ki1017093-NIH-Birth     4-5                  3 or less         1.1818182   0.7796984   1.791326
3 months    ki1017093-NIH-Birth     6-7                  3 or less         0.9955986   0.6143921   1.613329
3 months    ki1017093-NIH-Birth     8+                   3 or less         1.0577830   0.6362438   1.758610
3 months    ki1017093c-NIH-Crypto   4-5                  3 or less         0.7391304   0.4738396   1.152951
3 months    ki1017093c-NIH-Crypto   6-7                  3 or less         0.7796776   0.4732461   1.284526
3 months    ki1017093c-NIH-Crypto   8+                   3 or less         0.7594670   0.4372103   1.319251
6 months    ki1000108-IRC           4-5                  3 or less         1.2514384   0.8659132   1.808609
6 months    ki1000108-IRC           6-7                  3 or less         1.0294372   0.6850318   1.546995
6 months    ki1000108-IRC           8+                   3 or less         1.0606061   0.6985267   1.610368
6 months    ki1017093-NIH-Birth     4-5                  3 or less         1.0710923   0.7877555   1.456338
6 months    ki1017093-NIH-Birth     6-7                  3 or less         1.0928962   0.7762415   1.538725
6 months    ki1017093-NIH-Birth     8+                   3 or less         0.7765830   0.5110720   1.180032
6 months    ki1017093b-PROVIDE      4-5                  3 or less         1.0670732   0.5445584   2.090951
6 months    ki1017093b-PROVIDE      6-7                  3 or less         0.9722222   0.4412139   2.142308
6 months    ki1017093b-PROVIDE      8+                   3 or less         0.8750000   0.3344778   2.289016
6 months    ki1017093c-NIH-Crypto   4-5                  3 or less         0.8570520   0.6308608   1.164343
6 months    ki1017093c-NIH-Crypto   6-7                  3 or less         0.7985481   0.5612949   1.136086
6 months    ki1017093c-NIH-Crypto   8+                   3 or less         1.0047847   0.7044979   1.433066
12 months   ki1000108-IRC           4-5                  3 or less         1.1556493   0.8461595   1.578337
12 months   ki1000108-IRC           6-7                  3 or less         1.1146052   0.8000838   1.552768
12 months   ki1000108-IRC           8+                   3 or less         0.9991387   0.6988991   1.428358
12 months   ki1017093-NIH-Birth     4-5                  3 or less         1.3556299   1.0375516   1.771220
12 months   ki1017093-NIH-Birth     6-7                  3 or less         1.3784536   1.0369237   1.832473
12 months   ki1017093-NIH-Birth     8+                   3 or less         1.0079576   0.7119895   1.426957
12 months   ki1017093b-PROVIDE      4-5                  3 or less         1.0000000   0.5423015   1.843993
12 months   ki1017093b-PROVIDE      6-7                  3 or less         1.2380952   0.6435663   2.381852
12 months   ki1017093b-PROVIDE      8+                   3 or less         0.7222222   0.2855985   1.826357
12 months   ki1017093c-NIH-Crypto   4-5                  3 or less         0.9262861   0.7075875   1.212579
12 months   ki1017093c-NIH-Crypto   6-7                  3 or less         0.8403805   0.6170473   1.144547
12 months   ki1017093c-NIH-Crypto   8+                   3 or less         1.0534685   0.7712658   1.438928
12 months   ki1148112-LCNI-5        4-5                  3 or less         1.0621118   0.8219071   1.372517
12 months   ki1148112-LCNI-5        6-7                  3 or less         1.1210664   0.8417690   1.493034
12 months   ki1148112-LCNI-5        8+                   3 or less         1.0583554   0.6903446   1.622547
18 months   ki1000108-IRC           4-5                  3 or less         1.1645570   0.8717277   1.555753
18 months   ki1000108-IRC           6-7                  3 or less         1.1214953   0.8245762   1.525331
18 months   ki1000108-IRC           8+                   3 or less         1.1395349   0.8303291   1.563886
18 months   ki1017093-NIH-Birth     4-5                  3 or less         1.2319770   1.0137470   1.497186
18 months   ki1017093-NIH-Birth     6-7                  3 or less         1.1410256   0.9181619   1.417985
18 months   ki1017093-NIH-Birth     8+                   3 or less         0.8965201   0.6849798   1.173390
18 months   ki1017093b-PROVIDE      4-5                  3 or less         1.1072261   0.6722302   1.823705
18 months   ki1017093b-PROVIDE      6-7                  3 or less         0.9943182   0.5492800   1.799936
18 months   ki1017093b-PROVIDE      8+                   3 or less         0.7954545   0.3774185   1.676515
18 months   ki1017093c-NIH-Crypto   4-5                  3 or less         1.0151795   0.7918443   1.301505
18 months   ki1017093c-NIH-Crypto   6-7                  3 or less         0.9081567   0.6842807   1.205278
18 months   ki1017093c-NIH-Crypto   8+                   3 or less         1.0641762   0.7961774   1.422385
18 months   ki1148112-LCNI-5        4-5                  3 or less         1.2386050   0.9655074   1.588949
18 months   ki1148112-LCNI-5        6-7                  3 or less         1.2266667   0.9277629   1.621870
18 months   ki1148112-LCNI-5        8+                   3 or less         1.1682540   0.7631063   1.788502
24 months   ki1000108-IRC           4-5                  3 or less         1.1791331   0.9187607   1.513294
24 months   ki1000108-IRC           6-7                  3 or less         1.0841121   0.8279642   1.419505
24 months   ki1000108-IRC           8+                   3 or less         1.1717172   0.8952453   1.533570
24 months   ki1017093-NIH-Birth     4-5                  3 or less         1.1154768   0.9555600   1.302156
24 months   ki1017093-NIH-Birth     6-7                  3 or less         1.1357487   0.9627897   1.339779
24 months   ki1017093-NIH-Birth     8+                   3 or less         0.8968220   0.7233163   1.111948
24 months   ki1017093b-PROVIDE      4-5                  3 or less         0.9078947   0.5956576   1.383803
24 months   ki1017093b-PROVIDE      6-7                  3 or less         0.7320955   0.4164405   1.287012
24 months   ki1017093b-PROVIDE      8+                   3 or less         0.7076923   0.3703257   1.352400
24 months   ki1017093c-NIH-Crypto   4-5                  3 or less         1.0363014   0.8209949   1.308072
24 months   ki1017093c-NIH-Crypto   6-7                  3 or less         0.9097778   0.6951746   1.190630
24 months   ki1017093c-NIH-Crypto   8+                   3 or less         0.9792880   0.7375638   1.300233
24 months   ki1148112-LCNI-5        4-5                  3 or less         1.0348259   0.8609628   1.243799
24 months   ki1148112-LCNI-5        6-7                  3 or less         1.0746269   0.8746272   1.320360
24 months   ki1148112-LCNI-5        8+                   3 or less         0.8071642   0.5392429   1.208201


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC           3 or less            NA                 0.0756939   -0.0346191   0.1860068
3 months    ki1017093-NIH-Birth     3 or less            NA                 0.0174473   -0.0557908   0.0906854
3 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.0421238   -0.1158510   0.0316035
6 months    ki1000108-IRC           3 or less            NA                 0.0447093   -0.0803800   0.1697986
6 months    ki1017093-NIH-Birth     3 or less            NA                 0.0047913   -0.0894317   0.0990143
6 months    ki1017093b-PROVIDE      3 or less            NA                 0.0034423   -0.1644162   0.1713009
6 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.0383893   -0.1273345   0.0505559
12 months   ki1000108-IRC           3 or less            NA                 0.0418357   -0.0867310   0.1704024
12 months   ki1017093-NIH-Birth     3 or less            NA                 0.0996400    0.0004518   0.1988283
12 months   ki1017093b-PROVIDE      3 or less            NA                 0.0060474   -0.1775704   0.1896652
12 months   ki1017093c-NIH-Crypto   3 or less            NA                -0.0256878   -0.1192501   0.0678745
12 months   ki1148112-LCNI-5        3 or less            NA                 0.0260025   -0.0655652   0.1175702
18 months   ki1000108-IRC           3 or less            NA                 0.0623472   -0.0665145   0.1912089
18 months   ki1017093-NIH-Birth     3 or less            NA                 0.0656297   -0.0370752   0.1683347
18 months   ki1017093b-PROVIDE      3 or less            NA                 0.0116129   -0.1837277   0.2069535
18 months   ki1017093c-NIH-Crypto   3 or less            NA                -0.0021879   -0.0992029   0.0948271
18 months   ki1148112-LCNI-5        3 or less            NA                 0.0801003   -0.0223538   0.1825544
24 months   ki1000108-IRC           3 or less            NA                 0.0724979   -0.0551563   0.2001520
24 months   ki1017093-NIH-Birth     3 or less            NA                 0.0444758   -0.0533286   0.1422801
24 months   ki1017093b-PROVIDE      3 or less            NA                -0.0787309   -0.2822303   0.1247685
24 months   ki1017093c-NIH-Crypto   3 or less            NA                -0.0040407   -0.1080130   0.0999316
24 months   ki1148112-LCNI-5        3 or less            NA                 0.0110399   -0.0812028   0.1032826


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC           3 or less            NA                 0.2387268   -0.2022075   0.5179394
3 months    ki1017093-NIH-Birth     3 or less            NA                 0.0783883   -0.3170510   0.3550985
3 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.2638828   -0.8214854   0.1230235
6 months    ki1000108-IRC           3 or less            NA                 0.1054415   -0.2439885   0.3567184
6 months    ki1017093-NIH-Birth     3 or less            NA                 0.0131343   -0.2821070   0.2403880
6 months    ki1017093b-PROVIDE      3 or less            NA                 0.0119048   -0.7780672   0.4509025
6 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.1250201   -0.4554153   0.1303717
12 months   ki1000108-IRC           3 or less            NA                 0.0824588   -0.2093824   0.3038745
12 months   ki1017093-NIH-Birth     3 or less            NA                 0.1953089   -0.0244592   0.3679321
12 months   ki1017093b-PROVIDE      3 or less            NA                 0.0171703   -0.6704864   0.4217527
12 months   ki1017093c-NIH-Crypto   3 or less            NA                -0.0676044   -0.3445606   0.1523037
12 months   ki1148112-LCNI-5        3 or less            NA                 0.0539311   -0.1563863   0.2259971
18 months   ki1000108-IRC           3 or less            NA                 0.1108696   -0.1505052   0.3128645
18 months   ki1017093-NIH-Birth     3 or less            NA                 0.1009845   -0.0717144   0.2458542
18 months   ki1017093b-PROVIDE      3 or less            NA                 0.0257143   -0.5187540   0.3749925
18 months   ki1017093c-NIH-Crypto   3 or less            NA                -0.0049349   -0.2494056   0.1917003
18 months   ki1148112-LCNI-5        3 or less            NA                 0.1407168   -0.0594231   0.3030475
24 months   ki1000108-IRC           3 or less            NA                 0.1130195   -0.1100562   0.2912662
24 months   ki1017093-NIH-Birth     3 or less            NA                 0.0588834   -0.0799064   0.1798360
24 months   ki1017093b-PROVIDE      3 or less            NA                -0.1618357   -0.6655790   0.1895537
24 months   ki1017093c-NIH-Crypto   3 or less            NA                -0.0080560   -0.2381996   0.1793109
24 months   ki1148112-LCNI-5        3 or less            NA                 0.0168478   -0.1344932   0.1480000


