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

**Outcome Variable:** ever_stunted

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
3 months    ki1000108-IRC              INDIA        3 or less    410    58     44     14
3 months    ki1000108-IRC              INDIA        4-5          410   158    103     55
3 months    ki1000108-IRC              INDIA        6-7          410   107     73     34
3 months    ki1000108-IRC              INDIA        8+           410    87     60     27
3 months    ki1017093-NIH-Birth        BANGLADESH   3 or less    629   117     93     24
3 months    ki1017093-NIH-Birth        BANGLADESH   4-5          629   264    200     64
3 months    ki1017093-NIH-Birth        BANGLADESH   6-7          629   142    113     29
3 months    ki1017093-NIH-Birth        BANGLADESH   8+           629   106     83     23
3 months    ki1017093b-PROVIDE         BANGLADESH   3 or less    700   140    118     22
3 months    ki1017093b-PROVIDE         BANGLADESH   4-5          700   322    256     66
3 months    ki1017093b-PROVIDE         BANGLADESH   6-7          700   151    123     28
3 months    ki1017093b-PROVIDE         BANGLADESH   8+           700    87     73     14
3 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less    758   114     91     23
3 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5          758   342    291     51
3 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7          758   178    150     28
3 months    ki1017093c-NIH-Crypto      BANGLADESH   8+           758   124    105     19
6 months    ki1000108-IRC              INDIA        3 or less    408    58     36     22
6 months    ki1000108-IRC              INDIA        4-5          408   158     83     75
6 months    ki1000108-IRC              INDIA        6-7          408   105     64     41
6 months    ki1000108-IRC              INDIA        8+           408    87     52     35
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less    105     9      5      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5          105    41     23     18
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7          105    36     22     14
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+           105    19     12      7
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less    551   100     64     36
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5          551   236    145     91
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7          551   122     74     48
6 months    ki1017093-NIH-Birth        BANGLADESH   8+           551    93     67     26
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less    640   119     90     29
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5          640   299    218     81
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7          640   137    103     34
6 months    ki1017093b-PROVIDE         BANGLADESH   8+           640    85     66     19
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less    736   110     72     38
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5          736   331    233     98
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7          736   174    126     48
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+           736   121     79     42
6 months    ki1148112-LCNI-5           MALAWI       3 or less    269    70     48     22
6 months    ki1148112-LCNI-5           MALAWI       4-5          269   111     66     45
6 months    ki1148112-LCNI-5           MALAWI       6-7          269    67     43     24
6 months    ki1148112-LCNI-5           MALAWI       8+           269    21     17      4
12 months   ki1000108-IRC              INDIA        3 or less    408    58     31     27
12 months   ki1000108-IRC              INDIA        4-5          408   158     73     85
12 months   ki1000108-IRC              INDIA        6-7          408   106     51     55
12 months   ki1000108-IRC              INDIA        8+           408    86     46     40
12 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less     99     8      3      5
12 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5           99    38      4     34
12 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7           99    35      8     27
12 months   ki1000304b-SAS-FoodSuppl   INDIA        8+            99    18      0     18
12 months   ki1017093-NIH-Birth        BANGLADESH   3 or less    541    95     56     39
12 months   ki1017093-NIH-Birth        BANGLADESH   4-5          541   230    102    128
12 months   ki1017093-NIH-Birth        BANGLADESH   6-7          541   129     56     73
12 months   ki1017093-NIH-Birth        BANGLADESH   8+           541    87     51     36
12 months   ki1017093b-PROVIDE         BANGLADESH   3 or less    609   111     78     33
12 months   ki1017093b-PROVIDE         BANGLADESH   4-5          609   287    186    101
12 months   ki1017093b-PROVIDE         BANGLADESH   6-7          609   128     84     44
12 months   ki1017093b-PROVIDE         BANGLADESH   8+           609    83     59     24
12 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less    729   106     63     43
12 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5          729   330    206    124
12 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7          729   176    116     60
12 months   ki1017093c-NIH-Crypto      BANGLADESH   8+           729   117     67     50
12 months   ki1148112-LCNI-5           MALAWI       3 or less    794   216    116    100
12 months   ki1148112-LCNI-5           MALAWI       4-5          794   331    177    154
12 months   ki1148112-LCNI-5           MALAWI       6-7          794   178     91     87
12 months   ki1148112-LCNI-5           MALAWI       8+           794    69     36     33
18 months   ki1000108-IRC              INDIA        3 or less    409    58     29     29
18 months   ki1000108-IRC              INDIA        4-5          409   158     66     92
18 months   ki1000108-IRC              INDIA        6-7          409   107     47     60
18 months   ki1000108-IRC              INDIA        8+           409    86     37     49
18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less     93     7      1      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5           93    36      3     33
18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7           93    34      6     28
18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+            93    16      0     16
18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less    497    89     37     52
18 months   ki1017093-NIH-Birth        BANGLADESH   4-5          497   207     58    149
18 months   ki1017093-NIH-Birth        BANGLADESH   6-7          497   117     39     78
18 months   ki1017093-NIH-Birth        BANGLADESH   8+           497    84     40     44
18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less    604   111     73     38
18 months   ki1017093b-PROVIDE         BANGLADESH   4-5          604   285    158    127
18 months   ki1017093b-PROVIDE         BANGLADESH   6-7          604   125     69     56
18 months   ki1017093b-PROVIDE         BANGLADESH   8+           604    83     52     31
18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less    715   101     56     45
18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5          715   325    178    147
18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7          715   173    103     70
18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+           715   116     61     55
18 months   ki1148112-LCNI-5           MALAWI       3 or less    672   182     88     94
18 months   ki1148112-LCNI-5           MALAWI       4-5          672   283    125    158
18 months   ki1148112-LCNI-5           MALAWI       6-7          672   154     64     90
18 months   ki1148112-LCNI-5           MALAWI       8+           672    53     23     30
24 months   ki1000108-IRC              INDIA        3 or less    410    58     25     33
24 months   ki1000108-IRC              INDIA        4-5          410   158     52    106
24 months   ki1000108-IRC              INDIA        6-7          410   107     41     66
24 months   ki1000108-IRC              INDIA        8+           410    87     29     58
24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less      9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5            9     2      0      2
24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7            9     5      1      4
24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+             9     1      0      1
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less    470    83     24     59
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5          470   198     41    157
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7          470   109     21     88
24 months   ki1017093-NIH-Birth        BANGLADESH   8+           470    80     29     51
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less    582   105     55     50
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5          582   275    142    133
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7          582   119     58     61
24 months   ki1017093b-PROVIDE         BANGLADESH   8+           582    83     47     36
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less    634    89     44     45
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5          634   292    139    153
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7          634   150     81     69
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+           634   103     52     51
24 months   ki1148112-LCNI-5           MALAWI       3 or less    720   196     67    129
24 months   ki1148112-LCNI-5           MALAWI       4-5          720   300    108    192
24 months   ki1148112-LCNI-5           MALAWI       6-7          720   160     51    109
24 months   ki1148112-LCNI-5           MALAWI       8+           720    64     25     39


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
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/08c3235a-b342-43e5-a4ca-e53e815f12fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 23 rows containing missing values (geom_errorbar).
```

![](/tmp/08c3235a-b342-43e5-a4ca-e53e815f12fb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/08c3235a-b342-43e5-a4ca-e53e815f12fb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/08c3235a-b342-43e5-a4ca-e53e815f12fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           INDIA        3 or less            NA                0.2413793   0.1311171   0.3516415
3 months    ki1000108-IRC           INDIA        4-5                  NA                0.3481013   0.2737321   0.4224704
3 months    ki1000108-IRC           INDIA        6-7                  NA                0.3177570   0.2294280   0.4060861
3 months    ki1000108-IRC           INDIA        8+                   NA                0.3103448   0.2130125   0.4076771
3 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.2051282   0.1319028   0.2783536
3 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.2424242   0.1906883   0.2941602
3 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.2042254   0.1378664   0.2705843
3 months    ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.2169811   0.1384507   0.2955115
3 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.1571429   0.0968149   0.2174708
3 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.2049689   0.1608458   0.2490921
3 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.1854305   0.1233972   0.2474637
3 months    ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.1609195   0.0836506   0.2381885
3 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.2017544   0.1280383   0.2754704
3 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.1491228   0.1113458   0.1868998
3 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.1573034   0.1037817   0.2108250
3 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.1532258   0.0897843   0.2166673
6 months    ki1000108-IRC           INDIA        3 or less            NA                0.3793103   0.2542840   0.5043367
6 months    ki1000108-IRC           INDIA        4-5                  NA                0.4746835   0.3967248   0.5526423
6 months    ki1000108-IRC           INDIA        6-7                  NA                0.3904762   0.2970478   0.4839046
6 months    ki1000108-IRC           INDIA        8+                   NA                0.4022989   0.2991326   0.5054651
6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.3600000   0.2658362   0.4541638
6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.3855932   0.3234378   0.4477487
6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.3934426   0.3066787   0.4802066
6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.2795699   0.1882759   0.3708639
6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.2436975   0.1665028   0.3208922
6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.2709030   0.2204890   0.3213171
6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.2481752   0.1757875   0.3205629
6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.2235294   0.1348938   0.3121650
6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.3454545   0.2565319   0.4343772
6 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.2960725   0.2468581   0.3452869
6 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.2758621   0.2094074   0.3423167
6 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.3471074   0.2622278   0.4319871
12 months   ki1000108-IRC           INDIA        3 or less            NA                0.4655172   0.3369881   0.5940464
12 months   ki1000108-IRC           INDIA        4-5                  NA                0.5379747   0.4601412   0.6158081
12 months   ki1000108-IRC           INDIA        6-7                  NA                0.5188679   0.4236347   0.6141012
12 months   ki1000108-IRC           INDIA        8+                   NA                0.4651163   0.3595702   0.5706624
12 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.4105263   0.3115137   0.5095390
12 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.5565217   0.4922584   0.6207851
12 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.5658915   0.4802822   0.6515007
12 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.4137931   0.3102056   0.5173806
12 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.2972973   0.2121982   0.3823964
12 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.3519164   0.2966197   0.4072131
12 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.3437500   0.2614014   0.4260986
12 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.2891566   0.1915410   0.3867723
12 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.4056604   0.3121216   0.4991992
12 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.3757576   0.3234674   0.4280477
12 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.3409091   0.2708311   0.4109871
12 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.4273504   0.3376510   0.5170499
12 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                0.4629630   0.3964249   0.5295010
12 months   ki1148112-LCNI-5        MALAWI       4-5                  NA                0.4652568   0.4114884   0.5190252
12 months   ki1148112-LCNI-5        MALAWI       6-7                  NA                0.4887640   0.4152836   0.5622445
12 months   ki1148112-LCNI-5        MALAWI       8+                   NA                0.4782609   0.3603222   0.5961996
18 months   ki1000108-IRC           INDIA        3 or less            NA                0.5000000   0.3711645   0.6288355
18 months   ki1000108-IRC           INDIA        4-5                  NA                0.5822785   0.5052839   0.6592730
18 months   ki1000108-IRC           INDIA        6-7                  NA                0.5607477   0.4665959   0.6548994
18 months   ki1000108-IRC           INDIA        8+                   NA                0.5697674   0.4649989   0.6745360
18 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.5842697   0.4817746   0.6867647
18 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.7198068   0.6585665   0.7810470
18 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.6666667   0.5811627   0.7521706
18 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.5238095   0.4168984   0.6307206
18 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.3423423   0.2539984   0.4306863
18 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.4456140   0.3878615   0.5033666
18 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.4480000   0.3607508   0.5352492
18 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.3734940   0.2693406   0.4776473
18 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.4455446   0.3485449   0.5425442
18 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.4523077   0.3981580   0.5064573
18 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.4046243   0.3314345   0.4778141
18 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.4741379   0.3832071   0.5650688
18 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                0.5164835   0.4438278   0.5891392
18 months   ki1148112-LCNI-5        MALAWI       4-5                  NA                0.5583039   0.5004043   0.6162035
18 months   ki1148112-LCNI-5        MALAWI       6-7                  NA                0.5844156   0.5065220   0.6623092
18 months   ki1148112-LCNI-5        MALAWI       8+                   NA                0.5660377   0.4325067   0.6995688
24 months   ki1000108-IRC           INDIA        3 or less            NA                0.5689655   0.4413618   0.6965692
24 months   ki1000108-IRC           INDIA        4-5                  NA                0.6708861   0.5975281   0.7442441
24 months   ki1000108-IRC           INDIA        6-7                  NA                0.6168224   0.5245936   0.7090512
24 months   ki1000108-IRC           INDIA        8+                   NA                0.6666667   0.5674893   0.7658440
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.7108434   0.6132040   0.8084828
24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.7929293   0.7364285   0.8494301
24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.8073394   0.7332218   0.8814571
24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.6375000   0.5320468   0.7429532
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.4761905   0.3805803   0.5718006
24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.4836364   0.4245221   0.5427507
24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.5126050   0.4227215   0.6024885
24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.4337349   0.3270251   0.5404448
24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.5056180   0.4016646   0.6095713
24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.5239726   0.4666442   0.5813010
24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.4600000   0.3801783   0.5398217
24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.4951456   0.3985134   0.5917778
24 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                0.6581633   0.5917128   0.7246137
24 months   ki1148112-LCNI-5        MALAWI       4-5                  NA                0.6400000   0.5856461   0.6943539
24 months   ki1148112-LCNI-5        MALAWI       6-7                  NA                0.6812500   0.6089949   0.7535051
24 months   ki1148112-LCNI-5        MALAWI       8+                   NA                0.6093750   0.4897609   0.7289891


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           INDIA        NA                   NA                0.3170732   0.3137282   0.3204181
3 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2225755   0.2212135   0.2239375
3 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1857143   0.1842128   0.1872158
3 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1596306   0.1583470   0.1609142
6 months    ki1000108-IRC           INDIA        NA                   NA                0.4240196   0.4200514   0.4279878
6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3647913   0.3614514   0.3681312
6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2546875   0.2533824   0.2559926
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3070652   0.3050612   0.3090692
12 months   ki1000108-IRC           INDIA        NA                   NA                0.5073529   0.5042465   0.5104594
12 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5101664   0.5042678   0.5160650
12 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.3316913   0.3296101   0.3337725
12 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3799726   0.3778765   0.3820687
12 months   ki1148112-LCNI-5        MALAWI       NA                   NA                0.4710327   0.4703140   0.4717515
18 months   ki1000108-IRC           INDIA        NA                   NA                0.5623472   0.5597491   0.5649453
18 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.6498994   0.6433372   0.6564616
18 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.4172185   0.4137674   0.4206697
18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.4433566   0.4416305   0.4450828
18 months   ki1148112-LCNI-5        MALAWI       NA                   NA                0.5535714   0.5516992   0.5554436
24 months   ki1000108-IRC           INDIA        NA                   NA                0.6414634   0.6378758   0.6450510
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7553191   0.7496415   0.7609968
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.4810997   0.4792272   0.4829721
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.5015773   0.4995927   0.5035619
24 months   ki1148112-LCNI-5        MALAWI       NA                   NA                0.6513889   0.6498881   0.6528897


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
3 months    ki1000108-IRC           INDIA        4-5                  3 or less         1.4421338   0.8709527   2.387902
3 months    ki1000108-IRC           INDIA        6-7                  3 or less         1.3164219   0.7711948   2.247119
3 months    ki1000108-IRC           INDIA        8+                   3 or less         1.2857143   0.7387565   2.237627
3 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
3 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.1818182   0.7796984   1.791326
3 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.9955986   0.6143921   1.613329
3 months    ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.0577830   0.6362438   1.758610
3 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
3 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.3043478   0.8399297   2.025554
3 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.1800120   0.7091498   1.963518
3 months    ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.0240334   0.5537591   1.893684
3 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.7391304   0.4738396   1.152951
3 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.7796776   0.4732461   1.284526
3 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.7594670   0.4372103   1.319251
6 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC           INDIA        4-5                  3 or less         1.2514384   0.8659132   1.808609
6 months    ki1000108-IRC           INDIA        6-7                  3 or less         1.0294372   0.6850318   1.546995
6 months    ki1000108-IRC           INDIA        8+                   3 or less         1.0606061   0.6985267   1.610368
6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.0710923   0.7877555   1.456338
6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.0928962   0.7762415   1.538725
6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.7765830   0.5110720   1.180032
6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.1116365   0.7698562   1.605151
6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.0183740   0.6620638   1.566444
6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         0.9172414   0.5521686   1.523686
6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.8570520   0.6308608   1.164343
6 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.7985481   0.5612949   1.136086
6 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         1.0047847   0.7044979   1.433066
12 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1000108-IRC           INDIA        4-5                  3 or less         1.1556493   0.8461595   1.578337
12 months   ki1000108-IRC           INDIA        6-7                  3 or less         1.1146052   0.8000838   1.552768
12 months   ki1000108-IRC           INDIA        8+                   3 or less         0.9991387   0.6988991   1.428358
12 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.3556299   1.0375516   1.771220
12 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.3784536   1.0369237   1.832473
12 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.0079576   0.7119895   1.426957
12 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.1837187   0.8539580   1.640818
12 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.1562500   0.7960618   1.679410
12 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         0.9726177   0.6247711   1.514131
12 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.9262861   0.7075875   1.212579
12 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.8403805   0.6170473   1.144547
12 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         1.0534685   0.7712658   1.438928
12 months   ki1148112-LCNI-5        MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
12 months   ki1148112-LCNI-5        MALAWI       4-5                  3 or less         1.0049547   0.8357043   1.208482
12 months   ki1148112-LCNI-5        MALAWI       6-7                  3 or less         1.0557303   0.8574840   1.299810
12 months   ki1148112-LCNI-5        MALAWI       8+                   3 or less         1.0330435   0.7765337   1.374285
18 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1000108-IRC           INDIA        4-5                  3 or less         1.1645570   0.8717277   1.555753
18 months   ki1000108-IRC           INDIA        6-7                  3 or less         1.1214953   0.8245762   1.525331
18 months   ki1000108-IRC           INDIA        8+                   3 or less         1.1395349   0.8303291   1.563886
18 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.2319770   1.0137470   1.497186
18 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.1410256   0.9181619   1.417985
18 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.8965201   0.6849798   1.173390
18 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.3016620   0.9751814   1.737445
18 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.3086316   0.9471320   1.808108
18 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.0909956   0.7461313   1.595257
18 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         1.0151795   0.7918443   1.301505
18 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.9081567   0.6842807   1.205278
18 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         1.0641762   0.7961774   1.422385
18 months   ki1148112-LCNI-5        MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
18 months   ki1148112-LCNI-5        MALAWI       4-5                  3 or less         1.0809714   0.9076389   1.287405
18 months   ki1148112-LCNI-5        MALAWI       6-7                  3 or less         1.1315280   0.9321894   1.373493
18 months   ki1148112-LCNI-5        MALAWI       8+                   3 or less         1.0959454   0.8327295   1.442361
24 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC           INDIA        4-5                  3 or less         1.1791331   0.9187607   1.513294
24 months   ki1000108-IRC           INDIA        6-7                  3 or less         1.0841121   0.8279642   1.419505
24 months   ki1000108-IRC           INDIA        8+                   3 or less         1.1717172   0.8952453   1.533570
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.1154768   0.9555600   1.302156
24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.1357487   0.9627897   1.339779
24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.8968220   0.7233163   1.111948
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.0156364   0.8028847   1.284764
24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.0764706   0.8245791   1.405310
24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         0.9108434   0.6630266   1.251286
24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         1.0363014   0.8209949   1.308072
24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.9097778   0.6951746   1.190630
24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.9792880   0.7375638   1.300233
24 months   ki1148112-LCNI-5        MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5        MALAWI       4-5                  3 or less         0.9724031   0.8522136   1.109543
24 months   ki1148112-LCNI-5        MALAWI       6-7                  3 or less         1.0350775   0.8940822   1.198308
24 months   ki1148112-LCNI-5        MALAWI       8+                   3 or less         0.9258721   0.7424849   1.154554


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC           INDIA        3 or less            NA                 0.0756939   -0.0346191   0.1860068
3 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0174473   -0.0557908   0.0906854
3 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0285714   -0.0317752   0.0889181
3 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0421238   -0.1158510   0.0316035
6 months    ki1000108-IRC           INDIA        3 or less            NA                 0.0447093   -0.0803800   0.1697986
6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0047913   -0.0894317   0.0990143
6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0109900   -0.0662157   0.0881957
6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0383893   -0.1273345   0.0505559
12 months   ki1000108-IRC           INDIA        3 or less            NA                 0.0418357   -0.0867310   0.1704024
12 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0996400    0.0004518   0.1988283
12 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0343940   -0.0507305   0.1195185
12 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0256878   -0.1192501   0.0678745
12 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                 0.0080698   -0.0584722   0.0746117
18 months   ki1000108-IRC           INDIA        3 or less            NA                 0.0623472   -0.0665145   0.1912089
18 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0656297   -0.0370752   0.1683347
18 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0748762   -0.0135351   0.1632875
18 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0021879   -0.0992029   0.0948271
18 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                 0.0370879   -0.0355919   0.1097677
24 months   ki1000108-IRC           INDIA        3 or less            NA                 0.0724979   -0.0551563   0.2001520
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0444758   -0.0533286   0.1422801
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0049092   -0.0907193   0.1005376
24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0040407   -0.1080130   0.0999316
24 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                -0.0067744   -0.0732418   0.0596930


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC           INDIA        3 or less            NA                 0.2387268   -0.2022075   0.5179394
3 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0783883   -0.3170510   0.3550985
3 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.1538462   -0.2422651   0.4236525
3 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.2638828   -0.8214854   0.1230235
6 months    ki1000108-IRC           INDIA        3 or less            NA                 0.1054415   -0.2439885   0.3567184
6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0131343   -0.2821070   0.2403880
6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0431510   -0.3135011   0.3029622
6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.1250201   -0.4554153   0.1303717
12 months   ki1000108-IRC           INDIA        3 or less            NA                 0.0824588   -0.2093824   0.3038745
12 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.1953089   -0.0244592   0.3679321
12 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.1036928   -0.1934389   0.3268473
12 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0676044   -0.3445606   0.1523037
12 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                 0.0171321   -0.1347924   0.1487172
18 months   ki1000108-IRC           INDIA        3 or less            NA                 0.1108696   -0.1505052   0.3128645
18 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.1009845   -0.0717144   0.2458542
18 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.1794652   -0.0622516   0.3661790
18 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0049349   -0.2494056   0.1917003
18 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                 0.0669975   -0.0739753   0.1894659
24 months   ki1000108-IRC           INDIA        3 or less            NA                 0.1130195   -0.1100562   0.2912662
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0588834   -0.0799064   0.1798360
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0102041   -0.2099300   0.1902871
24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0080560   -0.2381996   0.1793109
24 months   ki1148112-LCNI-5        MALAWI       3 or less            NA                -0.0103999   -0.1177704   0.0866568
