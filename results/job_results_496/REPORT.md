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
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/dbe378d9-f576-4e15-bcd4-5ee7d3f4cdbd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dbe378d9-f576-4e15-bcd4-5ee7d3f4cdbd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/dbe378d9-f576-4e15-bcd4-5ee7d3f4cdbd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dbe378d9-f576-4e15-bcd4-5ee7d3f4cdbd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n    nA   nAY0   nAY1
----------  -------------------------  --------  -----  ----  -----  -----
Birth       ki0047075b-MAL-ED          <=24        607    11     10      1
Birth       ki0047075b-MAL-ED          (24-28]     607    54     47      7
Birth       ki0047075b-MAL-ED          (28-32]     607   111     94     17
Birth       ki0047075b-MAL-ED          >32         607   431    380     51
Birth       ki1000304b-SAS-FoodSuppl   <=24          0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (24-28]       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (28-32]       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   >32           0     0      0      0
Birth       ki1135781-COHORTS          <=24       3334   869    809     60
Birth       ki1135781-COHORTS          (24-28]    3334   829    790     39
Birth       ki1135781-COHORTS          (28-32]    3334   700    659     41
Birth       ki1135781-COHORTS          >32        3334   936    877     59
Birth       ki1148112-LCNI-5           <=24          0     0      0      0
Birth       ki1148112-LCNI-5           (24-28]       0     0      0      0
Birth       ki1148112-LCNI-5           (28-32]       0     0      0      0
Birth       ki1148112-LCNI-5           >32           0     0      0      0
3 months    ki0047075b-MAL-ED          <=24        744    14     11      3
3 months    ki0047075b-MAL-ED          (24-28]     744    63     49     14
3 months    ki0047075b-MAL-ED          (28-32]     744   143    120     23
3 months    ki0047075b-MAL-ED          >32         744   524    461     63
3 months    ki1000304b-SAS-FoodSuppl   <=24         97    17      9      8
3 months    ki1000304b-SAS-FoodSuppl   (24-28]      97    27     18      9
3 months    ki1000304b-SAS-FoodSuppl   (28-32]      97    24     12     12
3 months    ki1000304b-SAS-FoodSuppl   >32          97    29     20      9
3 months    ki1135781-COHORTS          <=24       3240   820    698    122
3 months    ki1135781-COHORTS          (24-28]    3240   795    700     95
3 months    ki1135781-COHORTS          (28-32]    3240   678    583     95
3 months    ki1135781-COHORTS          >32        3240   947    769    178
3 months    ki1148112-LCNI-5           <=24          0     0      0      0
3 months    ki1148112-LCNI-5           (24-28]       0     0      0      0
3 months    ki1148112-LCNI-5           (28-32]       0     0      0      0
3 months    ki1148112-LCNI-5           >32           0     0      0      0
6 months    ki0047075b-MAL-ED          <=24        741    14      8      6
6 months    ki0047075b-MAL-ED          (24-28]     741    62     50     12
6 months    ki0047075b-MAL-ED          (28-32]     741   143    117     26
6 months    ki0047075b-MAL-ED          >32         741   522    444     78
6 months    ki1000304b-SAS-FoodSuppl   <=24         96    18      8     10
6 months    ki1000304b-SAS-FoodSuppl   (24-28]      96    24     12     12
6 months    ki1000304b-SAS-FoodSuppl   (28-32]      96    26     11     15
6 months    ki1000304b-SAS-FoodSuppl   >32          96    28     17     11
6 months    ki1135781-COHORTS          <=24       3069   781    587    194
6 months    ki1135781-COHORTS          (24-28]    3069   742    591    151
6 months    ki1135781-COHORTS          (28-32]    3069   641    494    147
6 months    ki1135781-COHORTS          >32        3069   905    640    265
6 months    ki1148112-LCNI-5           <=24         47     7      3      4
6 months    ki1148112-LCNI-5           (24-28]      47    11      9      2
6 months    ki1148112-LCNI-5           (28-32]      47    10      6      4
6 months    ki1148112-LCNI-5           >32          47    19     13      6
9 months    ki0047075b-MAL-ED          <=24        738    14     10      4
9 months    ki0047075b-MAL-ED          (24-28]     738    62     40     22
9 months    ki0047075b-MAL-ED          (28-32]     738   142    111     31
9 months    ki0047075b-MAL-ED          >32         738   520    406    114
9 months    ki1000304b-SAS-FoodSuppl   <=24         85    18      7     11
9 months    ki1000304b-SAS-FoodSuppl   (24-28]      85    23      8     15
9 months    ki1000304b-SAS-FoodSuppl   (28-32]      85    19      4     15
9 months    ki1000304b-SAS-FoodSuppl   >32          85    25      9     16
9 months    ki1135781-COHORTS          <=24       3063   782    544    238
9 months    ki1135781-COHORTS          (24-28]    3063   751    541    210
9 months    ki1135781-COHORTS          (28-32]    3063   638    435    203
9 months    ki1135781-COHORTS          >32        3063   892    547    345
9 months    ki1148112-LCNI-5           <=24         37     6      4      2
9 months    ki1148112-LCNI-5           (24-28]      37     7      5      2
9 months    ki1148112-LCNI-5           (28-32]      37     8      5      3
9 months    ki1148112-LCNI-5           >32          37    16     13      3
12 months   ki0047075b-MAL-ED          <=24        739    14      6      8
12 months   ki0047075b-MAL-ED          (24-28]     739    62     40     22
12 months   ki0047075b-MAL-ED          (28-32]     739   141     95     46
12 months   ki0047075b-MAL-ED          >32         739   522    378    144
12 months   ki1000304b-SAS-FoodSuppl   <=24         92    17      4     13
12 months   ki1000304b-SAS-FoodSuppl   (24-28]      92    25      5     20
12 months   ki1000304b-SAS-FoodSuppl   (28-32]      92    22      4     18
12 months   ki1000304b-SAS-FoodSuppl   >32          92    28      6     22
12 months   ki1135781-COHORTS          <=24       3016   757    450    307
12 months   ki1135781-COHORTS          (24-28]    3016   740    452    288
12 months   ki1135781-COHORTS          (28-32]    3016   626    350    276
12 months   ki1135781-COHORTS          >32        3016   893    431    462
12 months   ki1148112-LCNI-5           <=24         38     6      4      2
12 months   ki1148112-LCNI-5           (24-28]      38     9      5      4
12 months   ki1148112-LCNI-5           (28-32]      38     8      6      2
12 months   ki1148112-LCNI-5           >32          38    15     10      5
18 months   ki0047075b-MAL-ED          <=24        738    14      8      6
18 months   ki0047075b-MAL-ED          (24-28]     738    61     31     30
18 months   ki0047075b-MAL-ED          (28-32]     738   141     77     64
18 months   ki0047075b-MAL-ED          >32         738   522    317    205
18 months   ki1000304b-SAS-FoodSuppl   <=24         84    16      2     14
18 months   ki1000304b-SAS-FoodSuppl   (24-28]      84    24      2     22
18 months   ki1000304b-SAS-FoodSuppl   (28-32]      84    22      3     19
18 months   ki1000304b-SAS-FoodSuppl   >32          84    22      3     19
18 months   ki1135781-COHORTS          <=24       2833   718    283    435
18 months   ki1135781-COHORTS          (24-28]    2833   704    288    416
18 months   ki1135781-COHORTS          (28-32]    2833   592    213    379
18 months   ki1135781-COHORTS          >32        2833   819    271    548
18 months   ki1148112-LCNI-5           <=24         43     6      3      3
18 months   ki1148112-LCNI-5           (24-28]      43    10      7      3
18 months   ki1148112-LCNI-5           (28-32]      43    10      6      4
18 months   ki1148112-LCNI-5           >32          43    17     10      7
24 months   ki0047075b-MAL-ED          <=24        738    14      7      7
24 months   ki0047075b-MAL-ED          (24-28]     738    61     39     22
24 months   ki0047075b-MAL-ED          (28-32]     738   142     86     56
24 months   ki0047075b-MAL-ED          >32         738   521    321    200
24 months   ki1000304b-SAS-FoodSuppl   <=24          0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (24-28]       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (28-32]       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >32           0     0      0      0
24 months   ki1135781-COHORTS          <=24       2866   730    242    488
24 months   ki1135781-COHORTS          (24-28]    2866   700    261    439
24 months   ki1135781-COHORTS          (28-32]    2866   586    208    378
24 months   ki1135781-COHORTS          >32        2866   850    270    580
24 months   ki1148112-LCNI-5           <=24         34     5      3      2
24 months   ki1148112-LCNI-5           (24-28]      34     8      6      2
24 months   ki1148112-LCNI-5           (28-32]      34     8      6      2
24 months   ki1148112-LCNI-5           >32          34    13      8      5

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          <=24                 NA                0.0690449   0.0521858   0.0859039
Birth       ki1135781-COHORTS          (24-28]              NA                0.0470446   0.0326292   0.0614601
Birth       ki1135781-COHORTS          (28-32]              NA                0.0585714   0.0411734   0.0759695
Birth       ki1135781-COHORTS          >32                  NA                0.0630342   0.0474629   0.0786055
3 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                0.4705882   0.2320867   0.7090898
3 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.3333333   0.1545981   0.5120686
3 months    ki1000304b-SAS-FoodSuppl   (28-32]              NA                0.5000000   0.2989228   0.7010772
3 months    ki1000304b-SAS-FoodSuppl   >32                  NA                0.3103448   0.1410914   0.4795983
3 months    ki1135781-COHORTS          <=24                 NA                0.1487805   0.1244191   0.1731419
3 months    ki1135781-COHORTS          (24-28]              NA                0.1194969   0.0969454   0.1420483
3 months    ki1135781-COHORTS          (28-32]              NA                0.1401180   0.1139864   0.1662496
3 months    ki1135781-COHORTS          >32                  NA                0.1879620   0.1630755   0.2128485
6 months    ki0047075b-MAL-ED          <=24                 NA                0.4285714   0.1691715   0.6879714
6 months    ki0047075b-MAL-ED          (24-28]              NA                0.1935484   0.0951406   0.2919562
6 months    ki0047075b-MAL-ED          (28-32]              NA                0.1818182   0.1185600   0.2450764
6 months    ki0047075b-MAL-ED          >32                  NA                0.1494253   0.1188216   0.1800290
6 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                0.5555556   0.3247968   0.7863143
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.5000000   0.2989119   0.7010881
6 months    ki1000304b-SAS-FoodSuppl   (28-32]              NA                0.5769231   0.3860240   0.7678222
6 months    ki1000304b-SAS-FoodSuppl   >32                  NA                0.3928571   0.2110103   0.5747039
6 months    ki1135781-COHORTS          <=24                 NA                0.2483995   0.2180911   0.2787078
6 months    ki1135781-COHORTS          (24-28]              NA                0.2035040   0.1745309   0.2324772
6 months    ki1135781-COHORTS          (28-32]              NA                0.2293292   0.1967790   0.2618794
6 months    ki1135781-COHORTS          >32                  NA                0.2928177   0.2631653   0.3224700
9 months    ki1135781-COHORTS          <=24                 NA                0.3043478   0.2720928   0.3366028
9 months    ki1135781-COHORTS          (24-28]              NA                0.2796272   0.2475226   0.3117318
9 months    ki1135781-COHORTS          (28-32]              NA                0.3181818   0.2820341   0.3543295
9 months    ki1135781-COHORTS          >32                  NA                0.3867713   0.3548063   0.4187363
12 months   ki0047075b-MAL-ED          <=24                 NA                0.5714286   0.3120281   0.8308290
12 months   ki0047075b-MAL-ED          (24-28]              NA                0.3548387   0.2356608   0.4740167
12 months   ki0047075b-MAL-ED          (28-32]              NA                0.3262411   0.2488031   0.4036791
12 months   ki0047075b-MAL-ED          >32                  NA                0.2758621   0.2374946   0.3142296
12 months   ki1135781-COHORTS          <=24                 NA                0.4055482   0.3705656   0.4405308
12 months   ki1135781-COHORTS          (24-28]              NA                0.3891892   0.3540543   0.4243240
12 months   ki1135781-COHORTS          (28-32]              NA                0.4408946   0.4019948   0.4797944
12 months   ki1135781-COHORTS          >32                  NA                0.5173572   0.4845777   0.5501367
18 months   ki0047075b-MAL-ED          <=24                 NA                0.4285714   0.1691708   0.6879721
18 months   ki0047075b-MAL-ED          (24-28]              NA                0.4918033   0.3662612   0.6173453
18 months   ki0047075b-MAL-ED          (28-32]              NA                0.4539007   0.3716671   0.5361343
18 months   ki0047075b-MAL-ED          >32                  NA                0.3927203   0.3507982   0.4346424
18 months   ki1135781-COHORTS          <=24                 NA                0.6058496   0.5700996   0.6415996
18 months   ki1135781-COHORTS          (24-28]              NA                0.5909091   0.5545838   0.6272343
18 months   ki1135781-COHORTS          (28-32]              NA                0.6402027   0.6015347   0.6788707
18 months   ki1135781-COHORTS          >32                  NA                0.6691087   0.6368777   0.7013397
24 months   ki0047075b-MAL-ED          <=24                 NA                0.5000000   0.2379112   0.7620888
24 months   ki0047075b-MAL-ED          (24-28]              NA                0.3606557   0.2400713   0.4812402
24 months   ki0047075b-MAL-ED          (28-32]              NA                0.3943662   0.3139297   0.4748027
24 months   ki0047075b-MAL-ED          >32                  NA                0.3838772   0.3420890   0.4256653
24 months   ki1135781-COHORTS          <=24                 NA                0.6684932   0.6343379   0.7026484
24 months   ki1135781-COHORTS          (24-28]              NA                0.6271429   0.5913143   0.6629714
24 months   ki1135781-COHORTS          (28-32]              NA                0.6450512   0.6063027   0.6837997
24 months   ki1135781-COHORTS          >32                  NA                0.6823529   0.6510496   0.7136563


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          NA                   NA                0.0596881   0.0594123   0.0599638
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.3917526   0.3751125   0.4083927
3 months    ki1135781-COHORTS          NA                   NA                0.1512346   0.1503439   0.1521252
6 months    ki0047075b-MAL-ED          NA                   NA                0.1646424   0.1617549   0.1675298
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.5000000   0.4850470   0.5149530
6 months    ki1135781-COHORTS          NA                   NA                0.2466601   0.2454643   0.2478560
9 months    ki1135781-COHORTS          NA                   NA                0.3251714   0.3236963   0.3266465
12 months   ki0047075b-MAL-ED          NA                   NA                0.2976996   0.2943266   0.3010726
12 months   ki1135781-COHORTS          NA                   NA                0.4419761   0.4401216   0.4438307
18 months   ki0047075b-MAL-ED          NA                   NA                0.4132791   0.4108540   0.4157042
18 months   ki1135781-COHORTS          NA                   NA                0.6276032   0.6264469   0.6287596
24 months   ki0047075b-MAL-ED          NA                   NA                0.3861789   0.3848950   0.3874627
24 months   ki1135781-COHORTS          NA                   NA                0.6577111   0.6569167   0.6585055


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          (24-28]              <=24              0.6813631   0.4604874   1.0081831
Birth       ki1135781-COHORTS          (28-32]              <=24              0.8483095   0.5775108   1.2460876
Birth       ki1135781-COHORTS          >32                  <=24              0.9129452   0.6450549   1.2920897
3 months    ki1000304b-SAS-FoodSuppl   (24-28]              <=24              0.7083333   0.3386931   1.4813885
3 months    ki1000304b-SAS-FoodSuppl   (28-32]              <=24              1.0625000   0.5563482   2.0291362
3 months    ki1000304b-SAS-FoodSuppl   >32                  <=24              0.6594828   0.3132329   1.3884795
3 months    ki1135781-COHORTS          (24-28]              <=24              0.8031756   0.6256060   1.0311458
3 months    ki1135781-COHORTS          (28-32]              <=24              0.9417767   0.7347942   1.2070637
3 months    ki1135781-COHORTS          >32                  <=24              1.2633510   1.0234655   1.5594623
6 months    ki0047075b-MAL-ED          (24-28]              <=24              0.4516129   0.2048638   0.9955603
6 months    ki0047075b-MAL-ED          (28-32]              <=24              0.4242424   0.2110653   0.8527297
6 months    ki0047075b-MAL-ED          >32                  <=24              0.3486590   0.1840330   0.6605506
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              <=24              0.9000000   0.5048342   1.6044870
6 months    ki1000304b-SAS-FoodSuppl   (28-32]              <=24              1.0384615   0.6105999   1.7661359
6 months    ki1000304b-SAS-FoodSuppl   >32                  <=24              0.7071429   0.3796725   1.3170589
6 months    ki1135781-COHORTS          (24-28]              <=24              0.8192611   0.6791898   0.9882198
6 months    ki1135781-COHORTS          (28-32]              <=24              0.9232272   0.7656329   1.1132600
6 months    ki1135781-COHORTS          >32                  <=24              1.1788176   1.0059665   1.3813689
9 months    ki1135781-COHORTS          (24-28]              <=24              0.9187750   0.7858707   1.0741556
9 months    ki1135781-COHORTS          (28-32]              <=24              1.0454545   0.8950159   1.2211797
9 months    ki1135781-COHORTS          >32                  <=24              1.2708200   1.1110067   1.4536216
12 months   ki0047075b-MAL-ED          (24-28]              <=24              0.6209677   0.3530422   1.0922235
12 months   ki0047075b-MAL-ED          (28-32]              <=24              0.5709220   0.3420613   0.9529051
12 months   ki0047075b-MAL-ED          >32                  <=24              0.4827586   0.3002867   0.7761112
12 months   ki1135781-COHORTS          (24-28]              <=24              0.9596619   0.8470149   1.0872903
12 months   ki1135781-COHORTS          (28-32]              <=24              1.0871570   0.9609582   1.2299289
12 months   ki1135781-COHORTS          >32                  <=24              1.2756984   1.1462145   1.4198097
18 months   ki0047075b-MAL-ED          (24-28]              <=24              1.1475410   0.5949522   2.2133716
18 months   ki0047075b-MAL-ED          (28-32]              <=24              1.0591017   0.5630539   1.9921651
18 months   ki0047075b-MAL-ED          >32                  <=24              0.9163474   0.4956084   1.6942662
18 months   ki1135781-COHORTS          (24-28]              <=24              0.9753396   0.8956723   1.0620931
18 months   ki1135781-COHORTS          (28-32]              <=24              1.0567024   0.9711381   1.1498055
18 months   ki1135781-COHORTS          >32                  <=24              1.1044138   1.0234117   1.1918272
24 months   ki0047075b-MAL-ED          (24-28]              <=24              0.7213115   0.3873540   1.3431906
24 months   ki0047075b-MAL-ED          (28-32]              <=24              0.7887324   0.4494232   1.3842159
24 months   ki0047075b-MAL-ED          >32                  <=24              0.7677543   0.4494874   1.3113752
24 months   ki1135781-COHORTS          (24-28]              <=24              0.9381440   0.8689274   1.0128743
24 months   ki1135781-COHORTS          (28-32]              <=24              0.9649331   0.8917614   1.0441089
24 months   ki1135781-COHORTS          >32                  <=24              1.0207329   0.9529952   1.0932852


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          <=24                 NA                -0.0093568   -0.0262181    0.0075045
3 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.0788357   -0.3179170    0.1602457
3 months    ki1135781-COHORTS          <=24                 NA                 0.0024541   -0.0219236    0.0268317
6 months    ki0047075b-MAL-ED          <=24                 NA                -0.2639291   -0.5233451   -0.0045130
6 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.0555556   -0.2867983    0.1756871
6 months    ki1135781-COHORTS          <=24                 NA                -0.0017393   -0.0320713    0.0285926
9 months    ki1135781-COHORTS          <=24                 NA                 0.0208236   -0.0114651    0.0531123
12 months   ki0047075b-MAL-ED          <=24                 NA                -0.2737290   -0.5331513   -0.0143066
12 months   ki1135781-COHORTS          <=24                 NA                 0.0364279    0.0013962    0.0714596
18 months   ki0047075b-MAL-ED          <=24                 NA                -0.0152923   -0.2747043    0.2441197
18 months   ki1135781-COHORTS          <=24                 NA                 0.0217537   -0.0140150    0.0575224
24 months   ki0047075b-MAL-ED          <=24                 NA                -0.1138211   -0.3759131    0.1482708
24 months   ki1135781-COHORTS          <=24                 NA                -0.0107821   -0.0449465    0.0233824


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          <=24                 NA                -0.1567619   -0.4767501    0.0938899
3 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.2012384   -0.9975984    0.2776458
3 months    ki1135781-COHORTS          <=24                 NA                 0.0162270   -0.1589173    0.1649022
6 months    ki0047075b-MAL-ED          <=24                 NA                -1.6030445   -3.7693132   -0.4207162
6 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.1111111   -0.6850605    0.2673450
6 months    ki1135781-COHORTS          <=24                 NA                -0.0070516   -0.1378467    0.1087087
9 months    ki1135781-COHORTS          <=24                 NA                 0.0640388   -0.0407030    0.1582388
12 months   ki0047075b-MAL-ED          <=24                 NA                -0.9194805   -2.0226886   -0.2189166
12 months   ki1135781-COHORTS          <=24                 NA                 0.0824205   -0.0003459    0.1583391
18 months   ki0047075b-MAL-ED          <=24                 NA                -0.0370023   -0.8995763    0.4338875
18 months   ki1135781-COHORTS          <=24                 NA                 0.0346615   -0.0240449    0.0900023
24 months   ki0047075b-MAL-ED          <=24                 NA                -0.2947368   -1.1869233    0.2334695
24 months   ki1135781-COHORTS          <=24                 NA                -0.0163933   -0.0696885    0.0342466


